package com.netease.mpay.widget.pull2refresh;

import android.view.animation.Interpolator;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class c implements Interpolator {
    final /* synthetic */ a a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        double d = f;
        return (float) (1.0d - (((1.0d - d) * 0.2d) + ((1.0d - Math.pow(1.0d - Math.pow(1.0d - d, 2.0d), 0.5d)) * (1.0d - 0.2d))));
    }
}
