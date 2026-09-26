package com.netease.mpay.skin;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class c extends d {
    public c() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.skin.d
    public void a(View view) {
        Drawable a;
        if (ResIdReader.RES_TYPE_COLOR.equals(this.d)) {
            if (SkinManager.getInstance().b(this.b) == -1 || view == null) {
                return;
            }
            h.h(view, new ColorDrawable(SkinManager.getInstance().b(this.b)));
            return;
        }
        if (!ResIdReader.RES_TYPE_DRAWABLE.equals(this.d) || (a = SkinManager.getInstance().a(this.b)) == null || view == null) {
            return;
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int paddingRight = view.getPaddingRight();
        int paddingBottom = view.getPaddingBottom();
        h.h(view, a);
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }
}
