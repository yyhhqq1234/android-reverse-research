package com.netease.mpay.server.response;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class n {
    public int a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        @Nullable
        Drawable a;

        @NonNull
        boolean b;

        a(Drawable drawable, boolean z) {
            this.a = drawable;
            this.b = z;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public n(int i) {
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @NonNull
    private a b(@NonNull Context context, @NonNull String str, @NonNull int i, @Nullable String str2, @NonNull int i2) {
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            if (i <= 0) {
                i = i2;
            }
            return new a(bf.a(resources, i), false);
        }
        Bitmap a2 = j.a.a(context, str, str2);
        if (a2 != null) {
            return new a(new BitmapDrawable(resources, a2), false);
        }
        if (i <= 0) {
            i = i2;
        }
        return new a(bf.a(resources, i), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Drawable a(@NonNull Context context, @NonNull String str, @NonNull int i, @Nullable String str2, @NonNull int i2) {
        return b(context, str, i, str2, i2).a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@NonNull Activity activity, @NonNull String str, @NonNull ImageView imageView, @NonNull int i, @Nullable String str2, @NonNull int i2, @NonNull boolean z) {
        a b = b(activity, str, i, str2, i2);
        if (b.a != null) {
            bf.a(imageView, b.a, z);
        }
        if (!b.b || TextUtils.isEmpty(str2)) {
            return;
        }
        imageView.setTag(str2);
        new Thread(new p(this, activity, str, str2, imageView, z)).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@NonNull Context context, @NonNull String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str2) || j.a.a(context, str, str2) != null) {
            return;
        }
        new Thread(new o(this, context, str, str2)).start();
    }
}
