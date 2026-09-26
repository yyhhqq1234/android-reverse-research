package com.netease.mpay.f.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.server.a;

/* loaded from: classes.dex */
public class a {

    /* renamed from: com.netease.mpay.f.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0044a {
        LOGIN_EXPIRED,
        BIND_ACCOUNT_EXIST,
        NETWORK_ERROR,
        RETRY_ERROR,
        WEB_VERIFY_FAILED,
        MOBILE_LOCKED,
        MOBILE_FROZEN,
        SET_PASS,
        SMS_VERIFY,
        PASS_VERIFY,
        FORCE_SMS_LOGIN,
        OTHER;

        EnumC0044a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        public boolean a;
        public Object b;
        public EnumC0044a c;
        public String d;
        public Object e;

        public b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public b a(EnumC0044a enumC0044a, String str, Object obj) {
            this.a = false;
            this.c = enumC0044a;
            this.d = str;
            this.e = obj;
            return this;
        }

        public b a(Object obj) {
            this.a = true;
            this.b = obj;
            return this;
        }

        public b a(String str, Object obj) {
            return a(EnumC0044a.OTHER, str, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnumC0044a a(com.netease.mpay.server.a aVar) {
        if (aVar instanceof a.i) {
            return EnumC0044a.NETWORK_ERROR;
        }
        if (aVar instanceof a.k) {
            return EnumC0044a.RETRY_ERROR;
        }
        if (aVar instanceof a.o) {
            return EnumC0044a.WEB_VERIFY_FAILED;
        }
        if (aVar instanceof a.g) {
            return EnumC0044a.MOBILE_FROZEN;
        }
        if (aVar instanceof a.h) {
            return EnumC0044a.MOBILE_LOCKED;
        }
        if (aVar instanceof a.d) {
            return EnumC0044a.SMS_VERIFY;
        }
        if (aVar instanceof a.c) {
            return EnumC0044a.SET_PASS;
        }
        if (aVar instanceof a.e) {
            return EnumC0044a.FORCE_SMS_LOGIN;
        }
        if (!(aVar instanceof a.f) && !(aVar instanceof a.b)) {
            if ((aVar instanceof a.m) || (aVar instanceof a.l)) {
                return EnumC0044a.LOGIN_EXPIRED;
            }
            if (aVar instanceof a.C0047a) {
                return EnumC0044a.BIND_ACCOUNT_EXIST;
            }
            if (aVar instanceof a.j) {
                return EnumC0044a.PASS_VERIFY;
            }
            return null;
        }
        return EnumC0044a.LOGIN_EXPIRED;
    }
}
