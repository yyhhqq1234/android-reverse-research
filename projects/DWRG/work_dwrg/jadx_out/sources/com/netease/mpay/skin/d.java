package com.netease.mpay.skin;

import android.view.View;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public abstract class d {
    public String a;
    public int b;
    public String c;
    public String d;

    public d() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public abstract void a(View view);

    public String toString() {
        return "SkinAttr \n[\nattrName=" + this.a + ", \nattrValueRefId=" + this.b + ", \nattrValueRefName=" + this.c + ", \nattrValueTypeName=" + this.d + "\n]";
    }
}
