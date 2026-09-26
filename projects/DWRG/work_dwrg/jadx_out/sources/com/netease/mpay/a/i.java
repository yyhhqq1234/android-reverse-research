package com.netease.mpay.a;

import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class i implements ResultCallback {
    final /* synthetic */ b.a a;
    final /* synthetic */ String b;
    final /* synthetic */ h c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar, b.a aVar, String str) {
        this.c = hVar;
        this.a = aVar;
        this.b = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResult(@NonNull Status status) {
        this.c.a.a(this.a, this.b);
    }
}
