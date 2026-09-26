package com.netease.mpay.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import com.dodola.rocoo.Hack;
import com.netease.codescanner.widget.ViewfinderView;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class QRFinderView extends ViewfinderView {
    public QRFinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private Integer a(Context context, int i) {
        try {
            return Build.VERSION.SDK_INT >= 23 ? Integer.valueOf(context.getColor(i)) : Integer.valueOf(context.getResources().getColor(i));
        } catch (Resources.NotFoundException e) {
            return null;
        }
    }

    @Override // com.netease.codescanner.widget.ViewfinderView
    public int getCornerWidth(Context context) {
        return -1;
    }

    @Override // com.netease.codescanner.widget.ViewfinderView
    public Drawable getLineDrawable(Context context) {
        return bf.a(context.getResources(), RIdentifier.e.e);
    }

    @Override // com.netease.codescanner.widget.ViewfinderView
    public Integer getMaskColor(Context context) {
        return a(context, RIdentifier.c.e);
    }

    @Override // com.netease.codescanner.widget.ViewfinderView
    public Integer getResultColor(Context context) {
        return a(context, RIdentifier.c.c);
    }

    @Override // com.netease.codescanner.widget.ViewfinderView
    public Integer getResultPointColor(Context context) {
        return a(context, RIdentifier.c.e);
    }
}
