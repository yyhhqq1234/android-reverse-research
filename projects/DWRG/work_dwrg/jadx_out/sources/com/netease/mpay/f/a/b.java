package com.netease.mpay.f.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;

/* loaded from: classes.dex */
public interface b {

    /* loaded from: classes.dex */
    public enum a {
        ERR_RETRY,
        ERR_LOGOUT,
        ERR_BIND_ACCOUNT_EXIST,
        ERR_WEB_VERIFY,
        ERR_SMS_VERIFY,
        ERR_SET_PASS,
        ERR_PASS_VERIFY,
        ERR_FORCE_SMS_LOGIN,
        ERR_DEFAULT;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public static a a(a.EnumC0044a enumC0044a) {
            switch (c.b[enumC0044a.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    return ERR_LOGOUT;
                case 4:
                    return ERR_BIND_ACCOUNT_EXIST;
                case 5:
                case 6:
                    return ERR_RETRY;
                case 7:
                    return ERR_WEB_VERIFY;
                case 8:
                    return ERR_SMS_VERIFY;
                case 9:
                    return ERR_SET_PASS;
                case 10:
                    return ERR_PASS_VERIFY;
                case 11:
                    return ERR_FORCE_SMS_LOGIN;
                default:
                    return ERR_DEFAULT;
            }
        }

        public static a a(com.netease.mpay.server.a aVar) {
            a.EnumC0044a a = com.netease.mpay.f.a.a.a(aVar);
            if (a != null) {
                return a(a);
            }
            return null;
        }

        public boolean a() {
            switch (c.a[ordinal()]) {
                case 1:
                    return true;
                default:
                    return false;
            }
        }
    }

    void a(a aVar, String str);

    void a(Object obj);
}
