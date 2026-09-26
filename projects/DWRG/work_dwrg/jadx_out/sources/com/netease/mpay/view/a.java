package com.netease.mpay.view;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class a extends LayerDrawable {
    protected ColorFilter a;

    public a(Drawable drawable) {
        super(new Drawable[]{drawable});
        this.a = new PorterDuffColorFilter(1999844147, PorterDuff.Mode.SRC_ATOP);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z = false;
        for (int i : iArr) {
            if (i == 16842919) {
                z = true;
            }
        }
        mutate();
        if (z) {
            setColorFilter(this.a);
        } else {
            setColorFilter(null);
        }
        invalidateSelf();
        return super.onStateChange(iArr);
    }
}
