package com.netease.cloud.nos.android.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.Base64;
import com.alipay.sdk.cons.b;
import com.alipay.sdk.util.i;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.cloud.nos.android.core.Callback;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.core.WanNOSObject;
import com.netease.cloud.nos.android.exception.InvalidParameterException;
import com.netease.cloud.nos.android.http.HttpResult;
import com.netease.cloud.nos.android.pipeline.PipelineHttpSession;
import com.netease.download.Const;
import com.netease.push.utils.PushConstants;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Util {
    private static final String LOGTAG = LogUtil.makeLogTag(Util.class);

    public static void setData(Context ctx, String key, String value) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        SharedPreferences.Editor mEditor = mPerferences.edit();
        mEditor.putString(key, value);
        mEditor.commit();
    }

    public static String getData(Context ctx, String key) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        return mPerferences.getString(key, null);
    }

    public static HttpPost newPost(String url) {
        return new HttpPost(url);
    }

    public static HttpGet newGet(String url) {
        return new HttpGet(url);
    }

    public static HttpClient getHttpClient(Context ctx) {
        return Http.getHttpClient(ctx);
    }

    public static HttpClient getLbsHttpClient(Context ctx) {
        return Http.getLbsHttpClient(ctx);
    }

    private static SharedPreferences getDefaultPreferences(Context ctx) {
        return PreferenceManager.getDefaultSharedPreferences(ctx);
    }

    public static CountDownLatch acquireLock() {
        CountDownLatch latch = new CountDownLatch(1);
        return latch;
    }

    public static void setLock(CountDownLatch latch) {
        try {
            latch.await();
        } catch (InterruptedException e) {
            LogUtil.e(LOGTAG, "set lock with interrupted exception", e);
        }
    }

    public static void releaseLock(CountDownLatch latch) {
        latch.countDown();
    }

    public static int getIntData(Context ctx, String key) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        return mPerferences.getInt(key, 0);
    }

    public static void setBooleanData(Context ctx, String key, boolean value) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        SharedPreferences.Editor mEditor = mPerferences.edit();
        mEditor.putBoolean(key, value);
        mEditor.commit();
    }

    public static boolean getBooleanData(Context ctx, String key) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        return mPerferences.getBoolean(key, false);
    }

    public static void setLongData(Context ctx, String key, Long value) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        SharedPreferences.Editor mEditor = mPerferences.edit();
        mEditor.putLong(key, value.longValue());
        mEditor.commit();
    }

    public static long getLongData(Context ctx, String key) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        return mPerferences.getLong(key, 0L);
    }

    public static void setBucketName(Context ctx, String bucketName) {
        SharedPreferences mPerferences = getDefaultPreferences(ctx);
        int num = mPerferences.getInt(Constants.BUCKET_NUMBER, 0);
        for (int i = 0; i < num; i++) {
            String bucket = mPerferences.getString(Constants.BUCKET_NAME + i, null);
            if (bucket.equals(bucketName)) {
                return;
            }
        }
        SharedPreferences.Editor mEditor = mPerferences.edit();
        mEditor.putString(Constants.BUCKET_NAME + num, bucketName);
        mEditor.putInt(Constants.BUCKET_NUMBER, num + 1);
        mEditor.commit();
    }

    public static HttpResult setLBSData(Context ctx, String bucketName, JSONObject rs) {
        try {
            String lbsString = rs.getString("lbs");
            JSONArray uploadArray = rs.getJSONArray("upload");
            String uploadString = transformString(uploadArray);
            LogUtil.d(LOGTAG, "lbsString: " + lbsString);
            LogUtil.d(LOGTAG, "upload server string: " + uploadString);
            if (lbsString != null) {
                setData(ctx, String.valueOf(bucketName) + Constants.LBS_KEY, lbsString);
            }
            if (uploadString != null) {
                String httpsUploadString = replaceWithHttps(uploadString);
                LogUtil.d(LOGTAG, "https servers: " + httpsUploadString);
                setData(ctx, String.valueOf(bucketName) + Constants.UPLOAD_SERVER_KEY, uploadString);
                setData(ctx, String.valueOf(bucketName) + Constants.HTTPS_UPLOAD_SERVER_KEY, httpsUploadString);
                setLongData(ctx, String.valueOf(bucketName) + Constants.LBS_TIME, Long.valueOf(System.currentTimeMillis()));
                setBooleanData(ctx, String.valueOf(bucketName) + Constants.LBS_STATUS, true);
            }
            setBucketName(ctx, bucketName);
            return new HttpResult(200, rs, null);
        } catch (JSONException e) {
            LogUtil.e(LOGTAG, "get json array exception", e);
            return new HttpResult(Code.INVALID_LBS_DATA, rs, null);
        }
    }

    public static String[] getUploadServer(Context ctx, String bucketName, boolean isHttps) {
        String str;
        if (!isHttps) {
            str = getData(ctx, String.valueOf(bucketName) + Constants.UPLOAD_SERVER_KEY);
        } else {
            str = getData(ctx, String.valueOf(bucketName) + Constants.HTTPS_UPLOAD_SERVER_KEY);
        }
        if (str == null) {
            return null;
        }
        return str.split(i.b);
    }

    public static String buildLBSUrl(String url, String bucketName) {
        LogUtil.d(LOGTAG, "query lbs url: " + url);
        return String.valueOf(url) + "?version=1.0&bucketname=" + bucketName;
    }

    public static String buildQueryUrl(String server, String bucketName, String fileName, String context) throws UnsupportedEncodingException {
        String queryString;
        if (context != null) {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?uploadContext&version=1.0&context=" + context;
        } else {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?uploadContext&version=1.0";
        }
        return String.valueOf(server) + "/" + queryString;
    }

    public static String buildPostDataUrl(String server, String bucketName, String fileName, String context, long offset, boolean isLast) throws UnsupportedEncodingException {
        String queryString;
        if (context != null) {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?version=1.0&context=" + context + "&offset=" + offset + "&complete=" + isLast;
        } else {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?version=1.0&offset=" + offset + "&complete=" + isLast;
        }
        LogUtil.d(LOGTAG, "post data url server: " + server + ", query string: " + queryString);
        return String.valueOf(server) + "/" + queryString;
    }

    public static HttpRequestBase setHeader(HttpRequestBase request, Map<String, String> map) {
        if (map != null) {
            Set<String> keys = map.keySet();
            for (String s : keys) {
                request.addHeader(s, map.get(s));
            }
        }
        return request;
    }

    public static File getSDPath(Context context) {
        File sdDir = context.getCacheDir();
        boolean sdCardExist = Environment.getExternalStorageState().equals("mounted");
        if (sdCardExist) {
            File sdDir2 = Environment.getExternalStorageDirectory();
            return sdDir2;
        }
        return sdDir;
    }

    public static FileInput fromInputStream(Context context, File file, String filename) throws IOException {
        if (file == null) {
            return null;
        }
        try {
            FileInput isa = new FileInput(file, filename);
            return isa;
        } catch (IOException e) {
            throw e;
        }
    }

    public static ExecutorService getExecutorService() {
        return Executors.newSingleThreadExecutor();
    }

    public static String getToken(String bucket, String object, long expires, String accessKey, String secretKey, String callbackurl, String callbackbody) throws NoSuchAlgorithmException, InvalidKeyException, JSONException {
        JSONObject jsonObject = new JSONObject();
        if (bucket != null) {
            jsonObject.put("Bucket", bucket);
        }
        if (object != null) {
            jsonObject.put("Object", object);
        }
        if (expires != 0) {
            jsonObject.put(HttpHeaders.Names.EXPIRES, expires);
        }
        if (callbackurl != null) {
            jsonObject.put("CallbackUrl", callbackurl);
        }
        if (callbackbody != null) {
            jsonObject.put("CallbackBody", callbackbody);
        }
        String jsonString = jsonObject.toString();
        String encodedPolicy = new String(Base64.encode(jsonString.getBytes(), 2));
        SecretKeySpec signingKey = new SecretKeySpec(secretKey.getBytes(), "HmacSHA256");
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(signingKey);
        byte[] signedPolicy = mac.doFinal(encodedPolicy.getBytes());
        String encodedSign = new String(Base64.encode(signedPolicy, 2));
        String token = "UPLOAD " + accessKey + Const.RESP_CONTENT_SPIT2 + encodedSign + Const.RESP_CONTENT_SPIT2 + encodedPolicy;
        return token;
    }

    public static int transformCode(int code) {
        switch (code) {
            case -5:
                return Code.HTTP_NO_RESPONSE;
            case -4:
                return Code.HTTP_EXCEPTION;
            case -3:
                return 500;
            case -2:
                return Code.INVALID_TOKEN;
            case -1:
            default:
                return Code.UNKNOWN_REASON;
        }
    }

    public static void deleteTempFiles(Context context) {
        File[] list;
        File outputDir = getSDPath(context);
        File dir = new File(String.valueOf(outputDir.getPath()) + Constants.TEMP_FILE);
        if (dir.exists() && (list = dir.listFiles()) != null) {
            for (File f : list) {
                f.delete();
            }
        }
    }

    public static String getIPAddress() {
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en.hasMoreElements()) {
                NetworkInterface intf = en.nextElement();
                Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses();
                while (enumIpAddr.hasMoreElements()) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                        return inetAddress.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e) {
            LogUtil.e(LOGTAG, "get ip address socket exception");
        }
        return "";
    }

    public static String getMonitorUrl(String url) {
        return String.valueOf(url) + "/stat/sdk?version=1.0";
    }

    public static long ipToLong(String strIp) {
        if (strIp == null || strIp.equals("")) {
            return 0L;
        }
        int position1 = strIp.indexOf(PushConstants.KEY_SEPARATOR);
        int position2 = strIp.indexOf(PushConstants.KEY_SEPARATOR, position1 + 1);
        int position3 = strIp.indexOf(PushConstants.KEY_SEPARATOR, position2 + 1);
        long[] ip = {Long.parseLong(strIp.substring(0, position1)), Long.parseLong(strIp.substring(position1 + 1, position2)), Long.parseLong(strIp.substring(position2 + 1, position3)), Long.parseLong(strIp.substring(position3 + 1))};
        return (ip[0] << 24) + (ip[1] << 16) + (ip[2] << 8) + ip[3];
    }

    public static String getIPString(String srcIp) {
        if (srcIp == null || srcIp.equals("")) {
            return "";
        }
        if (srcIp.startsWith(b.a)) {
            srcIp = srcIp.replaceAll("https://", "");
        }
        if (srcIp.startsWith("http")) {
            srcIp = srcIp.replaceAll("http://", "");
        }
        return srcIp.replaceAll("^(\\d{1,3}(\\.\\d{1,3}){3}).*", "$1");
    }

    public static boolean isValidLbsIP(String srcIp) {
        String srcIp2;
        if (srcIp == null || srcIp.equals("")) {
            return false;
        }
        if (srcIp.startsWith("https://")) {
            srcIp2 = srcIp.replaceFirst("https://", "");
        } else {
            if (!srcIp.startsWith("http://")) {
                return false;
            }
            srcIp2 = srcIp.replaceFirst("http://", "");
        }
        if (!srcIp2.endsWith("/lbs")) {
            return false;
        }
        String srcIp3 = srcIp2.replaceFirst("/lbs", "");
        if (srcIp3.equals("0.0.0.0") || srcIp3.equals("255.255.255.255")) {
            return false;
        }
        return ValidIP.validate(srcIp3);
    }

    public static void addHeaders(HttpPost post, WanNOSObject data) {
        if (data.getContentType() != null && !data.getContentType().equals("")) {
            post.addHeader(HttpHeaders.Names.CONTENT_TYPE, data.getContentType());
        }
        if (data.getUserMetadata() != null && data.getUserMetadata().size() > 0) {
            Map<String, String> userMap = data.getUserMetadata();
            for (String key : userMap.keySet()) {
                post.addHeader("x-nos-meta-" + key, userMap.get(key));
            }
        }
    }

    public static String getResultString(HttpResult result, String str) {
        if (result == null || result.getMsg() == null || !result.getMsg().has(str)) {
            return "";
        }
        try {
            String rs = result.getMsg().getString(str);
            return rs;
        } catch (JSONException e) {
            LogUtil.e(LOGTAG, "get result string parse json failed", e);
            return "";
        }
    }

    public static void checkParameters(Context context, File file, Object fileParam, WanNOSObject obj, Callback callback) throws InvalidParameterException {
        String uploadToken = obj.getUploadToken();
        String nosBucketName = obj.getNosBucketName();
        String nosObjectName = obj.getNosObjectName();
        if (context == null || file == null || fileParam == null || obj == null || callback == null || uploadToken == null || nosBucketName == null || nosObjectName == null) {
            throw new InvalidParameterException("parameters could not be null");
        }
    }

    private static String transformString(JSONArray array) {
        if (array == null || array.length() == 0) {
            return null;
        }
        String str = "";
        for (int i = 0; i < array.length(); i++) {
            try {
                str = String.valueOf(str) + array.getString(i);
                if (i != array.length() - 1) {
                    str = String.valueOf(str) + i.b;
                }
            } catch (JSONException e) {
                LogUtil.e(LOGTAG, "get json string exception", e);
                return str;
            }
        }
        return str;
    }

    private static String replaceWithHttps(String str) {
        return str.replaceAll("http://", "https://");
    }

    private static String encode(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, WanAccelerator.getConf().getCharset());
    }

    public static String pipeBuildQueryUrl(String bucketName, String fileName, String context) throws UnsupportedEncodingException {
        String queryString;
        if (context != null) {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?uploadContext&version=1.0&context=" + context;
        } else {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?uploadContext&version=1.0";
        }
        return "/" + queryString;
    }

    public static String pipeBuildPostDataUrl(String bucketName, String fileName, String context, long offset, boolean isLast) throws UnsupportedEncodingException {
        String queryString;
        if (context != null) {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?version=1.0&context=" + context + "&offset=" + offset + "&complete=" + isLast;
        } else {
            queryString = String.valueOf(encode(bucketName)) + "/" + encode(fileName) + "?version=1.0&offset=" + offset + "&complete=" + isLast;
        }
        return "/" + queryString;
    }

    public static void pipeAddHeaders(DefaultFullHttpRequest request, WanNOSObject data) {
        if (data.getContentType() != null && !data.getContentType().equals("")) {
            request.headers().add(HttpHeaders.Names.CONTENT_TYPE, (Object) data.getContentType());
        }
        if (data.getUserMetadata() != null && data.getUserMetadata().size() > 0) {
            Map<String, String> userMap = data.getUserMetadata();
            for (String key : userMap.keySet()) {
                request.headers().add("x-nos-meta-" + key, (Object) userMap.get(key));
            }
        }
    }

    public static int getHttpCode(HttpResult httpResult) {
        Exception e;
        int code = httpResult.getStatusCode();
        if (code != 200 && (e = httpResult.getException()) != null) {
            if (e instanceof ConnectTimeoutException) {
                LogUtil.d(LOGTAG, "connection timeout Exception:" + e.getMessage());
                return Code.CONNECTION_TIMEOUT;
            }
            if (e instanceof SocketTimeoutException) {
                LogUtil.d(LOGTAG, "Read Socket Timeout Exception:" + e.getMessage());
                return 903;
            }
            if (e instanceof NoHttpResponseException) {
                LogUtil.d(LOGTAG, "No HttpResponse Exception:" + e.getMessage());
                return Code.HTTP_NO_RESPONSE;
            }
            if (e instanceof SSLException) {
                LogUtil.d(LOGTAG, "SSL Exception:" + e.getMessage());
                return Code.SSL_FAILED;
            }
            if (e instanceof SocketException) {
                LogUtil.d(LOGTAG, "Socket Exception" + e.getMessage());
                String errStr = e.getMessage().toLowerCase();
                if (errStr.contains("refused")) {
                    return 901;
                }
                if (errStr.contains("reset")) {
                    return 902;
                }
                return code;
            }
            if (e instanceof JSONException) {
                LogUtil.d(LOGTAG, "JSON Exception" + e.getMessage());
                return Code.INVALID_RESPONSE_DATA;
            }
            return code;
        }
        return code;
    }

    public static void netStateChange(Context context) {
        LogUtil.d(LOGTAG, "network connection change");
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = cm.getActiveNetworkInfo();
        if (cm != null && networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            NetworkType netType = NetworkType.getNetWorkType(context);
            int bucketNum = getIntData(context, Constants.BUCKET_NUMBER);
            LogUtil.d(LOGTAG, "bucketNum =" + bucketNum + ", netType = " + netType.getNetworkType());
            for (int i = 0; i < bucketNum; i++) {
                String bucketName = getData(context, Constants.BUCKET_NAME + i);
                if (bucketName != null) {
                    setBooleanData(context, String.valueOf(bucketName) + Constants.LBS_STATUS, false);
                    setData(context, String.valueOf(bucketName) + Constants.NET_TYPE, netType.getNetworkType());
                }
            }
            PipelineHttpSession.reStart();
        }
    }
}
