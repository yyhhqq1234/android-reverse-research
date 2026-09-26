package com.netease.environment.model;

import android.content.Context;
import com.netease.environment.config.SdkConstants;
import com.netease.environment.config.SdkData;
import com.netease.environment.utils.FileUtils;
import com.netease.environment.utils.LogUtils;
import com.netease.environment.utils.RC4Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RegexGetter {
    private static String TAG = RegexGetter.class.getSimpleName();
    private static Map<String, Pattern> sInterceptPatternMap;
    private static Map<String, Pattern> sNicknamePatternMap;
    private static Map<String, Pattern> sShieldPatternMap;

    public static Map<String, Pattern> getNicknamePatternMap(Context context) throws Exception {
        if (sNicknamePatternMap == null) {
            return getPatternMap(context, "nickname");
        }
        LogUtils.info(TAG, "get nickname pattern list from memory");
        return sNicknamePatternMap;
    }

    public static Map<String, Pattern> getShieldPatternMap(Context context) throws Exception {
        if (sShieldPatternMap == null) {
            return getPatternMap(context, "shield");
        }
        LogUtils.info(TAG, "get shield pattern list from memory");
        return sShieldPatternMap;
    }

    public static Map<String, Pattern> getInterceptPatternMap(Context context) throws Exception {
        if (sInterceptPatternMap == null) {
            return getPatternMap(context, "intercept");
        }
        LogUtils.info(TAG, "get intercept pattern list from memory");
        return sInterceptPatternMap;
    }

    private static Map<String, Pattern> getPatternMap(Context context, String name) throws Exception {
        JSONObject regexObject = getRegexObject(context);
        return getPatternMap(regexObject, name);
    }

    private static Map<String, Pattern> getPatternMap(JSONObject regexObject, String name) throws Exception {
        Map<String, Pattern> patternMap = new HashMap<>();
        JSONObject nicknameObject = regexObject.optJSONObject(name);
        Iterator<String> iterator = nicknameObject.keys();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String regular = nicknameObject.optString(key);
            Pattern pattern = null;
            try {
                pattern = Pattern.compile(regular, 2);
            } catch (Exception e) {
                LogUtils.info(TAG, "regex compile error : " + e.getMessage());
                LogUtils.info(TAG, "fail to compile pattern of : " + regular);
            }
            if (pattern != null) {
                patternMap.put(key, pattern);
            }
        }
        LogUtils.info(TAG, "get " + name + " pattern list from file");
        return patternMap;
    }

    public static void setPatternMap(JSONObject regexObject) {
        try {
            LogUtils.info(TAG, "set pattern list with json object");
            sNicknamePatternMap = getPatternMap(regexObject, "nickname");
            sShieldPatternMap = getPatternMap(regexObject, "shield");
            sInterceptPatternMap = getPatternMap(regexObject, "intercept");
        } catch (Exception e) {
            LogUtils.info(TAG, "fail to save pattern list on memory : " + e.getMessage());
        }
    }

    public static void setPatternMap(Context context) {
        try {
            LogUtils.info(TAG, "set pattern list with file");
            JSONObject regexObject = getRegexObject(context);
            sNicknamePatternMap = getPatternMap(regexObject, "nickname");
            sShieldPatternMap = getPatternMap(regexObject, "shield");
            sInterceptPatternMap = getPatternMap(regexObject, "intercept");
        } catch (Exception e) {
            LogUtils.info(TAG, "fail to save pattern list on memory : " + e.getMessage());
        }
    }

    public static JSONObject getRegexObject(Context context) throws Exception {
        String jsonString = FileUtils.readFile(FileUtils.getRegexFilePath(context));
        JSONObject jsonObject = null;
        try {
            JSONObject jsonObject2 = new JSONObject(RC4Utils.decryptData(jsonString, SdkData.getRC4Key()));
            jsonObject = jsonObject2;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (jsonObject == null) {
            LogUtils.info(TAG, "use default regex data");
            DefaultRegex defaultRegex = new DefaultRegex();
            jsonObject = defaultRegex.getRegexObject();
        }
        return jsonObject.optJSONObject(SdkConstants.JSON_KEY_REGEX);
    }
}
