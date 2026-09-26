package com.netease.mpay.server.response;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ak;
import java.io.Serializable;

/* loaded from: classes.dex */
public class aa extends ac implements Serializable {
    public String a;
    public a b;
    public String c;
    public b d = null;
    public String e;
    public String f;

    /* loaded from: classes.dex */
    public enum a {
        QRCODE_UNKNOWN(-1),
        QRCODE_LOGIN(1),
        QRCODE_PAY(2);

        private int d;

        a(int i) {
            this.d = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public static a a(int i) {
            switch (i) {
                case 1:
                    return QRCODE_LOGIN;
                case 2:
                    return QRCODE_PAY;
                default:
                    return QRCODE_UNKNOWN;
            }
        }

        public int a() {
            return this.d;
        }
    }

    /* loaded from: classes.dex */
    public class b implements Serializable {
        public String a;
        public int b;
        public String c;

        public b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public aa() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static aa a(Intent intent) {
        aa aaVar = new aa();
        aaVar.a = com.netease.mpay.b.a.b(intent, ak.QR_CODE_UUID);
        aaVar.b = a.a(com.netease.mpay.b.a.c(intent, ak.QR_CODE_ACTION));
        aaVar.c = com.netease.mpay.b.a.b(intent, ak.QR_CODE_GAME_NAME);
        aaVar.f = com.netease.mpay.b.a.b(intent, ak.QR_CODE_CHANNEL_NAME);
        String b2 = com.netease.mpay.b.a.b(intent, ak.QR_CODE_USER_UID);
        int c = com.netease.mpay.b.a.c(intent, ak.QR_CODE_USER_LOGIN_TYPE);
        String b3 = com.netease.mpay.b.a.b(intent, ak.QR_CODE_USER_ACCOUNT);
        if (b2 == null || c == -1) {
            aaVar.d = null;
        } else {
            aaVar.getClass();
            b bVar = new b();
            bVar.c = b3;
            bVar.a = b2;
            bVar.b = c;
            aaVar.d = bVar;
        }
        aaVar.e = com.netease.mpay.b.a.b(intent, ak.QR_CODE_ORDER_ID);
        return aaVar;
    }

    public void a(@NonNull Bundle bundle) {
        com.netease.mpay.b.a.a(bundle, ak.QR_CODE_UUID, this.a);
        com.netease.mpay.b.a.a(bundle, ak.QR_CODE_ACTION, this.b.a());
        com.netease.mpay.b.a.a(bundle, ak.QR_CODE_GAME_NAME, this.c);
        com.netease.mpay.b.a.a(bundle, ak.QR_CODE_CHANNEL_NAME, this.f);
        if (this.d != null) {
            com.netease.mpay.b.a.a(bundle, ak.QR_CODE_USER_UID, this.d.a);
            com.netease.mpay.b.a.a(bundle, ak.QR_CODE_USER_LOGIN_TYPE, this.d.b);
            com.netease.mpay.b.a.a(bundle, ak.QR_CODE_USER_ACCOUNT, this.d.c);
        }
        com.netease.mpay.b.a.a(bundle, ak.QR_CODE_ORDER_ID, this.e);
    }
}
