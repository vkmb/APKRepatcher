package generalplus.com.GPCamLib;

import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class GPXMLParse {
    public static int CaptureResolution_Setting_ID = 256;
    public static int CategoryLevel = 12;
    private static String GPTag = "GPXMLParseLog";
    public static int RecordResolution_Setting_ID = 0;
    public static int SettingLevel = 6;
    public static int ValueLevel = 0;
    public static int Version_Setting_ID = 521;
    public static int Version_Value_Index = 0;
    private static ArrayList<GPXMLCategory> m_aryListGPXMLCategroies = new ArrayList();
    private static ArrayList<GPXMLSetting> m_aryListGPXMLSettings;
    private static ArrayList<GPXMLValue> m_aryListGPXMLValues;
    private GPXMLCategory m_GPXMLCategory;
    private GPXMLSetting m_GPXMLSetting;
    private GPXMLValue m_GPXMLValue;

    public class GPXMLCategory {
        public ArrayList<GPXMLSetting> aryListGPXMLSettings;
        public int i32TreeLevel = this.i32TreeLevel;
        public String strXMLCategoryName;

        public GPXMLCategory(String CategoryName, int TreeLevel, ArrayList<GPXMLSetting> XMLSetting) {
            this.strXMLCategoryName = CategoryName;
            this.aryListGPXMLSettings = (ArrayList) XMLSetting.clone();
        }
    }

    public class GPXMLSetting {
        public ArrayList<GPXMLValue> aryListGPXMLValues;
        public int i32TreeLevel;
        public String strXMLSettingCurrent = null;
        public String strXMLSettingDefaultValue;
        public String strXMLSettingID;
        public String strXMLSettingName;
        public String strXMLSettingReflash;
        public String strXMLSettingType;

        public GPXMLSetting(String SettingName, String SettingID, String SettingType, String SettingReflash, String SettingDefaultValue, int TreeLevel, ArrayList<GPXMLValue> XMLValue) {
            this.strXMLSettingName = SettingName;
            this.strXMLSettingID = SettingID;
            this.strXMLSettingType = SettingType;
            this.strXMLSettingReflash = SettingReflash;
            this.strXMLSettingDefaultValue = SettingDefaultValue;
            if (XMLValue != null) {
                for (int i = 0; i < XMLValue.size(); i++) {
                    if (((GPXMLValue) XMLValue.get(i)).strXMLValueID.equalsIgnoreCase(SettingDefaultValue)) {
                        this.strXMLSettingCurrent = ((GPXMLValue) XMLValue.get(i)).strXMLValueName;
                        break;
                    }
                }
            }
            this.i32TreeLevel = TreeLevel;
            this.aryListGPXMLValues = (ArrayList) XMLValue.clone();
        }
    }

    public class GPXMLValue {
        public int i32TreeLevel;
        public String strXMLValueID;
        public String strXMLValueName;

        public GPXMLValue(String ValueName, String ValueID, int TreeLevel) {
            this.strXMLValueName = ValueName;
            this.strXMLValueID = ValueID;
            this.i32TreeLevel = TreeLevel;
        }
    }

    public GPXMLParse() {
        if (m_aryListGPXMLValues == null) {
            m_aryListGPXMLValues = new ArrayList();
        }
        if (m_aryListGPXMLSettings == null) {
            m_aryListGPXMLSettings = new ArrayList();
        }
        if (m_aryListGPXMLCategroies == null) {
            m_aryListGPXMLCategroies = new ArrayList();
        }
    }

    public ArrayList<GPXMLCategory> GetCategories() {
        m_aryListGPXMLValues.clear();
        m_aryListGPXMLSettings.clear();
        m_aryListGPXMLCategroies.clear();
        return m_aryListGPXMLCategroies;
    }

    public ArrayList<GPXMLCategory> GetGPXMLInfo(String FilePath) {
        try {
            NodeList nodeList_Categories = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new File(FilePath)).getElementsByTagName("Categories");
            String strCategoryName = "";
            String strSettingName = "";
            String strSettingID = "";
            String strSettingType = "";
            String strSettingReflash = "";
            String strSettingDefault = "";
            String strValueName = "";
            String strValueID = "";
            String strTemp = "";
            m_aryListGPXMLCategroies.clear();
            for (int i32CategoriesIndex = 0; i32CategoriesIndex < nodeList_Categories.getLength(); i32CategoriesIndex++) {
                Node node_Categories = nodeList_Categories.item(i32CategoriesIndex);
                if (node_Categories.getNodeType() == (short) 1) {
                    NodeList nodeList_Category = ((Element) node_Categories).getElementsByTagName("Category");
                    for (int i32CategoryIndex = 0; i32CategoryIndex < nodeList_Category.getLength(); i32CategoryIndex++) {
                        Node node_Category = nodeList_Category.item(i32CategoryIndex);
                        if (node_Category.getNodeType() == (short) 1) {
                            Element element_Category = (Element) node_Category;
                            m_aryListGPXMLSettings.clear();
                            NodeList nodeList_CategoryName = element_Category.getElementsByTagName("Name");
                            if (nodeList_CategoryName.getLength() > 0) {
                                strCategoryName = ((Element) nodeList_CategoryName.item(0)).getChildNodes().item(0).getNodeValue();
                            } else {
                                strCategoryName = "";
                            }
                            NodeList nodeList_Settings = element_Category.getElementsByTagName("Settings");
                            for (int i32SettingsIndex = 0; i32SettingsIndex < nodeList_Settings.getLength(); i32SettingsIndex++) {
                                Node node_Settings = nodeList_Settings.item(i32SettingsIndex);
                                if (node_Settings.getNodeType() == (short) 1) {
                                    NodeList nodeList_Setting = ((Element) node_Settings).getElementsByTagName("Setting");
                                    for (int i32SettingIndex = 0; i32SettingIndex < nodeList_Setting.getLength(); i32SettingIndex++) {
                                        Node node_Setting = nodeList_Setting.item(i32SettingIndex);
                                        if (node_Setting.getNodeType() == (short) 1) {
                                            Element element_Setting = (Element) node_Setting;
                                            m_aryListGPXMLValues.clear();
                                            NodeList nodeList_SettingName = element_Setting.getElementsByTagName("Name");
                                            if (nodeList_SettingName.getLength() > 0) {
                                                strSettingName = ((Element) nodeList_SettingName.item(0)).getChildNodes().item(0).getNodeValue();
                                            } else {
                                                strSettingName = "";
                                            }
                                            NodeList nodeList_SettingID = element_Setting.getElementsByTagName("ID");
                                            if (nodeList_SettingID.getLength() > 0) {
                                                strSettingID = ((Element) nodeList_SettingID.item(0)).getChildNodes().item(0).getNodeValue();
                                            } else {
                                                strSettingID = "";
                                            }
                                            NodeList nodeList_SettingType = element_Setting.getElementsByTagName("Type");
                                            if (nodeList_SettingType.getLength() > 0) {
                                                strSettingType = ((Element) nodeList_SettingType.item(0)).getChildNodes().item(0).getNodeValue();
                                            } else {
                                                strSettingType = "";
                                            }
                                            NodeList nodeList_SettingReflash = element_Setting.getElementsByTagName("Reflash");
                                            if (nodeList_SettingReflash.getLength() > 0) {
                                                strSettingReflash = ((Element) nodeList_SettingReflash.item(0)).getChildNodes().item(0).getNodeValue();
                                            } else {
                                                strSettingReflash = "";
                                            }
                                            NodeList nodeList_SettingDefault = element_Setting.getElementsByTagName("Default");
                                            if (nodeList_SettingDefault.getLength() > 0) {
                                                strSettingDefault = ((Element) nodeList_SettingDefault.item(0)).getChildNodes().item(0).getNodeValue();
                                            } else {
                                                strSettingDefault = "";
                                            }
                                            NodeList nodeList_Values = element_Setting.getElementsByTagName("Values");
                                            for (int i32ValuesIndex = 0; i32ValuesIndex < nodeList_Values.getLength(); i32ValuesIndex++) {
                                                Node node_Values = nodeList_Values.item(i32ValuesIndex);
                                                if (node_Values.getNodeType() == (short) 1) {
                                                    NodeList nodeList_Value = ((Element) node_Values).getElementsByTagName("Value");
                                                    for (int i32ValueIndex = 0; i32ValueIndex < nodeList_Value.getLength(); i32ValueIndex++) {
                                                        Node node_Value = nodeList_Value.item(i32ValueIndex);
                                                        if (node_Value.getNodeType() == (short) 1) {
                                                            Element element_Value = (Element) node_Value;
                                                            NodeList nodeList_ValueName = element_Value.getElementsByTagName("Name");
                                                            if (nodeList_ValueName.getLength() > 0) {
                                                                strValueName = ((Element) nodeList_ValueName.item(0)).getChildNodes().item(0).getNodeValue();
                                                            } else {
                                                                strValueName = "";
                                                            }
                                                            NodeList nodeList_ValueID = element_Value.getElementsByTagName("ID");
                                                            if (nodeList_ValueID.getLength() > 0) {
                                                                strValueID = ((Element) nodeList_ValueID.item(0)).getChildNodes().item(0).getNodeValue();
                                                            } else {
                                                                strValueID = "";
                                                            }
                                                            this.m_GPXMLValue = new GPXMLValue(strValueName, strValueID, (((1 << CategoryLevel) * i32CategoryIndex) + ((1 << SettingLevel) * i32SettingIndex)) + ((1 << ValueLevel) * i32ValueIndex));
                                                            m_aryListGPXMLValues.add(this.m_GPXMLValue);
                                                            this.m_GPXMLValue = null;
                                                        }
                                                    }
                                                }
                                            }
                                            this.m_GPXMLSetting = new GPXMLSetting(strSettingName, strSettingID, strSettingType, strSettingReflash, strSettingDefault, (i32SettingIndex << SettingLevel) | (i32CategoryIndex << CategoryLevel), m_aryListGPXMLValues);
                                            m_aryListGPXMLSettings.add(this.m_GPXMLSetting);
                                            this.m_GPXMLSetting = null;
                                        }
                                    }
                                }
                            }
                            this.m_GPXMLCategory = new GPXMLCategory(strCategoryName, i32CategoryIndex << CategoryLevel, m_aryListGPXMLSettings);
                            m_aryListGPXMLCategroies.add(this.m_GPXMLCategory);
                            this.m_GPXMLCategory = null;
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(GPTag, e.getMessage());
        }
        return m_aryListGPXMLCategroies;
    }
}
