package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.sdk.util.m;

/* loaded from: classes.dex */
public class e {
    public static final String b = "failed";
    public Activity a;
    private IAlixPay c;
    private boolean e;
    private a f;
    private final Object d = IAlixPay.class;
    private ServiceConnection g = new f(this);
    private IRemoteServiceCallback h = new g(this);

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public e(Activity activity, a aVar) {
        this.a = activity;
        this.f = aVar;
    }

    public final String a(String str) {
        m.a a2;
        try {
            a2 = m.a(this.a);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.C, th);
        }
        if (a2.a()) {
            return b;
        }
        if (a2 != null && a2.b > 78) {
            String a3 = m.a();
            Intent intent = new Intent();
            intent.setClassName(a3, "com.alipay.android.app.TransProcessPayActivity");
            this.a.startActivity(intent);
            Thread.sleep(200L);
        }
        return b(str);
    }

    private void a(m.a aVar) throws InterruptedException {
        if (aVar != null && aVar.b > 78) {
            String a2 = m.a();
            Intent intent = new Intent();
            intent.setClassName(a2, "com.alipay.android.app.TransProcessPayActivity");
            this.a.startActivity(intent);
            Thread.sleep(200L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String b(String str) {
        Intent intent = new Intent();
        String a2 = m.a();
        intent.setPackage(a2);
        intent.setAction(a2 + ".IAlixPay");
        String h = m.h(this.a);
        try {
            if (!this.a.getApplicationContext().bindService(intent, this.g, 1)) {
                throw new Throwable("bindService fail");
            }
            synchronized (this.d) {
                if (this.c == null) {
                    try {
                        this.d.wait(com.alipay.sdk.data.a.b().a());
                    } catch (InterruptedException e) {
                        com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.A, e);
                    }
                }
                try {
                } finally {
                }
            }
            try {
                if (this.c == null) {
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.u, h + "|" + m.h(this.a) + "|" + m.i(this.a));
                    try {
                        this.c.unregisterCallback(this.h);
                    } catch (Throwable th) {
                    }
                    try {
                        this.a.getApplicationContext().unbindService(this.g);
                    } catch (Throwable th2) {
                    }
                    this.f = null;
                    this.h = null;
                    this.g = null;
                    this.c = null;
                    if (!this.e || this.a == null) {
                        return b;
                    }
                    this.a.setRequestedOrientation(0);
                    this.e = false;
                    return b;
                }
                if (this.f != null) {
                    this.f.a();
                }
                if (this.a.getRequestedOrientation() == 0) {
                    this.a.setRequestedOrientation(1);
                    this.e = true;
                }
                this.c.registerCallback(this.h);
                String Pay = this.c.Pay(str);
                try {
                    this.c.unregisterCallback(this.h);
                } catch (Throwable th3) {
                }
                try {
                    this.a.getApplicationContext().unbindService(this.g);
                } catch (Throwable th4) {
                }
                this.f = null;
                this.h = null;
                this.g = null;
                this.c = null;
                if (!this.e || this.a == null) {
                    return Pay;
                }
                this.a.setRequestedOrientation(0);
                this.e = false;
                return Pay;
            } catch (Throwable th5) {
                com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.x, th5);
                String a3 = com.alipay.sdk.app.i.a();
                try {
                    this.c.unregisterCallback(this.h);
                } catch (Throwable th6) {
                }
                try {
                    this.a.getApplicationContext().unbindService(this.g);
                } catch (Throwable th7) {
                }
                this.f = null;
                this.h = null;
                this.g = null;
                this.c = null;
                if (!this.e || this.a == null) {
                    return a3;
                }
                this.a.setRequestedOrientation(0);
                this.e = false;
                return a3;
            }
        } catch (Throwable th8) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.z, th8);
            return b;
        }
    }

    private void a() {
        this.a = null;
    }
}
