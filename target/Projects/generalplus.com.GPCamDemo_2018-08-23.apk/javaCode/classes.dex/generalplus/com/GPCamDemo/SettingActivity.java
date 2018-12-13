package generalplus.com.GPCamDemo;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.method.DigitsKeyListener;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import generalplus.com.GPCamLib.CamWrapper;
import generalplus.com.GPCamLib.GPXMLParse;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLCategory;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLSetting;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLValue;
import java.io.File;
import java.util.ArrayList;

public class SettingActivity extends PreferenceActivity {
    private static Thread ParseXMLThread = null;
    private static final String TAG = "SettingActivity";
    private static int i32IndexValue = 0;
    private static int i32SelectedCategoryIndex = 0;
    private static int i32SelectedSettingIndex = 0;
    private static ArrayList<GPXMLCategory> m_xmlGategory;
    public final int ClearBuff_Setting_ID = 518;
    public final int Reflash_All_Setting_ID = 520;
    public final int SettingType_ConfirmAction = 1;
    public final int SettingType_ConfirmActionForDevice = 4;
    public final int SettingType_DisplayOnly = 3;
    public final int SettingType_EditText = 2;
    public final int SettingType_RadioButton = 0;
    private ProgressDialog m_Dialog;
    private Handler m_FromWrapperHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    SettingActivity.this.ParseGPCamStatus(msg.getData());
                    return;
                default:
                    return;
            }
        }
    };
    GPXMLParse m_GPXMLParse;
    private boolean m_bGoFWUpgrade = false;
    private Handler m_handler;
    private String m_strFilePath = "";

    class ParseXMLRunnable implements Runnable {
        private String m_strXMLFilePath;

        ParseXMLRunnable(String XMLFilePath) {
            this.m_strXMLFilePath = XMLFilePath;
            SettingActivity.this.m_Dialog.show();
        }

        public void run() {
            if (SettingActivity.m_xmlGategory == null || SettingActivity.m_xmlGategory.size() == 0) {
                SettingActivity.m_xmlGategory = SettingActivity.this.m_GPXMLParse.GetGPXMLInfo(this.m_strXMLFilePath);
            }
            for (int i32CategoryIndex = 0; i32CategoryIndex < SettingActivity.m_xmlGategory.size(); i32CategoryIndex++) {
                for (int i32SettingIndex = 0; i32SettingIndex < ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.size(); i32SettingIndex++) {
                    CamWrapper.getComWrapperInstance().GPCamSendGetParameter((int) Long.parseLong(((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID.substring(2).toString(), 16));
                }
            }
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            SettingActivity.this.m_handler.post(new Runnable() {
                public void run() {
                    SettingActivity.this.clearApplicationData();
                    if (SettingActivity.m_xmlGategory != null && SettingActivity.m_xmlGategory.size() > 0) {
                        SettingActivity.this.UpdateSettingListView();
                    }
                }
            });
            SettingActivity.ParseXMLThread.interrupt();
            SettingActivity.ParseXMLThread = null;
            if (SettingActivity.this.m_Dialog != null && SettingActivity.this.m_Dialog.isShowing()) {
                SettingActivity.this.m_Dialog.dismiss();
                SettingActivity.this.m_Dialog = null;
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        Log.e(TAG, "onCreate ...");
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setRequestedOrientation(4);
        this.m_GPXMLParse = new GPXMLParse();
        this.m_handler = new Handler();
        CamWrapper.getComWrapperInstance().GPCamSendSetMode(3);
        this.m_strFilePath = String.format(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.ParameterFileName, new Object[0]);
        if (true == CamWrapper.bIsDefault) {
            setTitle(getString(R.string.app_name) + "*");
            this.m_strFilePath = String.format(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.DefaultParameterFileName, new Object[0]);
        }
        if (ParseXMLThread == null) {
            if (this.m_Dialog == null) {
                this.m_Dialog = new ProgressDialog(this);
                this.m_Dialog.setMessage(getResources().getString(R.string.Getting_menu));
                this.m_Dialog.setCanceledOnTouchOutside(false);
            }
            this.m_Dialog.show();
            ParseXMLThread = new Thread(new ParseXMLRunnable(this.m_strFilePath));
            ParseXMLThread.start();
        }
    }

    public static ArrayList<GPXMLCategory> getXMLCategory() {
        return m_xmlGategory;
    }

    public void setCategorySettingDefautValue(int CategoryIndex, int SettingIndex, String DefaultValue) {
        ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue = DefaultValue;
    }

    public void UpdateSettingListView() {
        PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(this);
        for (int i32CategoryIndex = 0; i32CategoryIndex < m_xmlGategory.size(); i32CategoryIndex++) {
            PreferenceCategory category = new PreferenceCategory(this);
            category.setTitle(((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).strXMLCategoryName);
            screen.addPreference(category);
            for (int i32SettingIndex = 0; i32SettingIndex < ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.size(); i32SettingIndex++) {
                switch ((int) Long.parseLong(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingType.substring(2).toString(), 16)) {
                    case 0:
                        category.addPreference(getListPreference(i32CategoryIndex, i32SettingIndex));
                        break;
                    case 1:
                        category.addPreference(getPreference(i32CategoryIndex, i32SettingIndex, true));
                        break;
                    case 2:
                        category.addPreference(getEditTextPreference(i32CategoryIndex, i32SettingIndex));
                        break;
                    case 3:
                        category.addPreference(getPreference(i32CategoryIndex, i32SettingIndex, false));
                        break;
                    case 4:
                        category.addPreference(getPreference(i32CategoryIndex, i32SettingIndex, true));
                        break;
                    default:
                        category.addPreference(getPreference(i32CategoryIndex, i32SettingIndex, false));
                        break;
                }
            }
        }
        super.setPreferenceScreen(screen);
    }

    private EditTextPreference getEditTextPreference(int CategoryIndex, int SettingIndex) {
        EditTextPreference editTextPreference = new EditTextPreference(this);
        editTextPreference.getEditText().setKeyListener(new DigitsKeyListener() {
            public int getInputType() {
                return 128;
            }

            protected char[] getAcceptedChars() {
                return "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
            }
        });
        editTextPreference.getEditText().setFilters(new InputFilter[]{new LengthFilter(8)});
        editTextPreference.setTitle(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingName.toString());
        editTextPreference.setSummary(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue.toString());
        editTextPreference.setText(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue.toString());
        editTextPreference.setKey(String.valueOf(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).i32TreeLevel));
        editTextPreference.setDefaultValue(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue.toString());
        editTextPreference.setOnPreferenceChangeListener(new OnPreferenceChangeListener() {
            public boolean onPreferenceChange(Preference preference, Object newValue) {
                preference.setSummary((CharSequence) newValue);
                preference.setDefaultValue((CharSequence) newValue);
                int i32KeyValue = Integer.valueOf(preference.getKey().toString()).intValue();
                GPXMLParse gPXMLParse = SettingActivity.this.m_GPXMLParse;
                int i32CategoryIndex = i32KeyValue / (1 << GPXMLParse.CategoryLevel);
                gPXMLParse = SettingActivity.this.m_GPXMLParse;
                int i = i32KeyValue - ((1 << GPXMLParse.CategoryLevel) * i32CategoryIndex);
                GPXMLParse gPXMLParse2 = SettingActivity.this.m_GPXMLParse;
                int i32SettingID = Integer.valueOf(((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i / (1 << GPXMLParse.SettingLevel))).strXMLSettingID.substring(2).toString(), 16).intValue();
                int i32Len = ((String) newValue).length();
                byte[] byStringData = new byte[i32Len];
                ((String) newValue).getBytes(0, i32Len, byStringData, 0);
                SettingActivity.this.SendSetParameter(i32SettingID, byStringData.length, byStringData);
                return true;
            }
        });
        return editTextPreference;
    }

    private Preference getPreference(int CategoryIndex, int SettingIndex, boolean bHasClickEvent) {
        Preference preference = new Preference(this);
        preference.setTitle(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingName.toString());
        String strCurrent = ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingCurrent;
        if (strCurrent != null) {
            preference.setSummary(strCurrent);
        } else if (((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.size() > 0) {
            preference.setSummary(((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.get(0)).strXMLValueName.toString());
        }
        preference.setKey(String.valueOf(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).i32TreeLevel).toString());
        if (bHasClickEvent) {
            preference.setOnPreferenceClickListener(new OnPreferenceClickListener() {
                public boolean onPreferenceClick(Preference preference) {
                    SettingActivity.this.ParseCategoriesData(Integer.valueOf(preference.getKey().toString()).intValue());
                    return true;
                }
            });
        }
        return preference;
    }

    private ListPreference getListPreference(int CategoryIndex, int SettingIndex) {
        ListPreference listPreference = new ListPreference(this);
        if (((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.size() > 0) {
            listPreference.setTitle(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingName.toString());
            listPreference.setDialogTitle(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingName.toString());
            CharSequence[] charSequenceValues = new CharSequence[((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.size()];
            for (int i32ValueIndex = 0; i32ValueIndex < ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.size(); i32ValueIndex++) {
                charSequenceValues[i32ValueIndex] = ((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.get(i32ValueIndex)).strXMLValueName.toString();
                if (((int) Long.parseLong(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue.substring(2).toString(), 16)) == i32ValueIndex) {
                    String strSettingName = ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingName;
                    String strSettingDefault = ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).strXMLSettingDefaultValue;
                    listPreference.setDefaultValue(((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.get(i32ValueIndex)).strXMLValueName.toString());
                    listPreference.setSummary(((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).aryListGPXMLValues.get(i32ValueIndex)).strXMLValueName.toString());
                }
            }
            listPreference.setEntries(charSequenceValues);
            listPreference.setEntryValues(charSequenceValues);
            listPreference.setKey(String.valueOf(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(CategoryIndex)).aryListGPXMLSettings.get(SettingIndex)).i32TreeLevel));
            listPreference.setOnPreferenceChangeListener(new OnPreferenceChangeListener() {
                public boolean onPreferenceChange(Preference preference, Object newValue) {
                    preference.setSummary((CharSequence) newValue);
                    preference.setDefaultValue((CharSequence) newValue);
                    int i32KeyValue = Integer.valueOf(preference.getKey().toString()).intValue();
                    GPXMLParse gPXMLParse = SettingActivity.this.m_GPXMLParse;
                    int i32CategoryIndex = i32KeyValue / (1 << GPXMLParse.CategoryLevel);
                    gPXMLParse = SettingActivity.this.m_GPXMLParse;
                    int i = i32KeyValue - ((1 << GPXMLParse.CategoryLevel) * i32CategoryIndex);
                    GPXMLParse gPXMLParse2 = SettingActivity.this.m_GPXMLParse;
                    int i32SettingIndex = i / (1 << GPXMLParse.SettingLevel);
                    int i32Value = 0;
                    if (((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.size() > 0) {
                        for (int i32ValueIndex = 0; i32ValueIndex < ((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.size(); i32ValueIndex++) {
                            if (((String) newValue) == ((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.get(i32ValueIndex)).strXMLValueName.toString()) {
                                i32Value = Integer.valueOf(((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.get(i32ValueIndex)).strXMLValueID.substring(2).toString(), 16).intValue();
                                break;
                            }
                        }
                    }
                    SettingActivity.this.SendSetParameter(Integer.valueOf(((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID.substring(2).toString(), 16).intValue(), 1, new byte[]{(byte) i32Value});
                    ((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingDefaultValue = String.format("0x%02X ", new Object[]{Integer.valueOf(i32Value)});
                    return true;
                }
            });
        } else {
            listPreference.setTitle(getResources().getString(R.string.Unknown));
        }
        return listPreference;
    }

    private void ParseCategoriesData(int KeyValue) {
        GPXMLParse gPXMLParse = this.m_GPXMLParse;
        int i32CategoryIndex = KeyValue / (1 << GPXMLParse.CategoryLevel);
        gPXMLParse = this.m_GPXMLParse;
        int i = KeyValue - ((1 << GPXMLParse.CategoryLevel) * i32CategoryIndex);
        GPXMLParse gPXMLParse2 = this.m_GPXMLParse;
        int i32SettingIndex = i / (1 << GPXMLParse.SettingLevel);
        int i32SelectSettingType = Integer.valueOf(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingType.substring(2).toString(), 16).intValue();
        if (i32SelectSettingType == 1 || i32SelectSettingType == 4) {
            i32SelectedCategoryIndex = i32CategoryIndex;
            i32SelectedSettingIndex = i32SettingIndex;
            Builder builder = new Builder(this);
            TextView tv = new TextView(this);
            tv.setText(getResources().getString(R.string.Are_you_sure_to_do) + "\n\"" + ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingName + "\"?");
            tv.setGravity(1);
            builder.setCancelable(false);
            builder.setView(tv);
            builder.setPositiveButton(getResources().getString(R.string.Confirm), new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    int i32SettingID = Integer.valueOf(((GPXMLSetting) ((GPXMLCategory) SettingActivity.m_xmlGategory.get(SettingActivity.i32SelectedCategoryIndex)).aryListGPXMLSettings.get(SettingActivity.i32SelectedSettingIndex)).strXMLSettingID.substring(2).toString(), 16).intValue();
                    SettingActivity.this.SendSetParameter(i32SettingID, 0, new byte[]{(byte) 0});
                    if (520 == i32SettingID) {
                        if (SettingActivity.ParseXMLThread == null) {
                            SettingActivity.ParseXMLThread = new Thread(new ParseXMLRunnable(SettingActivity.this.m_strFilePath));
                            SettingActivity.ParseXMLThread.start();
                        }
                    } else if (518 == i32SettingID) {
                        SettingActivity.this.clearApplicationData();
                    }
                }
            });
            builder.setNegativeButton(getResources().getString(R.string.Cancel), new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                }
            });
            builder.create().show();
        }
    }

    protected void onResume() {
        super.onResume();
        CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 1);
        this.m_bGoFWUpgrade = false;
    }

    public void onBackPressed() {
        super.onBackPressed();
    }

    protected void onDestroy() {
        if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
            this.m_Dialog.dismiss();
            this.m_Dialog = null;
        }
        m_xmlGategory.clear();
        m_xmlGategory = null;
        clearApplicationData();
        super.onDestroy();
    }

    protected void onUserLeaveHint() {
        if (!this.m_bGoFWUpgrade) {
            CamWrapper.getComWrapperInstance().GPCamSendSetMode(0);
            finish();
        }
        super.onUserLeaveHint();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    public void clearApplicationData() {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editor.clear();
        editor.commit();
        File appDir = new File(getCacheDir().getParent());
        if (appDir.exists()) {
            for (String s : appDir.list()) {
                if (!(s.equals("lib") || s.equals("shared_prefs"))) {
                    deleteDir(new File(appDir, s));
                }
            }
        }
    }

    public static boolean deleteDir(File dir) {
        if (dir != null && dir.isDirectory()) {
            String[] children = dir.list();
            for (String file : children) {
                if (!deleteDir(new File(dir, file))) {
                    return false;
                }
            }
        }
        return dir.delete();
    }

    private void ParseGPCamStatus(Bundle StatusBundle) {
        int i32CmdIndex = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDINDEX);
        int i32CmdType = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDTYPE);
        int i32Mode = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDMODE);
        int i32CmdID = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDID);
        int i32DataSize = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_DATASIZE);
        byte[] pbyData = StatusBundle.getByteArray(CamWrapper.GPCALLBACKSTATUSTYPE_DATA);
        if (i32CmdType == 2) {
            switch (i32Mode) {
                case 0:
                    switch (i32CmdID) {
                        case 0:
                        case 1:
                        case 2:
                            return;
                        default:
                            return;
                    }
                case 1:
                    Log.e(TAG, "GPSOCK_MODE_Record ... ");
                    return;
                case 2:
                    Log.e(TAG, "GPSOCK_MODE_CapturePicture ... ");
                    return;
                case 3:
                    Log.e(TAG, "GPSOCK_MODE_Playback ... ");
                    return;
                case 4:
                    Log.e(TAG, "GPSOCK_MODE_Menu ... ");
                    if (i32CmdID == 0) {
                        int i32ID = (((pbyData[0] & 255) + ((pbyData[1] & 255) << 8)) + ((pbyData[2] & 255) << 16)) + ((pbyData[3] & 255) << 24);
                        if (m_xmlGategory == null) {
                            Log.e(TAG, "CamWrapper.GPSOCK_Menu_CMD_GetParameter, null == m_xmlGategory");
                            return;
                        }
                        for (int i32CategoryIndex = 0; i32CategoryIndex < m_xmlGategory.size(); i32CategoryIndex++) {
                            int i32SettingIndex = 0;
                            while (i32SettingIndex < ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.size()) {
                                if (((int) Long.parseLong(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID.substring(2).toString(), 16)) == i32ID) {
                                    if (i32DataSize == 5) {
                                        ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingDefaultValue = String.format("0x%02X", new Object[]{Integer.valueOf(pbyData[4] & 255)});
                                    } else {
                                        int i32Len = (i32DataSize - ((int) (Math.log10((double) i32ID) + 1.0d))) - 1;
                                        char[] StringValus = new char[i32Len];
                                        for (int i = 0; i < i32Len; i++) {
                                            StringValus[i] = (char) (pbyData[i + 4] & 255);
                                        }
                                        ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingDefaultValue = String.valueOf(StringValus);
                                    }
                                } else {
                                    i32SettingIndex++;
                                }
                            }
                        }
                        return;
                    } else if (i32CmdID == 1 && this.m_Dialog != null && this.m_Dialog.isShowing()) {
                        this.m_Dialog.dismiss();
                        this.m_Dialog = null;
                        return;
                    } else {
                        return;
                    }
                case 255:
                    Log.e(TAG, "GPSOCK_MODE_Vendor ... ");
                    return;
                default:
                    return;
            }
        } else if (i32CmdType == 3) {
            switch ((pbyData[0] & 255) + ((pbyData[1] & 255) << 8)) {
                case CamWrapper.Error_LostConnection /*65472*/:
                    Log.e(TAG, "Error_LostConnection ...");
                    FinishToMainController();
                    break;
                case CamWrapper.Error_SocketClosed /*65473*/:
                    Log.e(TAG, "Error_SocketClosed ... ");
                    FinishToMainController();
                    break;
                case CamWrapper.Error_FullStorage /*65527*/:
                    Log.e(TAG, "Error_FullStorage ... ");
                    break;
                case CamWrapper.Error_GetThumbnailFail /*65528*/:
                    Log.e(TAG, "Error_GetThumbnailFail ... ");
                    break;
                case CamWrapper.Error_GetFileListFail /*65529*/:
                    Log.e(TAG, "Error_GetFileListFail ... ");
                    break;
                case CamWrapper.Error_WriteFail /*65530*/:
                    Log.e(TAG, "Error_WriteFail ... ");
                    break;
                case CamWrapper.Error_NoStorage /*65531*/:
                    Log.e(TAG, "Error_NoStorage ... ");
                    break;
                case CamWrapper.Error_ModeError /*65532*/:
                    Log.e(TAG, "Error_ModeError ... ");
                    break;
                case CamWrapper.Error_RequestTimeOut /*65533*/:
                    Log.e(TAG, "Error_RequestTimeOut ... ");
                    break;
                case CamWrapper.Error_InvalidCommand /*65534*/:
                    Log.e(TAG, "Error_InvalidCommand ... ");
                    break;
                case 65535:
                    Log.e(TAG, "Error_ServerIsBusy ... ");
                    break;
            }
            if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
                this.m_Dialog.dismiss();
                this.m_Dialog = null;
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        if (true == MainViewController.m_bRtsp) {
            getMenuInflater().inflate(R.menu.upgrade, menu);
            return super.onCreateOptionsMenu(menu);
        }
        if (CamWrapper.getComWrapperInstance().getIsNewFile()) {
            getMenuInflater().inflate(R.menu.upgrade, menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_fwupgrade /*2131165194*/:
                this.m_bGoFWUpgrade = true;
                Intent intent = new Intent();
                intent.setClass(this, FWUpgradeActivity.class);
                startActivity(intent);
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    private void FinishToMainController() {
        Log.e(TAG, "Finish ...");
        CamWrapper.getComWrapperInstance().GPCamDisconnect();
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(67108864);
        intent.addFlags(536870912);
        startActivity(intent);
    }

    private int SendSetParameter(int ID, int Size, byte[] Data) {
        Log.e(TAG, "GPCamSendSetParameter ... ");
        if (this.m_Dialog == null) {
            this.m_Dialog = new ProgressDialog(this);
            this.m_Dialog.setMessage(getResources().getString(R.string.Setting));
            this.m_Dialog.setCanceledOnTouchOutside(false);
        }
        this.m_Dialog.show();
        return CamWrapper.getComWrapperInstance().GPCamSendSetParameter(ID, Size, Data);
    }
}
