package com.ta.utdid2.aid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ta.utdid2.android.utils.DebugUtils;
import com.ta.utdid2.android.utils.NetworkUtils;
import com.ut.device.AidCallback;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AidRequester {
    private static final String AIDFUNCNAME = "/get_aid/";
    private static final String AIDSERVER = "http://hydra.alibaba.com/";
    private static final String NAME_AID = "&aid=";
    private static final String NAME_ID = "&id=";
    private static final String NAME_RESULT_ACTION = "action";
    private static final String NAME_RESULT_AID = "aid";
    private static final String NAME_RESULT_ISERROR = "isError";
    private static final String NAME_RESULT_STATUS = "status";
    private static final String NAME_RESUTL_DATA = "data";
    private static final String NAME_TOKEN = "auth[token]=";
    private static final String NAME_TYPE = "&type=";
    private static final String RSP_ACTION_CHANGED = "changed";
    private static final String RSP_ACTION_NEW = "new";
    private static final String RSP_ACTION_UNCHANGED = "unchanged";
    private static final String RSP_ISERROR_FALSE = "false";
    private static final String RSP_ISERROR_TRUE = "true";
    private static final String RSP_STATUS_INVALID_APP = "404";
    private static final String RSP_STATUS_INVALID_TOKEN = "401";
    private static final String RSP_STATUS_OK = "200";
    private static final int SESSION_TIME_OUT = 1000;
    private static final String TYPE_UTDID = "utdid";
    private static final int WEAK_SESSION_TIME_OUT = 3000;
    private Context mContext;
    private Object mLock = new Object();
    private static final String TAG = AidRequester.class.getName();
    private static AidRequester sAidRequester = null;

    /* loaded from: classes.dex */
    class PostRestThread extends Thread {
        String mAppName;
        AidCallback mCallback;
        String mOldAid;
        HttpPost mPost;
        String mRspLine;
        String mToken;

        public PostRestThread(HttpPost httpPost) {
            this.mRspLine = "";
            this.mToken = "";
            this.mPost = httpPost;
        }

        public PostRestThread(HttpPost httpPost, AidCallback aidCallback, String str, String str2, String str3) {
            this.mRspLine = "";
            this.mToken = "";
            this.mPost = httpPost;
            this.mCallback = aidCallback;
            this.mOldAid = str;
            this.mAppName = str2;
            this.mToken = str3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x0036, code lost:
        
            android.util.Log.e(com.ta.utdid2.aid.AidRequester.TAG, r0.toString());
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.aid.AidRequester.PostRestThread.run():void");
        }

        public String getResponseLine() {
            return this.mRspLine;
        }
    }

    public static synchronized AidRequester getInstance(Context context) {
        AidRequester aidRequester;
        synchronized (AidRequester.class) {
            if (sAidRequester == null) {
                sAidRequester = new AidRequester(context);
            }
            aidRequester = sAidRequester;
        }
        return aidRequester;
    }

    public AidRequester(Context context) {
        this.mContext = context;
    }

    public void postRestAsync(String str, String str2, String str3, String str4, AidCallback aidCallback) {
        String postUrl = getPostUrl(str, str2, str3, str4);
        if (DebugUtils.DBG) {
            Log.d(TAG, "url:" + postUrl + "; len:" + postUrl.length());
        }
        new PostRestThread(new HttpPost(postUrl), aidCallback, str4, str, str2).start();
    }

    public String postRest(String str, String str2, String str3, String str4) {
        String postUrl = getPostUrl(str, str2, str3, str4);
        int i = NetworkUtils.isConnectedToWeakNetwork(this.mContext) ? 3000 : 1000;
        if (DebugUtils.DBG) {
            Log.d(TAG, "url:" + postUrl + "; timeout:" + i);
        }
        PostRestThread postRestThread = new PostRestThread(new HttpPost(postUrl));
        postRestThread.start();
        try {
            synchronized (this.mLock) {
                this.mLock.wait(i);
            }
        } catch (Exception e) {
            Log.e(TAG, e.toString());
        }
        String responseLine = postRestThread.getResponseLine();
        if (DebugUtils.DBG) {
            Log.d(TAG, "mLine:" + responseLine);
        }
        return getAidFromJsonRsp(responseLine, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAidFromJsonRsp(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("data")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    if (jSONObject2.has("action") && jSONObject2.has("aid")) {
                        String string = jSONObject2.getString("action");
                        if (string.equalsIgnoreCase(RSP_ACTION_NEW) || string.equalsIgnoreCase(RSP_ACTION_CHANGED)) {
                            return jSONObject2.getString("aid");
                        }
                        return str2;
                    }
                    return str2;
                }
                if (jSONObject.has(NAME_RESULT_ISERROR) && jSONObject.has("status")) {
                    String string2 = jSONObject.getString(NAME_RESULT_ISERROR);
                    String string3 = jSONObject.getString("status");
                    if (string2.equalsIgnoreCase(RSP_ISERROR_TRUE)) {
                        if (string3.equalsIgnoreCase(RSP_STATUS_INVALID_APP) || string3.equalsIgnoreCase(RSP_STATUS_INVALID_TOKEN)) {
                            if (DebugUtils.DBG) {
                                Log.d(TAG, "remove the AID, status:" + string3);
                            }
                            return "";
                        }
                        return str2;
                    }
                    return str2;
                }
                return str2;
            } catch (JSONException e) {
                Log.e(TAG, e.toString());
                return str2;
            } catch (Exception e2) {
                Log.e(TAG, e2.toString());
                return str2;
            }
        }
        return str2;
    }

    private static String getPostUrl(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        try {
            str3 = URLEncoder.encode(str3, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return sb.append(AIDSERVER).append(str).append("/get_aid/?auth[token]=").append(str2).append("&type=utdid&id=").append(str3).append(NAME_AID).append(str4).toString();
    }
}
