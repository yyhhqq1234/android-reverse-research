package com.applovin.impl;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public final class x2 {
    public static final x2 g = new x2(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final Typeface f;

    public static x2 a(CaptioningManager.CaptionStyle captionStyle) {
        return xp.a >= 21 ? c(captionStyle) : b(captionStyle);
    }

    private static x2 b(CaptioningManager.CaptionStyle captionStyle) {
        return new x2(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    public x2(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = typeface;
    }

    private static x2 c(CaptioningManager.CaptionStyle captionStyle) {
        return new x2(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : g.a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : g.b, captionStyle.hasWindowColor() ? captionStyle.windowColor : g.c, captionStyle.hasEdgeType() ? captionStyle.edgeType : g.d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : g.e, captionStyle.getTypeface());
    }
}
