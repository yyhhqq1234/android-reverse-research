package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import com.applovin.impl.a5;
import com.applovin.impl.af;
import com.applovin.impl.fo;
import com.applovin.impl.nh;
import com.applovin.impl.ph;
import com.applovin.impl.po;
import com.applovin.impl.q6;
import com.applovin.impl.qh;
import com.applovin.impl.sd;
import com.applovin.impl.to;
import com.applovin.impl.ud;
import com.applovin.impl.x2;
import com.applovin.impl.xp;
import com.applovin.impl.xq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends FrameLayout implements qh.e {
    private List a;
    private x2 b;
    private int c;
    private float d;
    private float f;
    private boolean g;
    private boolean h;
    private int i;
    private a j;
    private View k;

    interface a {
        void a(List list, x2 x2Var, float f, int i, float f2);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private void e() {
        this.j.a(getCuesWithStylingPreferencesApplied(), this.b, this.d, this.c, this.f);
    }

    private List<a5> getCuesWithStylingPreferencesApplied() {
        if (this.g && this.h) {
            return this.a;
        }
        ArrayList arrayList = new ArrayList(this.a.size());
        for (int i = 0; i < this.a.size(); i++) {
            arrayList.add(a((a5) this.a.get(i)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (xp.a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private x2 getUserCaptionStyle() {
        if (xp.a < 19 || isInEditMode()) {
            return x2.g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? x2.g : x2.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t) {
        removeView(this.k);
        View view = this.k;
        if (view instanceof j) {
            ((j) view).a();
        }
        this.k = t;
        this.j = t;
        addView(t);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a() {
        qh.e.CC.$default$a(this);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(float f) {
        qh.e.CC.$default$a(this, f);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(int i) {
        qh.e.CC.$default$a((qh.e) this, i);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(int i, int i2) {
        qh.e.CC.$default$a(this, i, i2);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(af afVar) {
        qh.e.CC.$default$a(this, afVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(fo foVar, int i) {
        qh.e.CC.$default$a(this, foVar, i);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(nh nhVar) {
        qh.e.CC.$default$a(this, nhVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(ph phVar) {
        qh.e.CC.$default$a(this, phVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(po poVar, to toVar) {
        qh.e.CC.$default$a(this, poVar, toVar);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(q6 q6Var) {
        qh.e.CC.$default$a(this, q6Var);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(qh.b bVar) {
        qh.e.CC.$default$a(this, bVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(qh.f fVar, qh.f fVar2, int i) {
        qh.e.CC.$default$a(this, fVar, fVar2, i);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(qh qhVar, qh.d dVar) {
        qh.e.CC.$default$a(this, qhVar, dVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(sd sdVar, int i) {
        qh.e.CC.$default$a(this, sdVar, i);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(ud udVar) {
        qh.e.CC.$default$a(this, udVar);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(xq xqVar) {
        qh.e.CC.$default$a(this, xqVar);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(boolean z) {
        qh.e.CC.$default$a(this, z);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(boolean z, int i) {
        qh.e.CC.$default$a(this, z, i);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void b() {
        qh.c.CC.$default$b(this);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void b(int i) {
        qh.e.CC.$default$b(this, i);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void b(int i, boolean z) {
        qh.e.CC.$default$b(this, i, z);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void b(nh nhVar) {
        qh.e.CC.$default$b(this, nhVar);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void b(boolean z) {
        qh.e.CC.$default$b(this, z);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void b(boolean z, int i) {
        qh.c.CC.$default$b(this, z, i);
    }

    public void c() {
        setStyle(getUserCaptionStyle());
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void c(int i) {
        qh.e.CC.$default$c(this, i);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void c(boolean z) {
        qh.e.CC.$default$c(this, z);
    }

    public void d() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void d(boolean z) {
        qh.e.CC.$default$d(this, z);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void e(int i) {
        qh.c.CC.$default$e(this, i);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void e(boolean z) {
        qh.c.CC.$default$e(this, z);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.h = z;
        e();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.g = z;
        e();
    }

    public void setBottomPaddingFraction(float f) {
        this.f = f;
        e();
    }

    public void setCues(List<a5> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.a = list;
        e();
    }

    public void setFractionalTextSize(float f) {
        a(f, false);
    }

    public void setViewType(int i) {
        if (this.i == i) {
            return;
        }
        if (i == 1) {
            setView(new com.applovin.exoplayer2.ui.a(getContext()));
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            setView(new j(getContext()));
        }
        this.i = i;
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = Collections.emptyList();
        this.b = x2.g;
        this.c = 0;
        this.d = 0.0533f;
        this.f = 0.08f;
        this.g = true;
        this.h = true;
        com.applovin.exoplayer2.ui.a aVar = new com.applovin.exoplayer2.ui.a(context);
        this.j = aVar;
        this.k = aVar;
        addView(aVar);
        this.i = 1;
    }

    public void setStyle(x2 x2Var) {
        this.b = x2Var;
        e();
    }

    private a5 a(a5 a5Var) {
        a5.b bVarA = a5Var.a();
        if (!this.g) {
            h.a(bVarA);
        } else if (!this.h) {
            h.b(bVarA);
        }
        return bVarA.a();
    }

    @Override // com.applovin.impl.qh.e
    public void a(List list) {
        setCues(list);
    }

    public void a(float f, boolean z) {
        a(z ? 1 : 0, f);
    }

    private void a(int i, float f) {
        this.c = i;
        this.d = f;
        e();
    }
}
