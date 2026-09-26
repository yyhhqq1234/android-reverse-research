package com.netease.mpay.widget.a;

import com.dodola.rocoo.Hack;
import java.io.Serializable;

/* loaded from: classes.dex */
public class a implements f, Serializable {
    private final String a;
    private final String b;

    public a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.a.f
    public String a() {
        return this.a;
    }

    @Override // com.netease.mpay.widget.a.f
    public String b() {
        return this.b;
    }
}
