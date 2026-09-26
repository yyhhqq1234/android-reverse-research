package com.sina.weibo.sdk.statistic;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.push.utils.PushConstants;
import com.sina.weibo.sdk.net.HttpManager;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.Utility;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LogReport {
    private static final int CONNECTION_TIMEOUT = 25000;
    private static final String PRIVATE_CODE = "dqwef1864il4c9m6";
    private static final int SOCKET_TIMEOUT = 20000;
    private static String mAid;
    private static String mAppkey;
    private static String mChannel;
    private static String mKeyHash;
    public static LogReport mLogReport;
    private static String mPackageName;
    private static JSONObject mParams;
    private static String mVersionName;
    private static String UPLOADTIME = "uploadtime";
    private static String mBaseUrl = "https://api.weibo.com/2/proxy/sdk/statistic.json";

    public LogReport(Context context) {
        try {
            if (mPackageName == null) {
                mPackageName = context.getPackageName();
            }
            mAppkey = StatisticConfig.getAppkey(context);
            checkAid(context);
            mKeyHash = Utility.getSign(context, mPackageName);
            mVersionName = LogBuilder.getVersion(context);
            mChannel = StatisticConfig.getChannel(context);
        } catch (Exception ex) {
            LogUtil.e(WBAgent.TAG, ex.toString());
        }
        initCommonParams();
    }

    private static JSONObject initCommonParams() {
        if (mParams == null) {
            mParams = new JSONObject();
        }
        try {
            mParams.put("appkey", mAppkey);
            mParams.put("platform", "Android");
            mParams.put("packagename", mPackageName);
            mParams.put("key_hash", mKeyHash);
            mParams.put("version", mVersionName);
            mParams.put(LogBuilder.KEY_CHANNEL, mChannel);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return mParams;
    }

    private static void checkAid(Context context) {
        if (TextUtils.isEmpty(mAid)) {
            mAid = Utility.getAid(context, mAppkey);
        }
        if (mParams == null) {
            mParams = new JSONObject();
        }
        try {
            mParams.put("aid", mAid);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void setPackageName(String mPackageName2) {
        mPackageName = mPackageName2;
    }

    public static String getPackageName() {
        return mPackageName;
    }

    public static synchronized void uploadAppLogs(Context context, String memoryLogs) {
        synchronized (LogReport.class) {
            if (mLogReport == null) {
                mLogReport = new LogReport(context);
            }
            if (!isNetworkConnected(context)) {
                LogUtil.i(WBAgent.TAG, "network is not connected");
                LogFileUtil.writeToFile(LogFileUtil.getAppLogPath(LogFileUtil.ANALYTICS_FILE_NAME), memoryLogs, true);
            } else {
                List<JSONArray> applogs = LogBuilder.getValidUploadLogs(memoryLogs);
                if (applogs == null) {
                    LogUtil.i(WBAgent.TAG, "applogs is null");
                } else {
                    List<JSONArray> failed_logs = new ArrayList<>();
                    checkAid(context);
                    for (JSONArray applog : applogs) {
                        HttpResponse response = requestHttpExecute(mBaseUrl, "POST", mParams, applog);
                        if (response == null || response.getStatusLine().getStatusCode() != 200) {
                            failed_logs.add(applog);
                            LogUtil.e(WBAgent.TAG, "upload applogs error");
                        } else {
                            updateTime(context, Long.valueOf(System.currentTimeMillis()));
                        }
                    }
                    LogFileUtil.delete(LogFileUtil.getAppLogPath(LogFileUtil.ANALYTICS_FILE_NAME));
                    if (failed_logs.size() > 0) {
                        for (JSONArray failed_log : failed_logs) {
                            LogFileUtil.writeToFile(LogFileUtil.getAppLogPath(LogFileUtil.ANALYTICS_FILE_NAME), failed_log.toString(), true);
                            LogUtil.d(WBAgent.TAG, "save failed_log");
                        }
                    }
                }
            }
        }
    }

    private static HttpResponse requestHttpExecute(String url, String method, JSONObject params, JSONArray applog) {
        HttpClient client = null;
        HttpResponse response = null;
        ByteArrayOutputStream baos = null;
        HttpUriRequest request = null;
        try {
            try {
                client = HttpManager.getNewHttpClient();
                if (params == null) {
                    params = initCommonParams();
                }
                try {
                    params.put(Const.KEY_TIME, System.currentTimeMillis() / 1000);
                    params.put("length", applog.length());
                    params.put("sign", getSign(params.getString("aid"), params.getString("appkey"), params.getLong(Const.KEY_TIME)));
                    params.put("content", applog);
                    LogUtil.d(WBAgent.TAG, "post content--- " + params.toString());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                if (method.equals("GET")) {
                    HttpUriRequest request2 = new HttpGet(String.valueOf(url) + "?" + params.toString());
                    request = request2;
                } else if (method.equals("POST")) {
                    if (TextUtils.isEmpty(mAppkey)) {
                        LogUtil.e(WBAgent.TAG, "unexpected null AppKey");
                        if (0 != 0) {
                            try {
                                baos.close();
                            } catch (IOException e2) {
                            }
                        }
                        shutdownHttpClient(client);
                        return null;
                    }
                    HttpPost post = getNewHttpPost(String.valueOf(url) + "?source=" + mAppkey, params);
                    ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
                    try {
                        if (StatisticConfig.isNeedGizp()) {
                            baos2.write(gzipLogs(params.toString()));
                        } else {
                            baos2.write(params.toString().getBytes());
                        }
                        post.setEntity(new ByteArrayEntity(baos2.toByteArray()));
                        request = post;
                        baos = baos2;
                    } catch (UnsupportedEncodingException e3) {
                        e = e3;
                        baos = baos2;
                        e.printStackTrace();
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e4) {
                            }
                        }
                        shutdownHttpClient(client);
                        return response;
                    } catch (ClientProtocolException e5) {
                        e = e5;
                        baos = baos2;
                        e.printStackTrace();
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e6) {
                            }
                        }
                        shutdownHttpClient(client);
                        return response;
                    } catch (IOException e7) {
                        e = e7;
                        baos = baos2;
                        e.printStackTrace();
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e8) {
                            }
                        }
                        shutdownHttpClient(client);
                        return response;
                    } catch (Throwable th) {
                        th = th;
                        baos = baos2;
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e9) {
                            }
                        }
                        shutdownHttpClient(client);
                        throw th;
                    }
                }
                response = client.execute(request);
                LogUtil.i(WBAgent.TAG, "status code = " + response.getStatusLine().getStatusCode());
                if (baos != null) {
                    try {
                        baos.close();
                    } catch (IOException e10) {
                    }
                }
                shutdownHttpClient(client);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (UnsupportedEncodingException e11) {
            e = e11;
        } catch (ClientProtocolException e12) {
            e = e12;
        } catch (IOException e13) {
            e = e13;
        }
        return response;
    }

    private static boolean isNetworkConnected(Context context) {
        if (context == null) {
            LogUtil.e(WBAgent.TAG, "unexpected null context in isNetworkConnected");
            return false;
        }
        PackageManager pm = context.getPackageManager();
        if (pm.checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            return false;
        }
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo info = null;
        try {
            info = cm.getActiveNetworkInfo();
        } catch (NullPointerException e) {
        }
        return info != null && info.isAvailable();
    }

    private static synchronized HttpPost getNewHttpPost(String url, JSONObject params) {
        HttpPost httpPost;
        synchronized (LogReport.class) {
            httpPost = new HttpPost(url);
            httpPost.setHeader(HttpHeaders.Names.CONTENT_TYPE, "application/x-www-form-urlencoded");
            httpPost.setHeader(HttpHeaders.Names.CONNECTION, "Keep-Alive");
            httpPost.addHeader(HttpHeaders.Names.CONTENT_ENCODING, StatisticConfig.isNeedGizp() ? HttpHeaders.Values.GZIP : "charset=UTF-8");
            httpPost.addHeader(HttpHeaders.Names.ACCEPT, "*/*");
            httpPost.addHeader(HttpHeaders.Names.ACCEPT_LANGUAGE, "en-us");
            httpPost.addHeader(HttpHeaders.Names.ACCEPT_ENCODING, HttpHeaders.Values.GZIP);
        }
        return httpPost;
    }

    private static String getSign(String aid, String appkey, long time) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(aid)) {
            sb.append(aid);
        }
        sb.append(appkey).append(PRIVATE_CODE).append(time);
        String oriData = MD5.hexdigest(sb.toString());
        String md5_key = oriData.substring(oriData.length() - 6);
        String md5_sign = MD5.hexdigest(String.valueOf(md5_key) + md5_key.substring(0, 4));
        return String.valueOf(md5_key) + md5_sign.substring(md5_sign.length() - 1);
    }

    private static byte[] gzipLogs(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            byte[] logs = str.getBytes("utf-8");
            GZIPOutputStream gzip = new GZIPOutputStream(out);
            gzip.write(logs);
            gzip.close();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return out.toByteArray();
    }

    public static long getTime(Context context) {
        SharedPreferences sp = context.getSharedPreferences(UPLOADTIME, 0);
        return sp.getLong(PushConstants.INTENT_LASTTIME_NAME, 0L);
    }

    private static void updateTime(Context context, Long time) {
        SharedPreferences sp = context.getSharedPreferences(UPLOADTIME, 0);
        SharedPreferences.Editor editor = sp.edit();
        editor.putLong(PushConstants.INTENT_LASTTIME_NAME, time.longValue());
        editor.commit();
    }

    private static void shutdownHttpClient(HttpClient client) {
        if (client != null) {
            try {
                client.getConnectionManager().closeExpiredConnections();
            } catch (Exception e) {
            }
        }
    }
}
