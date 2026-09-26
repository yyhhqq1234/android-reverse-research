package com.netease.ntunisdk.base;

import android.app.Application;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import com.netease.ntunisdk.base.utils.StrUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public abstract class SdkApplication {
    private static final String TAG = "UniSDK SdkApplication";
    protected Context myCtx;
    private Hashtable<String, String> propDict = new Hashtable<>();

    public abstract String getChannel();

    public SdkApplication(Context ctx) {
        UniSdkUtils.d(TAG, "SdkApplication construct");
        this.myCtx = ctx;
        String deviceId = Settings.Secure.getString(ctx.getContentResolver(), "android_id");
        setPropStr("DEVICE_ID", deviceId);
        setPropStr("UDID", deviceId);
        readCommonConfig(ctx);
        readConfig(ctx);
    }

    public void handleOnApplicationAttachBaseContext(Context ctx) {
    }

    public void handleOnApplicationOnCreate(Context ctx) {
    }

    public void handleOnApplicationAttachBaseContext(Context ctx, Application application) {
    }

    public void handleOnApplicationOnCreate(Context ctx, Application application) {
    }

    public void setPropStr(String prop, String val) {
        UniSdkUtils.d(TAG, "key:" + prop + "val:" + val);
        this.propDict.put(prop, val);
    }

    public String getPropStr(String prop) {
        if (this.propDict.containsKey(prop)) {
            return this.propDict.get(prop);
        }
        return null;
    }

    public int getPropInt(String prop, int defaultVal) {
        String val = getPropStr(prop);
        if (val != null) {
            try {
                return Integer.parseInt(val);
            } catch (Exception e) {
                return defaultVal;
            }
        }
        return defaultVal;
    }

    public String getAppChannel() {
        UniSdkUtils.i(TAG, "APP_CHANNEL:" + getPropStr("APP_CHANNEL"));
        return getPropStr("APP_CHANNEL");
    }

    private void doConfigVal(JSONObject json, String tag) {
        doConfigVal(json, tag, true);
    }

    private void doConfigVal(JSONObject json, String tag, boolean validate) {
        String val = null;
        if (json.has(tag)) {
            try {
                val = json.getString(tag);
            } catch (JSONException e) {
                UniSdkUtils.d(TAG, "no tag:" + tag);
            }
            if (val != null && getPropStr(tag) == null) {
                UniSdkUtils.d(TAG, "doConfigVal: " + tag + "--->" + val);
                if (validate) {
                    val = StrUtil.validate(val);
                }
                setPropStr(tag, val);
            }
        }
    }

    protected void doSepcialConfigVal(JSONObject json) {
    }

    private void readCommonConfig(Context myCtx) {
        InputStream is;
        String jsonStr = null;
        try {
            is = myCtx.getAssets().open("ntunisdk_common_data", 3);
        } catch (IOException e) {
            UniSdkUtils.i(TAG, "ntunisdk_common_data config not found");
        }
        if (is == null) {
            UniSdkUtils.d(TAG, "ntunisdk_common_data null");
            return;
        }
        int index = is.available();
        if (index != 0) {
            byte[] data = new byte[index];
            is.read(data);
            String jsonStr2 = new String(data, "UTF-8");
            jsonStr = jsonStr2;
            if (jsonStr == null) {
                UniSdkUtils.d(TAG, "ntunisdk_common_data is null");
                return;
            }
            UniSdkUtils.d(TAG, jsonStr);
            if (jsonStr.contains("：") || jsonStr.contains("“") || jsonStr.contains("”")) {
                UniSdkUtils.e(TAG, "ntunisdk_common_data包含中文特殊字符");
            }
            JSONTokener jsonParser = new JSONTokener(jsonStr);
            try {
                JSONObject conf = (JSONObject) jsonParser.nextValue();
                if (TextUtils.isEmpty(getAppChannel())) {
                    String appchannel = getAppChannelFromApk(myCtx);
                    if (TextUtils.isEmpty(appchannel)) {
                        doConfigVal(conf, "APP_CHANNEL", false);
                    }
                }
                doConfigVal(conf, "JF_GAMEID");
            } catch (JSONException e2) {
                UniSdkUtils.i(TAG, "ntunisdk_common_data config parse to json error");
            }
        }
    }

    protected void readConfig(Context myCtx) {
        InputStream is;
        int index;
        String _jsonStr = null;
        String fileName = getChannel() + "_data";
        try {
            is = myCtx.getAssets().open(fileName, 3);
            index = is.available();
        } catch (IOException e) {
            UniSdkUtils.i(TAG, fileName + " read exception");
        }
        if (index == 0) {
            UniSdkUtils.w(TAG, fileName + " is empty");
            return;
        }
        byte[] data = new byte[index];
        is.read(data);
        String _jsonStr2 = new String(data, "UTF-8");
        _jsonStr = _jsonStr2;
        if (TextUtils.isEmpty(_jsonStr)) {
            UniSdkUtils.d(TAG, fileName + " is empty");
            return;
        }
        String jsonStr = _jsonStr;
        try {
            if (StrUtil.isBase64(_jsonStr)) {
                jsonStr = new String(Base64.decode(_jsonStr, 0), "UTF-8");
            }
        } catch (Exception e2) {
            jsonStr = _jsonStr;
            e2.printStackTrace();
        }
        if (jsonStr == null) {
            UniSdkUtils.d(TAG, " null jsonStr");
            return;
        }
        if (jsonStr.contains("：") || jsonStr.contains("“") || jsonStr.contains("”")) {
            UniSdkUtils.e(TAG, fileName + "包含中文特殊字符");
        }
        JSONTokener jsonParser = new JSONTokener(jsonStr);
        try {
            JSONObject conf = (JSONObject) jsonParser.nextValue();
            doConfigVal(conf, "UNISDK_SERVER_KEY", false);
            StrUtil.setKey(getPropStr("UNISDK_SERVER_KEY"));
            doConfigVal(conf, "GAMEID", false);
            doConfigVal(conf, "APP_KEY");
            doConfigVal(conf, "APP_SECRET");
            doConfigVal(conf, "APPID");
            doConfigVal(conf, "APP_NAME", false);
            doConfigVal(conf, "APP_LOCATION");
            doConfigVal(conf, "APP_VERSION", false);
            doConfigVal(conf, "SCR_ORIENTATION", false);
            doConfigVal(conf, "CPID");
            doConfigVal(conf, "CP_KEY");
            doConfigVal(conf, "SERVER_ID");
            doConfigVal(conf, "PAY_CB_URL", false);
            doConfigVal(conf, "RSA_PRIVATE");
            doConfigVal(conf, "RSA_PUBLIC");
            doConfigVal(conf, "SDK_UPDATE_CHECK_STRICT");
            doConfigVal(conf, "BUOY_PRIVATEKEY");
            doConfigVal(conf, "USER_ID");
            doConfigVal(conf, "PACKET_ID");
            doConfigVal(conf, "EXCHANGE_RATE");
            doConfigVal(conf, "EXCHANGE_UNIT");
            doConfigVal(conf, "CHANNEL_ID");
            doConfigVal(conf, "SPLASH");
            doConfigVal(conf, "SPLASH_TIME");
            doConfigVal(conf, "SPLASH_COLOR");
            doConfigVal(conf, "SPLASH_SECOND");
            doConfigVal(conf, "DEBUG_MODE");
            if (TextUtils.isEmpty(getAppChannel())) {
                String appchannel = getAppChannelFromApk(myCtx);
                if (TextUtils.isEmpty(appchannel)) {
                    doConfigVal(conf, "APP_CHANNEL", false);
                }
            }
            doConfigVal(conf, "LAUNCHER_NAME");
            doConfigVal(conf, "APPSFLYER_DEV_KEY");
            doConfigVal(conf, "ADVERTISER_APPID");
            doConfigVal(conf, "TIMELINE_KEY");
            doConfigVal(conf, "PLATFORM_KEY");
            doConfigVal(conf, "GAME_REGION");
            doConfigVal(conf, "CN");
            doConfigVal(conf, "AS");
            doConfigVal(conf, "US");
            doConfigVal(conf, "SA");
            doConfigVal(conf, "GAME_ENGINE");
            doConfigVal(conf, "CC_SHOW_FPS_SETTING");
            doConfigVal(conf, "CC_DEFAULT_FPS");
            doConfigVal(conf, "PAYTYPE");
            doConfigVal(conf, "PAYCODE");
            doConfigVal(conf, "MONTHTYPE");
            doConfigVal(conf, "LIANYUN");
            doConfigVal(conf, "SINGLE_CB", false);
            doConfigVal(conf, "DK_APPID");
            doConfigVal(conf, "DK_APP_KEY");
            doConfigVal(conf, "SHARE_QQ_API");
            doConfigVal(conf, "SHARE_WEIBO_API");
            doConfigVal(conf, "SHARE_WEIXIN_API");
            doConfigVal(conf, "SHARE_YIXIN_API");
            doConfigVal(conf, "ENABLE_EXLOGIN_GUEST");
            doConfigVal(conf, "ENABLE_EXLOGIN_WEIBO");
            doConfigVal(conf, "ENABLE_EXLOGIN_MOBILE");
            doConfigVal(conf, "ENABLE_EXLOGIN_GOOGLEPLUS");
            doConfigVal(conf, "DATA_REPORT_MODE");
            doConfigVal(conf, "GAME_NAME", false);
            doConfigVal(conf, "RETRIEVE_USER");
            doConfigVal(conf, "DOMAIN");
            doConfigVal(conf, "QQ_APPID");
            doConfigVal(conf, "QQ_APP_KEY");
            doConfigVal(conf, "WX_APPID");
            doConfigVal(conf, "WX_APP_KEY");
            doConfigVal(conf, "WEIBO_SSO_APP_KEY");
            doConfigVal(conf, "WEIBO_SSO_URL", false);
            doConfigVal(conf, "OFFER_ID");
            doConfigVal(conf, "VERIFY_MODE");
            doConfigVal(conf, "REQUEST_UNISDK_SERVER");
            doConfigVal(conf, "UNISDK_CREATEORDER_URL");
            doConfigVal(conf, "UNISDK_QUERYORDER_URL");
            doConfigVal(conf, "UNISDK_CONSUMEORDER_URL");
            doConfigVal(conf, "LANGUAGE_CODE");
            doConfigVal(conf, "COUNTRY_CODE");
            doConfigVal(conf, "PURCHASE_REG_SERVER");
            doConfigVal(conf, "SPLASH_TYPE");
            doConfigVal(conf, "REQUEST_CMCC_PAYTYPE");
            doConfigVal(conf, "DEFAULT_CMCC_PAYTYPE");
            doConfigVal(conf, "GAME_VERSION");
            doConfigVal(conf, "DERIVE_CHANNEL");
            doConfigVal(conf, "CMCC_PAYTYPE_URL");
            doConfigVal(conf, "JF_LOG_KEY");
            doConfigVal(conf, "JF_OPEN_LOG_URL");
            doConfigVal(conf, "JF_PAY_LOG_URL");
            doConfigVal(conf, "JF_GAMEID");
            doConfigVal(conf, "HAS_PAY_CB");
            doConfigVal(conf, "NEED_PLAY_GAME_SERVICE");
            doConfigVal(conf, "UNISDK_SERVER_URL", false);
            doConfigVal(conf, "ENABLE_UNISDK_GUEST_DISCONNECT");
            doConfigVal(conf, "ENABLE_UNISDK_GUEST_UI");
            doConfigVal(conf, "FLOATBTN_CLOSED");
            doConfigVal(conf, "FLOAT_BTN_POS");
            doConfigVal(conf, "UPDATE_CHECK_URL", false);
            doConfigVal(conf, "UPDATE_DOWNLOAD_URL", false);
            doConfigVal(conf, "UNISDK_SERVER_MODE");
            doConfigVal(conf, "UNISDK_SERVER_EXTPARAM");
            doConfigVal(conf, "UNISDK_EXT_INFO");
            doConfigVal(conf, "CODE_SCANNER_PAY_URL");
            doConfigVal(conf, "ENABLE_TV");
            doConfigVal(conf, "EXTERNAL_OP_LIST");
            doConfigVal(conf, "UNISDK_JF_GAS3");
            doConfigVal(conf, "UNISDK_JF_GAS3_WEB");
            doConfigVal(conf, "UNISDK_JF_GAS3_URL");
            doConfigVal(conf, "SKIN_TYPE");
            doConfigVal(conf, "FLOW_CODE");
            doConfigVal(conf, "FLOW_KEY");
            doSepcialConfigVal(conf);
        } catch (JSONException e3) {
            UniSdkUtils.i(TAG, getChannel() + "_data config parse to json error");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
    
        r12 = r8.getSize();
        com.netease.ntunisdk.base.UniSdkUtils.d(com.netease.ntunisdk.base.SdkApplication.TAG, r9 + " size:" + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006b, code lost:
    
        if (r12 <= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006d, code lost:
    
        r5 = new java.io.BufferedReader(new java.io.InputStreamReader(r15.getInputStream(r8), "UTF-8"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
    
        r2 = r5.readLine().trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0087, code lost:
    
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0109, code lost:
    
        r6 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x010a, code lost:
    
        r4 = r5;
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ad, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b0, code lost:
    
        if (r4 != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
    
        if (r14 != null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b7, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bb, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c0, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c1, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0102, code lost:
    
        r16 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0103, code lost:
    
        r4 = r5;
        r14 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c6, code lost:
    
        if (r4 != null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cb, code lost:
    
        if (r14 != null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d0, code lost:
    
        throw r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cd, code lost:
    
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d6, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d7, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c8, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d1, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d2, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getAppChannelFromApk(android.content.Context r20) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.ntunisdk.base.SdkApplication.getAppChannelFromApk(android.content.Context):java.lang.String");
    }
}
