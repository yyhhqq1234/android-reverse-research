package com.netease.mpay.widget.b;

import android.R;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class w {
    private View a;
    private int b;
    private int c;
    private FrameLayout.LayoutParams d;

    private w(Activity activity) {
        if (!bf.a(activity)) {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        } else {
            this.a = ((FrameLayout) activity.findViewById(R.id.content)).getChildAt(0);
            if (this.a != null) {
                this.a.getViewTreeObserver().addOnGlobalLayoutListener(new x(this));
                this.d = (FrameLayout.LayoutParams) this.a.getLayoutParams();
                this.b = this.d.height;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int b = b();
        if (b != this.c) {
            int height = this.a.getRootView().getHeight();
            int i = height - b;
            if (i > height / 4) {
                this.d.height = height - i;
            } else {
                this.d.height = this.b;
            }
            this.a.requestLayout();
            this.c = b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        new w(activity);
    }

    private int b() {
        Rect rect = new Rect();
        this.a.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }
}
