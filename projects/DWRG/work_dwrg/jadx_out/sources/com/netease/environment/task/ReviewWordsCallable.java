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
public class ReviewWordsCallable implements Callable<String> {
    private final String TAG = ReviewWordsCallable.class.getSimpleName();
    private String mContent;
    private Context mContext;

    public ReviewWordsCallable(Context context, String content) {
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
                Map<String, Pattern> shieldPatternMap = RegexGetter.getShieldPatternMap(this.mContext);
                Iterator<Map.Entry<String, Pattern>> it = shieldPatternMap.entrySet().iterator();
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
                        Map<String, Pattern> interceptPatternMap = RegexGetter.getInterceptPatternMap(this.mContext);
                        Iterator<Map.Entry<String, Pattern>> it2 = interceptPatternMap.entrySet().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                Map.Entry object2 = it2.next();
                                Map.Entry entry2 = object2;
                                String key2 = entry2.getKey();
                                Pattern pattern2 = entry2.getValue();
                                Matcher matcher2 = pattern2.matcher(this.mContent);
                                if (matcher2.find()) {
                                    resultJsonString = JsonUtils.getResultJsonString(SdkConstants.RESULT_CODE_INTERCEPT, "intercept", key2);
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
                }
            } else {
                LogUtils.info(this.TAG, "normal mode");
                JSONObject regexObject = RegexGetter.getRegexObject(this.mContext);
                JSONObject shieldObject = regexObject.optJSONObject("shield");
                Iterator<String> iterator1 = shieldObject.keys();
                while (true) {
                    if (iterator1.hasNext()) {
                        String key3 = iterator1.next();
                        String regular = shieldObject.optString(key3);
                        Pattern pattern3 = Pattern.compile(regular, 2);
                        Matcher matcher3 = pattern3.matcher(this.mContent);
                        if (matcher3.find()) {
                            resultJsonString = JsonUtils.getResultJsonString(SdkConstants.RESULT_CODE_SHIELD, "shield", key3);
                            break;
                        }
                        if (Thread.interrupted()) {
                            resultJsonString = JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_TIMEOUT, "-1");
                            break;
                        }
                    } else {
                        JSONObject interceptObject = regexObject.optJSONObject("intercept");
                        Iterator<String> iterator2 = interceptObject.keys();
                        while (true) {
                            if (iterator2.hasNext()) {
                                String key4 = iterator2.next();
                                String regular2 = interceptObject.optString(key4);
                                Pattern pattern4 = Pattern.compile(regular2, 2);
                                Matcher matcher4 = pattern4.matcher(this.mContent);
                                if (matcher4.find()) {
                                    resultJsonString = JsonUtils.getResultJsonString(SdkConstants.RESULT_CODE_INTERCEPT, "intercept", key4);
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
