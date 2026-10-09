package com.applovin.impl;

import android.text.SpannedString;

/* JADX INFO: loaded from: classes.dex */
public class fj extends cc {
    public String toString() {
        return "SectionListItemViewModel{text=" + ((Object) this.c) + "}";
    }

    public fj(String str) {
        super(cc.c.SECTION);
        this.c = new SpannedString(str);
    }
}
