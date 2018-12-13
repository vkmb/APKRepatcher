package com.generalplus.ffmpegLib;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build.VERSION;
import android.test.AndroidTestCase;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Timer;
import java.util.TimerTask;

public class ffHWEncoder extends AndroidTestCase {
    public static final int HWENCODE_QUALITY_HIGH = 4;
    public static final int HWENCODE_QUALITY_LOW = 1;
    public static final int HWENCODE_QUALITY_MEDIUM = 2;
    private static final String MIME_TYPE = "video/avc";
    private static final String TAG = "ffHWEncoder";
    private static final boolean VERBOSE = false;
    private int mBitRate = 6000000;
    private int mColorFormat = -1;
    private MediaCodec mEncoder = null;
    private int mFPS = 15;
    private long mFirstFrameTime = 0;
    private MediaMuxer mMuxer = null;
    private boolean mMuxerStarted = false;
    private boolean mStop = false;
    private int mTrackIndex = -1;
    private Timer m_Encodetimer = null;
    private int motionfactor = 4;

    private class EncodeTask extends TimerTask {
        private EncodeTask() {
        }

        public void run() {
            if (ffHWEncoder.this.mStop) {
                ffHWEncoder.this.EncodeData(null);
                if (ffHWEncoder.this.m_Encodetimer != null) {
                    ffHWEncoder.this.m_Encodetimer.cancel();
                    ffHWEncoder.this.m_Encodetimer = null;
                }
                ffHWEncoder.this.Release();
                return;
            }
            ffmpegWrapper.getInstance();
            ffDecodeFrame decodeFrame = ffmpegWrapper.naGetDecodeFrame();
            int i32Y = decodeFrame.width * decodeFrame.height;
            int i32U = (decodeFrame.width * decodeFrame.height) / 4;
            int i32V = (decodeFrame.width * decodeFrame.height) / 4;
            byte[] YUV420Data = new byte[((i32Y + i32U) + i32V)];
            switch (ffHWEncoder.this.mColorFormat) {
                case 19:
                    System.arraycopy(decodeFrame.data[0], 0, YUV420Data, 0, i32Y);
                    System.arraycopy(decodeFrame.data[1], 0, YUV420Data, i32Y, i32U);
                    System.arraycopy(decodeFrame.data[2], 0, YUV420Data, i32Y + i32U, i32V);
                    break;
                case 20:
                case 39:
                case 2130706688:
                    break;
                case 21:
                    System.arraycopy(decodeFrame.data[0], 0, YUV420Data, 0, i32Y);
                    for (int i = 0; i < i32U; i++) {
                        YUV420Data[(i * 2) + i32Y] = decodeFrame.data[1][i];
                        YUV420Data[((i * 2) + i32Y) + 1] = decodeFrame.data[2][i];
                    }
                    break;
                default:
                    return;
            }
            ffHWEncoder.this.EncodeData(YUV420Data);
        }
    }

    public void SetFPS(int i32FPS) {
        this.mFPS = i32FPS;
        if (this.mFPS <= 0) {
            this.mFPS = 15;
        }
    }

    public void SetQuality(int i32Q) {
        this.motionfactor = i32Q;
        if (this.motionfactor > 4) {
            this.motionfactor = 4;
        }
    }

    public void Start(String outputPath) throws Exception {
        try {
            ffmpegWrapper.getInstance();
            int[] res = ffmpegWrapper.naGetVideoRes();
            int Width = res[0];
            int Height = res[1];
            MediaCodecInfo codecInfo = selectCodec(MIME_TYPE);
            if (codecInfo == null) {
                Log.e(TAG, "Unable to find an appropriate codec for video/avc");
                return;
            }
            this.mBitRate = (int) (((double) (((Width * Height) * this.mFPS) * this.motionfactor)) * 0.07d);
            Log.d(TAG, "found codec: " + codecInfo.getName());
            this.mColorFormat = selectColorFormat(codecInfo, MIME_TYPE);
            Log.d(TAG, "found colorFormat: " + this.mColorFormat);
            MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, Width, Height);
            format.setInteger("color-format", this.mColorFormat);
            format.setInteger("bitrate", this.mBitRate);
            format.setInteger("frame-rate", this.mFPS);
            format.setInteger("i-frame-interval", 1);
            if (VERSION.SDK_INT > 23) {
                format.setInteger("profile", 8);
            }
            this.mEncoder = MediaCodec.createByCodecName(codecInfo.getName());
            this.mEncoder.configure(format, null, null, 1);
            this.mEncoder.start();
            this.mMuxer = new MediaMuxer(outputPath, 0);
            ffmpegWrapper.getInstance();
            ffmpegWrapper.naSetCovertDecodeFrameFormat(0);
            this.mStop = false;
            this.mMuxerStarted = false;
            this.mTrackIndex = -1;
            this.mFirstFrameTime = System.nanoTime();
            this.m_Encodetimer = new Timer(true);
            this.m_Encodetimer.schedule(new EncodeTask(), 0, 40);
        } catch (IOException ioe) {
            throw new RuntimeException("MediaMuxer creation failed", ioe);
        } catch (Exception e) {
            Release();
        }
    }

    public void Stop() {
        this.mStop = true;
    }

    private void Release() {
        if (this.mEncoder != null) {
            this.mEncoder.stop();
            this.mEncoder.release();
            this.mEncoder = null;
        }
        if (this.mMuxer != null) {
            this.mMuxer.stop();
            this.mMuxer.release();
            this.mMuxer = null;
        }
    }

    private void EncodeData(byte[] frameData) {
        ByteBuffer[] encoderInputBuffers = this.mEncoder.getInputBuffers();
        ByteBuffer[] encoderOutputBuffers = this.mEncoder.getOutputBuffers();
        BufferInfo info = new BufferInfo();
        boolean inputDone = false;
        boolean encoderDone = false;
        while (!encoderDone) {
            if (!inputDone) {
                int inputBufIndex = this.mEncoder.dequeueInputBuffer(10000);
                if (inputBufIndex >= 0) {
                    long ptsUsec = computePresentationTimeMirco();
                    if (this.mStop) {
                        this.mEncoder.queueInputBuffer(inputBufIndex, 0, 0, ptsUsec, 4);
                        inputDone = true;
                    } else {
                        ByteBuffer inputBuf = encoderInputBuffers[inputBufIndex];
                        assertTrue(inputBuf.capacity() >= frameData.length);
                        inputBuf.clear();
                        inputBuf.put(frameData);
                        this.mEncoder.queueInputBuffer(inputBufIndex, 0, frameData.length, ptsUsec, 0);
                        inputDone = true;
                    }
                }
            }
            if (!encoderDone) {
                int encoderStatus = this.mEncoder.dequeueOutputBuffer(info, 10000);
                if (encoderStatus == -1) {
                    encoderDone = true;
                } else if (encoderStatus == -3) {
                    encoderOutputBuffers = this.mEncoder.getOutputBuffers();
                } else if (encoderStatus == -2) {
                    MediaFormat newFormat = this.mEncoder.getOutputFormat();
                    if (this.mMuxerStarted) {
                        throw new RuntimeException("format changed twice");
                    }
                    this.mTrackIndex = this.mMuxer.addTrack(newFormat);
                    this.mMuxer.start();
                    this.mMuxerStarted = true;
                } else if (encoderStatus < 0) {
                    fail("unexpected result from encoder.dequeueOutputBuffer: " + encoderStatus);
                } else {
                    ByteBuffer encodedData = encoderOutputBuffers[encoderStatus];
                    if (encodedData == null) {
                        fail("encoderOutputBuffer " + encoderStatus + " was null");
                    }
                    if ((info.flags & 2) != 0) {
                        info.size = 0;
                    } else {
                        encoderDone = (info.flags & 4) != 0;
                    }
                    if (info.size != 0) {
                        if (this.mMuxerStarted) {
                            encodedData.position(info.offset);
                            encodedData.limit(info.offset + info.size);
                            this.mMuxer.writeSampleData(this.mTrackIndex, encodedData, info);
                        } else {
                            throw new RuntimeException("muxer hasn't started");
                        }
                    }
                    this.mEncoder.releaseOutputBuffer(encoderStatus, false);
                }
            }
        }
    }

    private static MediaCodecInfo selectCodec(String mimeType) {
        int numCodecs = MediaCodecList.getCodecCount();
        for (int i = 0; i < numCodecs; i++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i);
            if (codecInfo.isEncoder()) {
                String[] types = codecInfo.getSupportedTypes();
                for (String equalsIgnoreCase : types) {
                    if (equalsIgnoreCase.equalsIgnoreCase(mimeType)) {
                        return codecInfo;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private static int selectColorFormat(MediaCodecInfo codecInfo, String mimeType) {
        CodecCapabilities capabilities = codecInfo.getCapabilitiesForType(mimeType);
        for (int colorFormat : capabilities.colorFormats) {
            if (isRecognizedFormat(colorFormat)) {
                return colorFormat;
            }
        }
        fail("couldn't find a good color format for " + codecInfo.getName() + " / " + mimeType);
        return 0;
    }

    private static boolean isRecognizedFormat(int colorFormat) {
        switch (colorFormat) {
            case 19:
            case 20:
            case 21:
            case 39:
            case 2130706688:
                return true;
            default:
                return false;
        }
    }

    private long computePresentationTimeMirco() {
        return (System.nanoTime() - this.mFirstFrameTime) / 1000;
    }
}
