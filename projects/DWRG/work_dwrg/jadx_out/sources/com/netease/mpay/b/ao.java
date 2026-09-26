package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ao extends al {
    public boolean b;
    public String c;
    public String d;
    public String e;
    public int f;
    public String g;
    public String h;
    public String i;
    public String j;
    public boolean k;
    public int l;

    /* JADX INFO: Access modifiers changed from: protected */
    public ao(Intent intent) {
        this(a.b(intent, ak.RESULT_DEV_ID), a.b(intent, ak.RESULT_UID), a.b(intent, ak.RESULT_TOKEN), a.c(intent, ak.RESULT_LOGIN_TYPE), a.b(intent, ak.RESULT_BIND_UID), a.b(intent, ak.RESULT_CLIENT_USERNAME), a.b(intent, ak.RESULT_NICKNAME), a.b(intent, ak.RESULT_AVATAR_URL), a.a(intent, ak.RESULT_REALNAME_SET), a.c(intent, ak.RESULT_MOBILE_BIND_STATUS), a.a(intent, ak.RESULT_IS_USED));
    }

    public ao(String str, com.netease.mpay.e.b.o oVar) {
        this(str, oVar.c, oVar.d, oVar.f, oVar.e, oVar.a, oVar.h, oVar.i, oVar.j, oVar.k, false);
    }

    public ao(String str, com.netease.mpay.server.response.m mVar) {
        this(str, mVar.b, mVar.a, mVar.c, mVar.d, mVar.i, mVar.e, mVar.f, mVar.g, mVar.h, false);
    }

    private ao(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, boolean z, int i2, boolean z2) {
        super(1002);
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = i;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = str7;
        this.k = z;
        this.l = i2;
        this.b = z2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public ao a() {
        this.b = true;
        return this;
    }

    @Override // com.netease.mpay.b.al
    void a(Bundle bundle) {
        a.a(bundle, ak.RESULT_DEV_ID, this.c);
        a.a(bundle, ak.RESULT_UID, this.d);
        a.a(bundle, ak.RESULT_TOKEN, this.e);
        a.a(bundle, ak.RESULT_LOGIN_TYPE, this.f);
        a.a(bundle, ak.RESULT_BIND_UID, this.g);
        a.a(bundle, ak.RESULT_CLIENT_USERNAME, this.h);
        a.a(bundle, ak.RESULT_NICKNAME, this.i);
        a.a(bundle, ak.RESULT_AVATAR_URL, this.j);
        a.a(bundle, ak.RESULT_REALNAME_SET, this.k);
        a.a(bundle, ak.RESULT_MOBILE_BIND_STATUS, this.l);
        a.a(bundle, ak.RESULT_IS_USED, this.b);
    }
}
