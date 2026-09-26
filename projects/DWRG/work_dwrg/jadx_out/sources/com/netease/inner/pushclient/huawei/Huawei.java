package com.netease.inner.pushclient.huawei;

import android.content.Context;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class Huawei {
    private static final String TAG = "NGPush_" + Huawei.class.getSimpleName();
    private static Huawei s_inst = new Huawei();
    private Context m_ctx;
    String m_regid;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static Huawei getInst() {
        return s_inst;
    }

    public void init(Context ctx) {
        Log.i(TAG, "init");
        this.m_ctx = ctx;
        try {
            Class<?> clazz = Class.forName("com.netease.inner.pushclient.huawei.HuaweiPushClient");
            Method method = clazz.getMethod("registerPush", Context.class);
            method.invoke(null, this.m_ctx);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "huawei push jars(hmssdk-product-support.jar) not found");
        }
    }
}
