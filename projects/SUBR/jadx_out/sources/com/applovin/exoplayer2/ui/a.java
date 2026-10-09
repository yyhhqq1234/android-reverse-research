package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.impl.a5;
import com.applovin.impl.x2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class a extends View implements SubtitleView.a {
    private final List a;
    private List b;
    private int c;
    private float d;
    private x2 f;
    private float g;

    public a(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List list = this.b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i = paddingBottom - paddingTop;
        float fA = h.a(this.c, this.d, height, i);
        if (fA <= 0.0f) {
            return;
        }
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            a5 a5VarA = (a5) list.get(i2);
            if (a5VarA.q != Integer.MIN_VALUE) {
                a5VarA = a(a5VarA);
            }
            a5 a5Var = a5VarA;
            int i3 = paddingBottom;
            ((g) this.a.get(i2)).a(a5Var, this.f, fA, h.a(a5Var.o, a5Var.p, height, i), this.g, canvas, paddingLeft, paddingTop, width, i3);
            i2++;
            size = size;
            i = i;
            paddingBottom = i3;
            width = width;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new ArrayList();
        this.b = Collections.emptyList();
        this.c = 0;
        this.d = 0.0533f;
        this.f = x2.g;
        this.g = 0.08f;
    }

    private static a5 a(a5 a5Var) {
        a5.b bVarB = a5Var.a().b(-3.4028235E38f).b(Integer.MIN_VALUE).b((Layout.Alignment) null);
        if (a5Var.g == 0) {
            bVarB.a(1.0f - a5Var.f, 0);
        } else {
            bVarB.a((-a5Var.f) - 1.0f, 1);
        }
        int i = a5Var.h;
        if (i == 0) {
            bVarB.a(2);
        } else if (i == 2) {
            bVarB.a(0);
        }
        return bVarB.a();
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List list, x2 x2Var, float f, int i, float f2) {
        this.b = list;
        this.f = x2Var;
        this.d = f;
        this.c = i;
        this.g = f2;
        while (this.a.size() < list.size()) {
            this.a.add(new g(getContext()));
        }
        invalidate();
    }
}
