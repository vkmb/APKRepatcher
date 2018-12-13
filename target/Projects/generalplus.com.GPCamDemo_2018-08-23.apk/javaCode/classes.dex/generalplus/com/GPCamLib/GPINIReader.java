package generalplus.com.GPCamLib;

import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;

public class GPINIReader {
    private static final String INIReader_SaveLog = "SaveLog";
    private static final String INIReader_ShowLog = "ShowLog";
    private static String TAG = "GPINIReader";
    private static boolean _EnableSaveLog = false;
    private static boolean _EnableShowLog = false;
    private static GPINIReader m_Instance = null;
    private Properties configuration;
    private String configurationFile = "";

    public GPINIReader() {
        m_Instance = this;
        this.configuration = new Properties();
        this.configurationFile = Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.ConfigFileName;
        File f = new File(this.configurationFile);
        if (!(f.exists() || f.isDirectory())) {
            try {
                FileWriter fw = new FileWriter(this.configurationFile);
                fw.write(("" + String.format("%s = false\n", new Object[]{INIReader_SaveLog})) + String.format("%s = false\n", new Object[]{INIReader_ShowLog}));
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (load()) {
            String strProperty = get(INIReader_SaveLog);
            if (strProperty != null && strProperty.toUpperCase().equalsIgnoreCase("TRUE")) {
                _EnableSaveLog = true;
            }
            if (get(INIReader_ShowLog) != null && get(INIReader_ShowLog).toUpperCase().equalsIgnoreCase("TRUE")) {
                _EnableShowLog = true;
            }
        }
    }

    public static GPINIReader getInstance() {
        return m_Instance;
    }

    public boolean IsEnableShowLog() {
        return _EnableShowLog;
    }

    public boolean IsEnableSaveLog() {
        return _EnableSaveLog;
    }

    public boolean load() {
        try {
            this.configuration.load(new FileInputStream(this.configurationFile));
            return true;
        } catch (IOException e) {
            System.out.println("Configuration error: " + e.getMessage());
            return false;
        }
    }

    public String get(String key) {
        return this.configuration.getProperty(key);
    }
}
