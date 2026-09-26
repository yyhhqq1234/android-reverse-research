package com.netease.mpay.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class TintIconView extends View {
    public TintIconView(Context context) {
        super(context);
        a();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public TintIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public TintIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        if (isInEditMode()) {
            return;
        }
        a(RIdentifier.e.i, RIdentifier.e.g);
    }

    private void a(Drawable drawable, ColorStateList colorStateList) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        Drawable wrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTintList(wrap, colorStateList);
        setBackgroundDrawable(wrap);
    }

    public void a(int i, int i2) {
        a(getContext().getResources().getDrawable(i), i2);
    }

    public void a(Drawable drawable, int i) {
        a(drawable, getContext().getResources().getColorStateList(i));
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
