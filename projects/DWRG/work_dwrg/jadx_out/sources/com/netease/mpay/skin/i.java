package com.netease.mpay.skin;

import android.text.TextUtils;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class i extends d {
    public i() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.skin.d
    public void a(View view) {
        if (!ResIdReader.RES_TYPE_COLOR.equals(this.d) || view == null) {
            return;
        }
        a(view, SkinManager.getInstance().b(this.b), this.a);
    }

    public void a(View view, int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.trim().equals("textColor")) {
            h.a(view, i);
        } else if (str.trim().equals("textColorHint")) {
            h.b(view, i);
        }
    }
}
