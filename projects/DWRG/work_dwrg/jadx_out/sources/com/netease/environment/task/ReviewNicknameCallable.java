package com.netease.environment.task;

import android.content.Context;
import com.netease.environment.config.LogConfig;
import com.netease.environment.config.SdkConstants;
import com.netease.environment.config.SdkData;
import com.netease.environment.model.RegexGetter;
import com.netease.environment.utils.JsonUtils;
import com.netease.environment.utils.LogUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ReviewNicknameCallable implements Callable<String> {
    private final String TAG = ReviewNicknameCallable.class.getSimpleName();
    private String mContent;
    private Context mContext;

    public ReviewNicknameCallable(Context context, String content) {
        this.mContext = context;
        this.mContent = content;
    }

    @Override // java.util.concurrent.Callable
    public String call() throws Exception {
        String resultJsonString;
        if (this.mContent == null || this.mContent.isEmpty()) {
            return JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_EMPTY, "-1");
        }
        try {
            if (SdkConstants.MODE_FAST.equals(SdkData.getMode())) {
                LogUtils.info(this.TAG, "fast mode");
                Map<String, Pattern> nicknamePatternMap = RegexGetter.getNicknamePatternMap(this.mContext);
                Iterator<Map.Entry<String, Pattern>> it = nicknamePatternMap.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry object = it.next();
                        Map.Entry entry = object;
                        String key = entry.getKey();
                        Pattern pattern = entry.getValue();
                        Matcher matcher = pattern.matcher(this.mContent);
                        if (matcher.find()) {
                            resultJsonString = JsonUtils.getResultJsonString(SdkConstants.RESULT_CODE_SHIELD, "shield", key);
                            break;
                        }
                        if (Thread.interrupted()) {
                            resultJsonString = JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_TIMEOUT, "-1");
                            break;
                        }
                    } else {
                        resultJsonString = JsonUtils.getResultJsonString(200, SdkConstants.RESULT_MESSAGE_PASS, "-1");
                        break;
                    }
                }
            } else {
                LogUtils.info(this.TAG, "normal mode");
                JSONObject regexObject = RegexGetter.getRegexObject(this.mContext);
                JSONObject nicknameObject = regexObject.optJSONObject("nickname");
                Iterator<String> iterator = nicknameObject.keys();
                while (true) {
                    if (iterator.hasNext()) {
                        String key2 = iterator.next();
                        String regular = nicknameObject.optString(key2);
                        Pattern pattern2 = Pattern.compile(regular, 2);
                        Matcher matcher2 = pattern2.matcher(this.mContent);
                        if (matcher2.find()) {
                            resultJsonString = JsonUtils.getResultJsonString(SdkConstants.RESULT_CODE_SHIELD, "shield", key2);
                            break;
                        }
                        if (Thread.interrupted()) {
                            resultJsonString = JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_TIMEOUT, "-1");
                            break;
                        }
                    } else {
                        resultJsonString = JsonUtils.getResultJsonString(200, SdkConstants.RESULT_MESSAGE_PASS, "-1");
                        break;
                    }
                }
            }
            return resultJsonString;
        } catch (Exception e) {
            LogConfig.saveExceptionLog(e, SdkConstants.MODE_FAST);
            LogUtils.error(this.TAG, "exception when run in fast mode");
            throw e;
        }
    }
}
