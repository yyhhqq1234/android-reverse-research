package com.netease.mpay.server.response;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class r extends n {
    String b;
    String c;
    public long d;
    public long e;
    public boolean f;
    public boolean g;
    public String h;

    /* JADX INFO: Access modifiers changed from: protected */
    public r(int i) {
        super(i);
        this.b = null;
        this.c = null;
        this.d = 604800L;
        this.e = 604800L;
        this.f = true;
        this.g = true;
        this.h = "";
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public r(@NonNull int i, @Nullable String str, @Nullable String str2, @NonNull long j, @NonNull long j2, @NonNull boolean z, @NonNull boolean z2, @Nullable String str3) {
        super(i);
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = z;
        this.g = z2;
        this.h = str3;
    }

    public Drawable a(Context context, String str) {
        return a(context, str, t.a(context, this.a).g, this.c, RIdentifier.e.ay);
    }

    public void a(Activity activity, String str, ImageView imageView) {
        a(activity, str, imageView, t.a(activity, this.a).f, this.b, RIdentifier.e.ap, false);
    }

    public Drawable b(Context context, String str) {
        return a(context, str, t.a(context, this.a).f, this.b, RIdentifier.e.ap);
    }

    public void c(Context context, String str) {
        a(context, str, this.c);
        a(context, str, this.b);
    }
}
