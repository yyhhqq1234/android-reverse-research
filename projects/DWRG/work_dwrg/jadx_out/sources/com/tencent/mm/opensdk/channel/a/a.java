package com.tencent.mm.opensdk.channel.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.tencent.mm.opensdk.utils.Log;
import com.tencent.mm.opensdk.utils.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: com.tencent.mm.opensdk.channel.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0068a {
        public String a;
        public String action;
        public long b;
        public Bundle bundle;
        public String content;
    }

    public static boolean a(Context context, C0068a c0068a) {
        if (context == null) {
            Log.e("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        }
        if (d.a(c0068a.action)) {
            Log.e("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        }
        String str = d.a(c0068a.a) ? null : c0068a.a + ".permission.MM_MESSAGE";
        Intent intent = new Intent(c0068a.action);
        if (c0068a.bundle != null) {
            intent.putExtras(c0068a.bundle);
        }
        String packageName = context.getPackageName();
        intent.putExtra(ConstantsAPI.SDK_VERSION, 620757000);
        intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
        intent.putExtra(ConstantsAPI.CONTENT, c0068a.content);
        intent.putExtra(ConstantsAPI.APP_SUPORT_CONTENT_TYPE, c0068a.b);
        intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(c0068a.content, 620757000, packageName));
        context.sendBroadcast(intent, str);
        Log.d("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + str);
        return true;
    }
}
