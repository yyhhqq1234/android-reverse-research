package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.tencent.connect.common.Constants;
import im.yixin.sdk.util.SDKNetworkUtil;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.Cipher;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AidTask {
    private static final String AID_FILE_NAME = "weibo_sdk_aid";
    private static final int MAX_RETRY_NUM = 3;
    private static final String TAG = "AidTask";
    private static final int VERSION = 1;
    public static final int WHAT_LOAD_AID_ERR = 1002;
    public static final int WHAT_LOAD_AID_SUC = 1001;
    private static AidTask sInstance;
    private AidInfo mAidInfo;
    private String mAppKey;
    private Context mContext;
    private CallbackHandler mHandler;
    private volatile ReentrantLock mTaskLock = new ReentrantLock(true);

    /* loaded from: classes.dex */
    public interface AidResultCallBack {
        void onAidGenFailed(Exception exc);

        void onAidGenSuccessed(AidInfo aidInfo);
    }

    /* loaded from: classes.dex */
    private static class CallbackHandler extends Handler {
        private WeakReference<AidResultCallBack> callBackReference;

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        public void setCallback(AidResultCallBack mCallBack) {
            if (this.callBackReference != null) {
                AidResultCallBack callback = this.callBackReference.get();
                if (callback != mCallBack) {
                    this.callBackReference = new WeakReference<>(mCallBack);
                    return;
                }
                return;
            }
            this.callBackReference = new WeakReference<>(mCallBack);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            AidResultCallBack callBack = this.callBackReference.get();
            switch (msg.what) {
                case 1001:
                    if (callBack != null) {
                        callBack.onAidGenSuccessed(((AidInfo) msg.obj).cloneAidInfo());
                        return;
                    }
                    return;
                case 1002:
                    if (callBack != null) {
                        callBack.onAidGenFailed((WeiboException) msg.obj);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class AidInfo {
        private String mAid;
        private String mSubCookie;

        public String getAid() {
            return this.mAid;
        }

        public String getSubCookie() {
            return this.mSubCookie;
        }

        public static AidInfo parseJson(String response) throws WeiboException {
            AidInfo instance = new AidInfo();
            try {
                JSONObject resObj = new JSONObject(response);
                if (resObj.has("error") || resObj.has("error_code")) {
                    LogUtil.d(AidTask.TAG, "loadAidFromNet has error !!!");
                    throw new WeiboException("loadAidFromNet has error !!!");
                }
                instance.mAid = resObj.optString("aid", "");
                instance.mSubCookie = resObj.optString("sub", "");
                return instance;
            } catch (JSONException e) {
                LogUtil.d(AidTask.TAG, "loadAidFromNet JSONException Msg : " + e.getMessage());
                throw new WeiboException("loadAidFromNet has error !!!");
            }
        }

        AidInfo cloneAidInfo() {
            AidInfo aidInfo = new AidInfo();
            aidInfo.mAid = this.mAid;
            aidInfo.mSubCookie = this.mSubCookie;
            return aidInfo;
        }
    }

    private AidTask(Context context) {
        this.mContext = context.getApplicationContext();
        this.mHandler = new CallbackHandler(this.mContext.getMainLooper());
        new Thread(new Runnable() { // from class: com.sina.weibo.sdk.utils.AidTask.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < 1; i++) {
                    File f = AidTask.this.getAidInfoFile(i);
                    try {
                        f.delete();
                    } catch (Exception e) {
                    }
                }
            }
        }).start();
    }

    public static synchronized AidTask getInstance(Context context) {
        AidTask aidTask;
        synchronized (AidTask.class) {
            if (sInstance == null) {
                sInstance = new AidTask(context);
            }
            aidTask = sInstance;
        }
        return aidTask;
    }

    public void aidTaskInit(String appKey) {
        if (!TextUtils.isEmpty(appKey)) {
            LogUtil.e(TAG, "aidTaskInit ");
            initAidInfo(appKey);
        }
    }

    private void initAidInfo(String appkey) {
        if (!TextUtils.isEmpty(appkey)) {
            this.mAppKey = appkey;
            new Thread(new Runnable() { // from class: com.sina.weibo.sdk.utils.AidTask.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!AidTask.this.mTaskLock.tryLock()) {
                        LogUtil.e(AidTask.TAG, "tryLock : false, return");
                        return;
                    }
                    AidInfo aidInfo = AidTask.this.loadAidInfoFromCache();
                    if (aidInfo != null) {
                        AidTask.this.mAidInfo = aidInfo;
                    } else {
                        int retry = 1;
                        do {
                            retry++;
                            try {
                                String response = AidTask.this.loadAidFromNet();
                                AidInfo aidInfo2 = AidInfo.parseJson(response);
                                AidTask.this.cacheAidInfo(response);
                                AidTask.this.mAidInfo = aidInfo2;
                                break;
                            } catch (WeiboException e) {
                                LogUtil.e(AidTask.TAG, "AidTaskInit WeiboException Msg : " + e.getMessage());
                            }
                        } while (retry < 3);
                    }
                    AidTask.this.mTaskLock.unlock();
                }
            }).start();
        }
    }

    public AidInfo getAidSync(String appkey) throws WeiboException {
        if (TextUtils.isEmpty(appkey)) {
            return null;
        }
        LogUtil.e(TAG, "getAidSync ");
        if (this.mAidInfo == null) {
            aidTaskInit(appkey);
        }
        return this.mAidInfo;
    }

    public void getAidAsync(String appKey, AidResultCallBack callback) {
        if (!TextUtils.isEmpty(appKey)) {
            if (this.mAidInfo != null && callback != null) {
                callback.onAidGenSuccessed(this.mAidInfo.cloneAidInfo());
            } else {
                generateAid(appKey, callback);
            }
        }
    }

    private void generateAid(String appkey, final AidResultCallBack callback) {
        if (!TextUtils.isEmpty(appkey)) {
            this.mAppKey = appkey;
            new Thread(new Runnable() { // from class: com.sina.weibo.sdk.utils.AidTask.3
                @Override // java.lang.Runnable
                public void run() {
                    AidTask.this.mTaskLock.lock();
                    AidInfo aidInfo = AidTask.this.loadAidInfoFromCache();
                    Exception throwable = null;
                    if (aidInfo == null) {
                        try {
                            String response = AidTask.this.loadAidFromNet();
                            aidInfo = AidInfo.parseJson(response);
                            AidTask.this.cacheAidInfo(response);
                            AidTask.this.mAidInfo = aidInfo;
                        } catch (WeiboException e) {
                            throwable = e;
                            LogUtil.e(AidTask.TAG, "AidTaskInit WeiboException Msg : " + e.getMessage());
                        }
                    }
                    AidTask.this.mTaskLock.unlock();
                    Message msg = Message.obtain();
                    if (aidInfo != null) {
                        msg.what = 1001;
                        msg.obj = aidInfo;
                    } else {
                        msg.what = 1002;
                        msg.obj = throwable;
                    }
                    AidTask.this.mHandler.setCallback(callback);
                    AidTask.this.mHandler.sendMessage(msg);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized AidInfo loadAidInfoFromCache() {
        AidInfo aidInfo;
        FileInputStream fis;
        FileInputStream fis2 = null;
        try {
            try {
                File aidFile = getAidInfoFile(1);
                fis = new FileInputStream(aidFile);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            aidInfo = AidInfo.parseJson(new String(buffer));
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e2) {
                } catch (Throwable th3) {
                    th = th3;
                    throw th;
                }
            }
        } catch (Exception e3) {
            fis2 = fis;
            if (fis2 != null) {
                try {
                    fis2.close();
                } catch (IOException e4) {
                }
            }
            aidInfo = null;
            return aidInfo;
        } catch (Throwable th4) {
            th = th4;
            fis2 = fis;
            if (fis2 != null) {
                try {
                    fis2.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
        return aidInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getAidInfoFile(int version) {
        File dir = this.mContext.getFilesDir();
        File aidFile = new File(dir, AID_FILE_NAME + version);
        return aidFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String loadAidFromNet() throws WeiboException {
        String pkgName = this.mContext.getPackageName();
        String keyHash = Utility.getSign(this.mContext, pkgName);
        String mfp = getMfp(this.mContext);
        WeiboParameters params = new WeiboParameters(this.mAppKey);
        params.put("appkey", this.mAppKey);
        params.put("mfp", mfp);
        params.put("packagename", pkgName);
        params.put("key_hash", keyHash);
        try {
            String response = NetUtils.internalHttpRequest(this.mContext, "https://api.weibo.com/oauth2/getaid.json", "GET", params);
            LogUtil.d(TAG, "loadAidFromNet response : " + response);
            return response;
        } catch (WeiboException e) {
            LogUtil.d(TAG, "loadAidFromNet WeiboException Msg : " + e.getMessage());
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void cacheAidInfo(String json) {
        if (!TextUtils.isEmpty(json)) {
            FileOutputStream fos = null;
            try {
                File aidFile = getAidInfoFile(1);
                FileOutputStream fos2 = new FileOutputStream(aidFile);
                try {
                    fos2.write(json.getBytes());
                    if (fos2 != null) {
                        try {
                            fos2.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Exception e2) {
                    fos = fos2;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    if (fos != null) {
                        try {
                            fos.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static String getMfp(Context ctx) {
        String mfpJson = genMfpString(ctx);
        String mfpJsonUtf8 = "";
        try {
            String mfpJsonUtf82 = new String(mfpJson.getBytes(), "UTF-8");
            mfpJsonUtf8 = mfpJsonUtf82;
        } catch (UnsupportedEncodingException e) {
        }
        LogUtil.d(TAG, "genMfpString() utf-8 string : " + mfpJsonUtf8);
        try {
            String rsaMfp = encryptRsa(mfpJsonUtf8, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB");
            LogUtil.d(TAG, "encryptRsa() string : " + rsaMfp);
            return rsaMfp;
        } catch (Exception e2) {
            LogUtil.e(TAG, e2.getMessage());
            return "";
        }
    }

    private static String genMfpString(Context ctx) {
        JSONObject mfpObj = new JSONObject();
        try {
            String os = getOS();
            if (!TextUtils.isEmpty(os)) {
                mfpObj.put("1", os);
            }
            String imei = getImei(ctx);
            if (!TextUtils.isEmpty(imei)) {
                mfpObj.put("2", imei);
            }
            String meid = getMeid(ctx);
            if (!TextUtils.isEmpty(meid)) {
                mfpObj.put("3", meid);
            }
            String imsi = getImsi(ctx);
            if (!TextUtils.isEmpty(imsi)) {
                mfpObj.put("4", imsi);
            }
            String mac = getMac(ctx);
            if (!TextUtils.isEmpty(mac)) {
                mfpObj.put("5", mac);
            }
            String iccid = getIccid(ctx);
            if (!TextUtils.isEmpty(iccid)) {
                mfpObj.put(Constants.VIA_SHARE_TYPE_INFO, iccid);
            }
            String serial = getSerialNo();
            if (!TextUtils.isEmpty(serial)) {
                mfpObj.put("7", serial);
            }
            String androidId = getAndroidId(ctx);
            if (!TextUtils.isEmpty(androidId)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, androidId);
            }
            String cpu = getCpu();
            if (!TextUtils.isEmpty(cpu)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_JOININ_GROUP, cpu);
            }
            String model = getModel();
            if (!TextUtils.isEmpty(model)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_MAKE_FRIEND, model);
            }
            String sdcard = getSdSize();
            if (!TextUtils.isEmpty(sdcard)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_WPA_STATE, sdcard);
            }
            String resolution = getResolution(ctx);
            if (!TextUtils.isEmpty(resolution)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_START_WAP, resolution);
            }
            String ssid = getSsid(ctx);
            if (!TextUtils.isEmpty(ssid)) {
                mfpObj.put(Constants.VIA_REPORT_TYPE_START_GROUP, ssid);
            }
            String deviceName = getDeviceName();
            if (!TextUtils.isEmpty(deviceName)) {
                mfpObj.put("18", deviceName);
            }
            String connectType = getConnectType(ctx);
            if (!TextUtils.isEmpty(connectType)) {
                mfpObj.put(Constants.VIA_ACT_TYPE_NINETEEN, connectType);
            }
            String ua = "";
            try {
                ua = Utility.generateUAAid(ctx);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!TextUtils.isEmpty(ua)) {
                mfpObj.put("20", ua);
            }
            return mfpObj.toString();
        } catch (JSONException e2) {
            return "";
        }
    }

    private static String encryptRsa(String src, String publicKeyStr) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        PublicKey publicKey = getPublicKey(publicKeyStr);
        cipher.init(1, publicKey);
        ByteArrayOutputStream bos = null;
        byte[] plainText = src.getBytes("UTF-8");
        try {
            ByteArrayOutputStream bos2 = new ByteArrayOutputStream();
            int offset = 0;
            while (true) {
                try {
                    int len = splite(plainText, offset, 117);
                    if (len == -1) {
                        break;
                    }
                    byte[] enBytes = cipher.doFinal(plainText, offset, len);
                    bos2.write(enBytes);
                    LogUtil.d(TAG, "encryptRsa offset = " + offset + "     len = " + len + "     enBytes len = " + enBytes.length);
                    offset += len;
                } catch (Throwable th) {
                    th = th;
                    bos = bos2;
                    if (bos != null) {
                        try {
                            bos.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            }
            bos2.flush();
            byte[] enBytes2 = bos2.toByteArray();
            LogUtil.d(TAG, "encryptRsa total enBytes len = " + enBytes2.length);
            byte[] base64byte = Base64.encodebyte(enBytes2);
            LogUtil.d(TAG, "encryptRsa total base64byte len = " + base64byte.length);
            String base64string = "01" + new String(base64byte, "UTF-8");
            LogUtil.d(TAG, "encryptRsa total base64string : " + base64string);
            if (bos2 != null) {
                try {
                    bos2.close();
                } catch (IOException e2) {
                }
            }
            return base64string;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int splite(byte[] src, int offset, int limit) {
        if (offset >= src.length) {
            return -1;
        }
        int delta = src.length - offset;
        return Math.min(delta, limit);
    }

    private static PublicKey getPublicKey(String key) throws Exception {
        byte[] keyBytes = Base64.decode(key.getBytes());
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(keyBytes);
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        PublicKey publicKey = keyFactory.generatePublic(keySpec);
        return publicKey;
    }

    private static String getOS() {
        try {
            return "Android " + Build.VERSION.RELEASE;
        } catch (Exception e) {
            return "";
        }
    }

    private static String getImei(Context ctx) {
        try {
            TelephonyManager telePhonyMgr = (TelephonyManager) ctx.getSystemService("phone");
            return telePhonyMgr.getDeviceId();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getMeid(Context ctx) {
        try {
            TelephonyManager telePhonyMgr = (TelephonyManager) ctx.getSystemService("phone");
            return telePhonyMgr.getDeviceId();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getImsi(Context ctx) {
        try {
            TelephonyManager telePhonyMgr = (TelephonyManager) ctx.getSystemService("phone");
            return telePhonyMgr.getSubscriberId();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getMac(Context ctx) {
        WifiInfo info;
        try {
            WifiManager wifi = (WifiManager) ctx.getSystemService("wifi");
            return (wifi == null || (info = wifi.getConnectionInfo()) == null) ? "" : info.getMacAddress();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getIccid(Context ctx) {
        try {
            TelephonyManager telePhonyMgr = (TelephonyManager) ctx.getSystemService("phone");
            return telePhonyMgr.getSimSerialNumber();
        } catch (Exception e) {
            return "";
        }
    }

    private static String getSerialNo() {
        try {
            Class<?> c = Class.forName("android.os.SystemProperties");
            Method get = c.getMethod("get", String.class, String.class);
            String serialnum = (String) get.invoke(c, "ro.serialno", EnvironmentCompat.MEDIA_UNKNOWN);
            return serialnum;
        } catch (Exception e) {
            return "";
        }
    }

    private static String getAndroidId(Context ctx) {
        try {
            return Settings.Secure.getString(ctx.getContentResolver(), "android_id");
        } catch (Exception e) {
            return "";
        }
    }

    private static String getCpu() {
        try {
            return Build.CPU_ABI;
        } catch (Exception e) {
            return "";
        }
    }

    private static String getModel() {
        try {
            return Build.MODEL;
        } catch (Exception e) {
            return "";
        }
    }

    private static String getSdSize() {
        try {
            File path = Environment.getExternalStorageDirectory();
            StatFs stat = new StatFs(path.getPath());
            long blockSize = stat.getBlockSize();
            long availableBlocks = stat.getBlockCount();
            return Long.toString(availableBlocks * blockSize);
        } catch (Exception e) {
            return "";
        }
    }

    private static String getResolution(Context ctx) {
        try {
            DisplayMetrics dm = new DisplayMetrics();
            WindowManager wm = (WindowManager) ctx.getSystemService("window");
            wm.getDefaultDisplay().getMetrics(dm);
            return String.valueOf(String.valueOf(dm.widthPixels)) + "*" + String.valueOf(dm.heightPixels);
        } catch (Exception e) {
            return "";
        }
    }

    private static String getSsid(Context ctx) {
        try {
            WifiManager wifiManager = (WifiManager) ctx.getSystemService("wifi");
            WifiInfo wifiInfo = wifiManager.getConnectionInfo();
            if (wifiInfo != null) {
                return wifiInfo.getSSID();
            }
        } catch (Exception e) {
        }
        return "";
    }

    private static String getDeviceName() {
        try {
            return Build.BRAND;
        } catch (Exception e) {
            return "";
        }
    }

    private static String getConnectType(Context ctx) {
        String network = HttpHeaders.Values.NONE;
        try {
            ConnectivityManager connectivity = (ConnectivityManager) ctx.getSystemService("connectivity");
            NetworkInfo info = connectivity.getActiveNetworkInfo();
            if (info != null) {
                if (info.getType() == 0) {
                    switch (info.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            network = SDKNetworkUtil.NETWORK_TYPE_2G;
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            network = SDKNetworkUtil.NETWORK_TYPE_3G;
                            break;
                        case 13:
                            network = SDKNetworkUtil.NETWORK_TYPE_4G;
                            break;
                        default:
                            network = HttpHeaders.Values.NONE;
                            break;
                    }
                } else if (info.getType() == 1) {
                    network = "wifi";
                }
            }
        } catch (Exception e) {
        }
        return network;
    }
}
