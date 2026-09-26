package com.netease.epay.sdk.controller;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.ResponseParser;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.util.ErrorCode;
import java.lang.reflect.Constructor;
import java.util.Hashtable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ControllerRouter {
    private static Hashtable<String, Object> controllers = new Hashtable<>();

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0045 -> B:15:0x001f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007c -> B:15:0x001f). Please report as a decompilation issue!!! */
    public static void route(@NonNull String key, @NonNull Context context, JSONObject params, ControllerCallback callback) {
        if (HttpClient.isCallbackNull()) {
            HttpClient.setParseCallback(new ResponseParser());
        }
        String controller = RegisterCenter.getController(key);
        if (TextUtils.isEmpty(controller)) {
            dealError(ErrorCode.ERROR_CODE, ErrorCode.ERROR_KEY, callback);
            return;
        }
        if (callback != null) {
            callback.setKey(key);
        }
        try {
            Constructor<?> constructor = Class.forName(controller).getConstructor(JSONObject.class, ControllerCallback.class);
            if (constructor == null) {
                dealError(ErrorCode.ERROR_CODE, ErrorCode.ERROR_CONSTRUCTOR, callback);
            } else {
                BaseController baseController = (BaseController) constructor.newInstance(params, callback);
                if (baseController != null) {
                    controllers.put(key, baseController);
                    baseController.start(context);
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            dealError(ErrorCode.ERROR_CODE, "操作失败，暂不支持：" + key, callback);
        } catch (Exception e2) {
            e2.printStackTrace();
            dealError(ErrorCode.ERROR_CODE, "操作失败:ControllerRouter:route", callback);
        }
    }

    private static void dealError(String code, String msg, ControllerCallback callback) {
        if (callback == null) {
            ExitUtil.failCallback(code, msg);
        } else {
            callback.sendResult(new ControllerResult(code, msg));
        }
    }

    public static <T> T getController(String str) {
        if (controllers == null) {
            return null;
        }
        return (T) controllers.get(str);
    }

    public static void removeController(String key) {
        if (controllers != null) {
            controllers.remove(key);
        }
    }

    public static void clearAllControllers() {
        controllers.clear();
    }
}
