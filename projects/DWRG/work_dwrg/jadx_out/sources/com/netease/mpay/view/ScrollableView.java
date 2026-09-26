package com.netease.mpay.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ScrollableView extends ScrollView {
    private a a;

    /* loaded from: classes.dex */
    public interface a {
        void a(MotionEvent motionEvent);
    }

    public ScrollableView(Context context) {
        super(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public ScrollableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScrollableView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a() {
        this.a = null;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.a != null) {
            this.a.a(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
