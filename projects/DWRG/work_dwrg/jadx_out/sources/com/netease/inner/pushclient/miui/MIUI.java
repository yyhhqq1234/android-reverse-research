package com.netease.inner.pushclient.miui;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.netease.inner.pushclient.PushManager;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushConstants;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MIUI {
    private static final String TAG = "NGPush_" + MIUI.class.getSimpleName();
    private static MIUI s_inst = new MIUI();
    String m_appid = "";
    String m_appkey = "";
    private Context m_ctx;
    String m_regid;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static MIUI getInst() {
        return s_inst;
    }

    public void init(Context ctx) {
        Log.i(TAG, "init");
        this.m_ctx = ctx;
        this.m_appid = PushManager.getInstance().getAppID(ctx, PushConstants.MIUI);
        this.m_appkey = PushManager.getInstance().getAppKey(ctx, PushConstants.MIUI);
        if (TextUtils.isEmpty(this.m_appid)) {
            Log.e(TAG, "AppID is empty");
            return;
        }
        if (TextUtils.isEmpty(this.m_appkey)) {
            Log.e(TAG, "AppKey is empty");
            return;
        }
        try {
            Class<?> clazz = Class.forName("com.netease.inner.pushclient.miui.MiuiPushClient");
            Method method = clazz.getMethod("registerPush", Context.class, String.class, String.class);
            method.invoke(null, this.m_ctx, this.m_appid, this.m_appkey);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "MiPush_SDK_Client jars not found");
        }
    }
}
