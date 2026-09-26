package com.netease.mpay.a;

import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
class g implements ResultCallback {
    final /* synthetic */ f a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResult(@NonNull Status status) {
        this.a.b();
    }
}
