package com.sina.weibo.sdk.statistic;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.netease.download.Const;
import com.sina.weibo.sdk.utils.LogUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LogBuilder {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$sina$weibo$sdk$statistic$LogType = null;
    private static final String APPKEY = "WEIBO_APPKEY";
    private static final String CHANNEL = "WEIBO_CHANNEL";
    public static final String KEY_AID = "aid";
    public static final String KEY_APPKEY = "appkey";
    public static final String KEY_CHANNEL = "channel";
    private static final String KEY_DURATION = "duration";
    public static final String KEY_END_TIME = "endtime";
    private static final String KEY_EVENT_ID = "event_id";
    private static final String KEY_EXTEND = "extend";
    public static final String KEY_HASH = "key_hash";
    public static final String KEY_PACKAGE_NAME = "packagename";
    private static final String KEY_PAGE_ID = "page_id";
    public static final String KEY_PLATFORM = "platform";
    public static final String KEY_START_TIME = "starttime";
    private static final String KEY_TIME = "time";
    public static final String KEY_TYPE = "type";
    public static final String KEY_VERSION = "version";
    private static final int MAX_COUNT = 500;
    public static final long MAX_INTERVAL = 86400000;

    static /* synthetic */ int[] $SWITCH_TABLE$com$sina$weibo$sdk$statistic$LogType() {
        int[] iArr = $SWITCH_TABLE$com$sina$weibo$sdk$statistic$LogType;
        if (iArr == null) {
            iArr = new int[LogType.valuesCustom().length];
            try {
                iArr[LogType.ACTIVITY.ordinal()] = 5;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[LogType.EVENT.ordinal()] = 4;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[LogType.FRAGMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[LogType.SESSION_END.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[LogType.SESSION_START.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            $SWITCH_TABLE$com$sina$weibo$sdk$statistic$LogType = iArr;
        }
        return iArr;
    }

    LogBuilder() {
    }

    public static String getAppKey(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo appInfo = pm.getApplicationInfo(context.getPackageName(), 128);
            if (appInfo != null) {
                Object appkey = appInfo.metaData.get(APPKEY);
                if (appkey != null) {
                    LogUtil.i(WBAgent.TAG, "APPKEY: " + String.valueOf(appkey));
                    return String.valueOf(appkey);
                }
                LogUtil.e(WBAgent.TAG, "Could not read WEIBO_APPKEY meta-data from AndroidManifest.xml.");
            }
        } catch (Exception ex) {
            LogUtil.e(WBAgent.TAG, "Could not read WEIBO_APPKEY meta-data from AndroidManifest.xml." + ex);
        }
        return null;
    }

    public static String getChannel(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo appInfo = pm.getApplicationInfo(context.getPackageName(), 128);
            if (appInfo != null) {
                String str = appInfo.metaData.getString(CHANNEL);
                if (str != null) {
                    LogUtil.i(WBAgent.TAG, "CHANNEL: " + str.trim());
                    return str.trim();
                }
                LogUtil.e(WBAgent.TAG, "Could not read WEIBO_CHANNEL meta-data from AndroidManifest.xml.");
            }
        } catch (Exception ex) {
            LogUtil.e(WBAgent.TAG, "Could not read WEIBO_CHANNEL meta-data from AndroidManifest.xml." + ex);
        }
        return null;
    }

    public static String getVersion(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo pkg = pm.getPackageInfo(context.getPackageName(), 0);
            LogUtil.i(WBAgent.TAG, "versionName: " + pkg.versionName);
            return pkg.versionName;
        } catch (PackageManager.NameNotFoundException ex) {
            LogUtil.e(WBAgent.TAG, "Could not read versionName from AndroidManifest.xml." + ex);
            return null;
        }
    }

    public static String getPageLogs(List<PageLog> pages) {
        StringBuilder logs = new StringBuilder();
        for (PageLog page : pages) {
            logs.append(getLogInfo(page).toString()).append(",");
        }
        return logs.toString();
    }

    private static JSONObject getLogInfo(PageLog page) {
        JSONObject json = new JSONObject();
        try {
            switch ($SWITCH_TABLE$com$sina$weibo$sdk$statistic$LogType()[page.getType().ordinal()]) {
                case 1:
                    json.put("type", 0);
                    json.put("time", page.getStartTime() / 1000);
                    break;
                case 2:
                    json.put("type", 1);
                    json.put("time", page.getEndTime() / 1000);
                    json.put(KEY_DURATION, page.getDuration() / 1000);
                    break;
                case 3:
                    json.put("type", 2);
                    json.put(KEY_PAGE_ID, page.getPage_id());
                    json.put("time", page.getStartTime() / 1000);
                    json.put(KEY_DURATION, page.getDuration() / 1000);
                    break;
                case 4:
                    json.put("type", 3);
                    json.put(KEY_PAGE_ID, page.getPage_id());
                    json.put("time", page.getStartTime() / 1000);
                    addEventData(json, (EventLog) page);
                    break;
                case 5:
                    json.put("type", 4);
                    json.put(KEY_PAGE_ID, page.getPage_id());
                    json.put("time", page.getStartTime() / 1000);
                    json.put(KEY_DURATION, page.getDuration() / 1000);
                    break;
            }
        } catch (Exception ex) {
            LogUtil.e(WBAgent.TAG, "get page log error." + ex);
        }
        return json;
    }

    private static JSONObject addEventData(JSONObject json, EventLog event) {
        try {
            json.put(KEY_EVENT_ID, event.getEvent_id());
            if (event.getExtend() != null) {
                Map<String, String> extend = event.getExtend();
                StringBuilder sb = new StringBuilder();
                int count = 0;
                for (String key : extend.keySet()) {
                    if (count >= 10) {
                        break;
                    }
                    if (!TextUtils.isEmpty(extend.get(key))) {
                        if (sb.length() > 0) {
                            sb.append("|");
                        }
                        sb.append(key).append(Const.RESP_CONTENT_SPIT2).append(extend.get(key));
                        count++;
                    }
                }
                json.put(KEY_EXTEND, sb.toString());
            }
        } catch (Exception ex) {
            LogUtil.e(WBAgent.TAG, "add event log error." + ex);
        }
        return json;
    }

    public static List<JSONArray> getValidUploadLogs(String memoryLogs) {
        JSONArray validlogs;
        String applogs = buildUploadLogs(memoryLogs);
        if (TextUtils.isEmpty(applogs)) {
            return null;
        }
        List<JSONArray> listValidlogs = new ArrayList<>();
        JSONArray validlogs2 = new JSONArray();
        int count = 0;
        long curTime = System.currentTimeMillis();
        try {
            JSONObject json = new JSONObject(applogs);
            JSONArray jsonLogs = json.getJSONArray("applogs");
            int i = 0;
            JSONArray validlogs3 = validlogs2;
            while (i < jsonLogs.length()) {
                try {
                    JSONObject log = jsonLogs.getJSONObject(i);
                    if (!isDataValid(curTime, log.getLong("time") * 1000)) {
                        validlogs = validlogs3;
                    } else if (count < 500) {
                        validlogs3.put(log);
                        count++;
                        validlogs = validlogs3;
                    } else {
                        listValidlogs.add(validlogs3);
                        validlogs = new JSONArray();
                        count = 0;
                    }
                    i++;
                    validlogs3 = validlogs;
                } catch (JSONException e) {
                    e = e;
                    e.printStackTrace();
                    return listValidlogs;
                }
            }
            if (validlogs3.length() > 0) {
                listValidlogs.add(validlogs3);
                return listValidlogs;
            }
            return listValidlogs;
        } catch (JSONException e2) {
            e = e2;
        }
    }

    private static String buildUploadLogs(String memoryLogs) {
        String localLogs = LogFileUtil.getAppLogs(LogFileUtil.getAppLogPath(LogFileUtil.ANALYTICS_FILE_NAME));
        if (TextUtils.isEmpty(localLogs) && TextUtils.isEmpty(memoryLogs)) {
            return null;
        }
        StringBuilder applogs = new StringBuilder();
        applogs.append("{applogs:[");
        if (!TextUtils.isEmpty(localLogs)) {
            applogs.append(localLogs);
        }
        if (!TextUtils.isEmpty(memoryLogs)) {
            applogs.append(memoryLogs);
        }
        if (applogs.charAt(applogs.length() - 1) == ',') {
            applogs.replace(applogs.length() - 1, applogs.length(), "");
        }
        applogs.append("]}");
        return applogs.toString();
    }

    private static boolean isDataValid(long curTime, long actTime) {
        return curTime - actTime < MAX_INTERVAL;
    }
}
