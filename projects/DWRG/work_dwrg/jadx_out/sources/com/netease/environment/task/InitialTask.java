package com.netease.environment.task;

import android.content.Context;
import android.os.AsyncTask;
import com.netease.environment.config.LogConfig;
import com.netease.environment.config.SdkConfig;
import com.netease.environment.config.SdkConstants;
import com.netease.environment.config.SdkData;
import com.netease.environment.http.DownloadUtils;
import com.netease.environment.http.HttpPost;
import com.netease.environment.utils.Base64Utils;
import com.netease.environment.utils.HttpUtils;
import com.netease.environment.utils.LogUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class InitialTask extends AsyncTask<Void, Void, String> {
    private final String TAG = InitialTask.class.getSimpleName();
    private Context mContext;

    public InitialTask(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public String doInBackground(Void... params) {
        String initUrl = SdkConstants.getInitUrl();
        LogUtils.info(this.TAG, "init url:" + initUrl);
        String param = LogConfig.getPostLog(this.mContext);
        if (param != null && !param.isEmpty()) {
            param = Base64Utils.encode(param.getBytes());
        }
        if (param != null && param.length() > 102400) {
            LogConfig.removeAll(this.mContext);
            param = "";
        }
        LogUtils.info(this.TAG, "init param:" + param);
        String result = HttpPost.post(initUrl, param);
        try {
            JSONObject resultObject = new JSONObject(result);
            LogConfig.removeAll(this.mContext);
            String regexUrl = resultObject.optString("url");
            LogUtils.info(this.TAG, "the regex url is " + regexUrl);
            if (HttpUtils.verifyURL(regexUrl)) {
                String nativeUrl = SdkConfig.getRegexFileUrl(this.mContext, SdkData.getGameId(), null);
                LogUtils.info(this.TAG, "the native regex url is " + nativeUrl);
                if (!regexUrl.equals(nativeUrl)) {
                    DownloadUtils.downloadRegularFile(this.mContext, regexUrl);
                    LogUtils.info(this.TAG, "the regex file is out of date");
                } else {
                    LogUtils.info(this.TAG, "the regex file is latest");
                }
            }
            String mode = resultObject.optString("mode");
            LogUtils.info(this.TAG, "the mode is " + mode);
            if (mode != null && !mode.isEmpty()) {
                SdkData.setMode(mode);
            }
        } catch (Exception e) {
            LogUtils.info(this.TAG, "fail to parse init result:" + result);
            e.printStackTrace();
        }
        return null;
    }
}
