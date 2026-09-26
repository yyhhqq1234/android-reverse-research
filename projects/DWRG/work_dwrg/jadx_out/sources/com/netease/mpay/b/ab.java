package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.a;
import com.netease.mpay.sharer.ShareContent;

/* loaded from: classes.dex */
public class ab extends a {
    public boolean a;
    public ShareContent b;
    public String c;

    public ab(Intent intent) {
        super(intent);
        int c = c(intent, ak.SHARE_CONTENT_ID);
        this.b = c != -1 ? com.netease.mpay.sharer.d.a(c) : null;
        this.c = b(intent, ak.INVITE_CODE);
        this.a = a(intent, ak.FULLSCREEN);
    }

    public ab(a.C0035a c0035a, boolean z, ShareContent shareContent, String str) {
        super(c0035a);
        this.a = z;
        this.b = shareContent;
        this.c = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        a(bundle, ak.SHARE_CONTENT_ID, com.netease.mpay.sharer.d.a(this.b));
        a(bundle, ak.INVITE_CODE, this.c);
        a(bundle, ak.FULLSCREEN, this.a);
    }
}
