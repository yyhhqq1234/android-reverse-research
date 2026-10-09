package com.applovin.impl;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class u6 extends cc {
    private final v6 n;
    private final Context o;

    private SpannedString q() {
        return new SpannedString("Displayed " + yp.a(this.n.b(), true));
    }

    private SpannedString r() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.n.c());
        spannableStringBuilder.append((CharSequence) " - ");
        spannableStringBuilder.append((CharSequence) this.n.d());
        return new SpannedString(spannableStringBuilder);
    }

    @Override // com.applovin.impl.cc
    public int e() {
        return t3.a(R.color.applovin_sdk_disclosureButtonColor, this.o);
    }

    @Override // com.applovin.impl.cc
    public boolean o() {
        return true;
    }

    public u6(v6 v6Var, Context context) {
        super(cc.c.DETAIL);
        this.n = v6Var;
        this.o = context;
        this.c = r();
        this.d = q();
    }

    @Override // com.applovin.impl.cc
    public int d() {
        return o() ? R.drawable.applovin_ic_disclosure_arrow : super.h();
    }
}
