package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class aj extends k {
    public String a;
    public String b;

    public aj(Intent intent) {
        super(intent);
        this.a = b(intent, ak.WEIBO_APP_KEY);
        this.b = b(intent, ak.WEIBO_REDIRECT_URL);
    }

    public aj(a.C0035a c0035a, String str, String str2, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.WEIBO_APP_KEY, this.a);
        a(bundle, ak.WEIBO_REDIRECT_URL, this.b);
    }
}
