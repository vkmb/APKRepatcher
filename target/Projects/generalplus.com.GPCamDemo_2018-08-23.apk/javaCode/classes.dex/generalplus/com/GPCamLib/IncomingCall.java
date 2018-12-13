package generalplus.com.GPCamLib;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;

public class IncomingCall extends BroadcastReceiver {
    private String TAG = "IncomingCall";
    private Context m_Context;

    private class MyPhoneStateListener extends PhoneStateListener {
        private MyPhoneStateListener() {
        }

        public void onCallStateChanged(int state, String incomingNumber) {
            Log.d(IncomingCall.this.TAG, state + " incoming no:" + incomingNumber);
        }
    }

    public void onReceive(Context context, Intent intent) {
        this.m_Context = context;
        try {
            ((TelephonyManager) context.getSystemService("phone")).listen(new MyPhoneStateListener(), 32);
        } catch (Exception e) {
            Log.e(this.TAG, " " + e);
        }
    }
}
