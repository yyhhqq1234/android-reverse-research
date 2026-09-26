package com.netease.mpay.auth;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.alipay.sdk.util.k;
import com.dodola.rocoo.Hack;
import com.netease.mpay.sharer.l;
import com.netease.mpay.widget.bd;
import com.netease.push.utils.PushConstants;
import java.util.Date;

/* loaded from: classes.dex */
public class b {
    private static String a;

    /* loaded from: classes.dex */
    public static class a {
        private static final Long a = 10000000L;
        private Context b;

        public a(Context context) {
            this.b = context;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private String b(String str) {
            return bd.b(bd.a((this.b.getPackageName() + PushConstants.KEY_SEPARATOR + str + PushConstants.KEY_SEPARATOR + b.a()).getBytes()));
        }

        public String a() {
            return b(String.valueOf(new Date().getTime() / a.longValue()));
        }

        public boolean a(String str) {
            if (str == null) {
                return false;
            }
            Long valueOf = Long.valueOf(new Date().getTime() / a.longValue());
            return str.equals(b(String.valueOf(valueOf.longValue() - 1))) || str.equals(b(String.valueOf(valueOf)));
        }
    }

    /* renamed from: com.netease.mpay.auth.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0034b extends Exception {
        private String a;

        public C0034b(String str) {
            this.a = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            return this.a;
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        public static Intent a(int i, String str) {
            Intent intent = new Intent();
            intent.setAction("com.netease.mpay.auth.WeixinAuthBroadCast");
            intent.putExtra(k.c, i);
            intent.putExtra("content", str);
            return intent;
        }

        public static IntentFilter a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.netease.mpay.auth.WeixinAuthBroadCast");
            return intentFilter;
        }

        public static String a(Intent intent) {
            int intExtra = intent.getIntExtra(k.c, 1);
            String stringExtra = intent.getStringExtra("content");
            if (intExtra == 0) {
                return stringExtra;
            }
            throw new C0034b(stringExtra);
        }
    }

    public static String a() {
        return a;
    }

    public static void a(String str) {
        a = str;
    }

    public static boolean a(Context context) {
        return a != null && l.a(context);
    }
}
