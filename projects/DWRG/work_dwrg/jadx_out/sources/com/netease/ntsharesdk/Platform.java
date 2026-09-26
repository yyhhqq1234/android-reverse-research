package com.netease.ntsharesdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.alipay.sdk.cons.b;
import im.yixin.sdk.util.YixinConstants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public abstract class Platform extends Activity {
    public static final String OTHER = "Other";
    public static final String QQ = "QQ";
    public static final String Version = "1.3.1";
    public static final String WEIBO = "Weibo";
    public static final String WEIXIN = "Weixin";
    public static final String YIXIN = "Yixin";
    protected HashMap<String, String> mConf;
    protected Context myCtx;
    public static HashMap<String, ArrayList<String>> SUPPORT_PLATFORM = new HashMap<>();
    public static ArrayList<String> PLATFORM_NAME_LIST = new ArrayList<>();
    public static String mPackName = "";
    protected OnShareEndListener shareEndListener = null;
    private HashMap<String, ShareArgs> cacheShare = new HashMap<>();

    public abstract Boolean checkArgs(ShareArgs shareArgs);

    protected abstract Object genMessage(ShareArgs shareArgs);

    public abstract Object getAPIInst();

    protected abstract String getPlatformName();

    public abstract void handleIntent(Intent intent);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void initSdk();

    public abstract void share(ShareArgs shareArgs);

    public abstract void updateApi(String str);

    static {
        ArrayList<String> arr = new ArrayList<>();
        arr.add("com.sina.weibo");
        SUPPORT_PLATFORM.put(WEIBO, arr);
        ArrayList<String> arr2 = new ArrayList<>();
        arr2.add("com.tencent.mm");
        arr2.add("com.tencent.mm.ui.tools.ShareImgUI");
        arr2.add("com.tencent.mm.ui.tools.ShareToTimeLineUI");
        SUPPORT_PLATFORM.put(WEIXIN, arr2);
        ArrayList<String> arr3 = new ArrayList<>();
        arr3.add(YixinConstants.YIXIN_APP_PACKAGE_NAME);
        arr3.add("im.yixin.activity.share.ShareToSessionActivity");
        arr3.add("im.yixin.activity.share.ShareToSnsActivity");
        SUPPORT_PLATFORM.put(YIXIN, arr3);
        ArrayList<String> arr4 = new ArrayList<>();
        arr4.add("com.tencent.mobileqq");
        arr4.add("com.tencent.mobileqq.activity.JumpActivity");
        SUPPORT_PLATFORM.put("QQ", arr4);
        for (Map.Entry<String, ArrayList<String>> entry : SUPPORT_PLATFORM.entrySet()) {
            PLATFORM_NAME_LIST.add(entry.getKey());
        }
    }

    public static void dLog(String msg) {
        Log.d("ntsharesdk", "[1.3.1] " + msg);
    }

    public static boolean hasPlatform(String pf) {
        return SUPPORT_PLATFORM.containsKey(pf);
    }

    public static ArrayList<String> getAllSupportPlatform() {
        return PLATFORM_NAME_LIST;
    }

    public static String getPlatformAppName(String pf) {
        if (SUPPORT_PLATFORM.containsKey(pf)) {
            return SUPPORT_PLATFORM.get(pf).get(0);
        }
        return null;
    }

    public static ArrayList<String> getPlatformInfo(String pf) {
        if (SUPPORT_PLATFORM.containsKey(pf)) {
            return SUPPORT_PLATFORM.get(pf);
        }
        return null;
    }

    public void setShareEndListener(OnShareEndListener ls) {
        this.shareEndListener = ls;
    }

    public void share(ShareArgs args, Activity act) {
        share(args);
    }

    private static void doConfigVal(HashMap<String, String> hm, JSONObject json, String tag) {
        String val = null;
        if (json.has(tag)) {
            val = json.getString(tag);
            if (val != null && !hm.containsKey(tag)) {
                hm.put(tag, val);
            }
        }
    }

    private static HashMap<String, String> readConfig(Context myCtx, String pf) {
        dLog("platfrom:" + pf);
        String jsonStr = null;
        try {
            InputStream is = myCtx.getAssets().open("ntshare_data", 3);
            int index = is.available();
            byte[] data = new byte[index];
            is.read(data);
            String jsonStr2 = new String(data, "UTF-8");
            jsonStr = jsonStr2;
        } catch (IOException e) {
            dLog("read ntshare_data error :" + e.getMessage());
        }
        dLog("ntshare_data json:" + jsonStr);
        if (jsonStr == null) {
            return null;
        }
        mPackName = myCtx.getPackageName();
        JSONTokener jsonParser = new JSONTokener(jsonStr);
        try {
            JSONObject conf = (JSONObject) jsonParser.nextValue();
            if (conf.has(mPackName)) {
                conf = conf.getJSONObject(mPackName);
            }
            if (!conf.has(pf)) {
                dLog("conf.has(pf) false");
                return null;
            }
            JSONObject conf2 = (JSONObject) conf.get(pf);
            HashMap<String, String> hm = new HashMap<>();
            doConfigVal(hm, conf2, "app_id");
            doConfigVal(hm, conf2, "app_sec");
            doConfigVal(hm, conf2, b.h);
            doConfigVal(hm, conf2, "app_url");
            return hm;
        } catch (JSONException e2) {
            dLog("ntshare_data config parse to json error: " + e2.getMessage());
            return null;
        }
    }

    public String getConfig(String tag, String defaultVal) {
        return this.mConf.containsKey(tag) ? this.mConf.get(tag) : defaultVal;
    }

    public void setConfig(String tag, String value) {
        this.mConf.put(tag, value);
    }

    public String getConfig(String tag) {
        return getConfig(tag, null);
    }

    public void handleActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public void handleResponse(Object resp) {
    }

    public void handleRequest(Object resp) {
    }

    public Platform(Context ctx) {
        this.myCtx = null;
        this.mConf = null;
        this.myCtx = ctx;
        this.mConf = readConfig(this.myCtx, getPlatformName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pushShareTranscation(String transaction, ShareArgs args) {
        this.cacheShare.put(transaction, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareArgs popShareTransaction(String transaction) {
        if (!this.cacheShare.containsKey(transaction)) {
            return null;
        }
        ShareArgs shareArgs = this.cacheShare.get(transaction);
        this.cacheShare.remove(transaction);
        return shareArgs;
    }
}
