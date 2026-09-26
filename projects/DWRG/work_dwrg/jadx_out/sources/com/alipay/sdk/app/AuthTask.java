package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.e;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.m;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AuthTask {
    static final Object a = com.alipay.sdk.util.e.class;
    private static final int b = 73;
    private Activity c;
    private com.alipay.sdk.widget.a d;

    public AuthTask(Activity activity) {
        this.c = activity;
        com.alipay.sdk.sys.b a2 = com.alipay.sdk.sys.b.a();
        Activity activity2 = this.c;
        com.alipay.sdk.data.c.a();
        a2.a(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.d = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.c);
    }

    private e.a a() {
        return new a(this);
    }

    private void b() {
        if (this.d != null) {
            this.d.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.d != null) {
            this.d.b();
        }
    }

    public synchronized Map<String, String> authV2(String str, boolean z) {
        return k.a(auth(str, z));
    }

    public synchronized String auth(String str, boolean z) {
        String str2;
        Activity activity;
        String a2;
        if (z) {
            b();
        }
        com.alipay.sdk.sys.b a3 = com.alipay.sdk.sys.b.a();
        Activity activity2 = this.c;
        com.alipay.sdk.data.c.a();
        a3.a(activity2);
        String a4 = i.a();
        try {
            activity = this.c;
            a2 = new com.alipay.sdk.sys.a(this.c).a(str);
        } catch (Exception e) {
            com.alipay.sdk.data.a.b().a(this.c);
            c();
            com.alipay.sdk.app.statistic.a.a(this.c, str);
            str2 = a4;
        } catch (Throwable th) {
            com.alipay.sdk.data.a.b().a(this.c);
            c();
            com.alipay.sdk.app.statistic.a.a(this.c, str);
            throw th;
        }
        if (a(activity)) {
            str2 = new com.alipay.sdk.util.e(activity, new a(this)).a(a2);
            if (!TextUtils.equals(str2, com.alipay.sdk.util.e.b)) {
                if (TextUtils.isEmpty(str2)) {
                    str2 = i.a();
                }
                com.alipay.sdk.data.a.b().a(this.c);
                c();
                com.alipay.sdk.app.statistic.a.a(this.c, str);
            }
        }
        str2 = b(activity, a2);
        com.alipay.sdk.data.a.b().a(this.c);
        c();
        com.alipay.sdk.app.statistic.a.a(this.c, str);
        return str2;
    }

    private String a(Activity activity, String str) {
        String a2 = new com.alipay.sdk.sys.a(this.c).a(str);
        if (a(activity)) {
            String a3 = new com.alipay.sdk.util.e(activity, new a(this)).a(a2);
            if (TextUtils.equals(a3, com.alipay.sdk.util.e.b)) {
                return b(activity, a2);
            }
            if (TextUtils.isEmpty(a3)) {
                return i.a();
            }
            return a3;
        }
        return b(activity, a2);
    }

    private String b(Activity activity, String str) {
        j jVar;
        b();
        try {
            try {
                try {
                    List<com.alipay.sdk.protocol.b> a2 = com.alipay.sdk.protocol.b.a(new com.alipay.sdk.packet.impl.a().a(activity, str).a().optJSONObject(com.alipay.sdk.cons.c.c).optJSONObject(com.alipay.sdk.cons.c.d));
                    c();
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= a2.size()) {
                            c();
                            jVar = null;
                            break;
                        }
                        if (a2.get(i2).a == com.alipay.sdk.protocol.a.WapPay) {
                            return a(a2.get(i2));
                        }
                        i = i2 + 1;
                    }
                } catch (IOException e) {
                    j a3 = j.a(j.NETWORK_ERROR.h);
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.a, e);
                    c();
                    jVar = a3;
                }
            } catch (Throwable th) {
                com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.s, th);
                c();
                jVar = null;
            }
            if (jVar == null) {
                jVar = j.a(j.FAILED.h);
            }
            return i.a(jVar.h, jVar.i, "");
        } finally {
            c();
        }
    }

    private static boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(m.a(), 128);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 73;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private String a(com.alipay.sdk.protocol.b bVar) {
        String a2;
        String[] strArr = bVar.b;
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        Intent intent = new Intent(this.c, (Class<?>) H5AuthActivity.class);
        intent.putExtras(bundle);
        this.c.startActivity(intent);
        synchronized (a) {
            try {
                a.wait();
            } catch (InterruptedException e) {
                a2 = i.a();
            }
        }
        a2 = i.a;
        if (TextUtils.isEmpty(a2)) {
            a2 = i.a();
        }
        return a2;
    }
}
