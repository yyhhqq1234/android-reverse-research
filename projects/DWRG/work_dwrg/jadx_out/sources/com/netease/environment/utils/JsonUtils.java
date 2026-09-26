package com.netease.environment.utils;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonUtils {
    public static final String KEY_CODE = "code";
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_REGULAR_ID = "regularId";

    public static String getResultJsonString(int code, String message, String regularId) {
        JSONObject object = new JSONObject();
        try {
            object.put("code", code);
            object.put("message", message);
            object.put(KEY_REGULAR_ID, regularId);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return object.toString();
    }

    public static boolean isJSONObjectFormat(String content) {
        if (content == null || content.isEmpty()) {
            return false;
        }
        try {
            new JSONObject(content);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
