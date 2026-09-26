package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.server.response.urslogin.EmailRelatedMobile;

/* loaded from: classes.dex */
public class af extends k {
    public String a;
    public String b;
    public EmailRelatedMobile c;

    public af(Intent intent) {
        super(intent);
        this.a = b(intent, ak.PREFER_ACCOUNT);
        this.b = b(intent, ak.GUIDE_TEXT);
        this.c = (EmailRelatedMobile) f(intent, ak.RELATED_MOBILE);
    }

    public af(a.C0035a c0035a, String str, String str2, EmailRelatedMobile emailRelatedMobile, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = str;
        this.b = str2;
        this.c = emailRelatedMobile;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.PREFER_ACCOUNT, this.a);
        a(bundle, ak.GUIDE_TEXT, this.b);
        a(bundle, ak.RELATED_MOBILE, this.c);
    }
}
