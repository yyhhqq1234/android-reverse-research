package com.netease.mpay;

import android.view.MotionEvent;
import com.dodola.rocoo.Hack;
import com.netease.mpay.view.ScrollableView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg implements ScrollableView.a {
    final /* synthetic */ bc a;
    private boolean b = false;
    private float c = 0.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(bc bcVar) {
        this.a = bcVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.view.ScrollableView.a
    public void a(MotionEvent motionEvent) {
        float f;
        if (this.a.e == null || this.a.d == null || this.a.d.getCount() >= this.a.e.size()) {
            return;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.b = true;
                this.c = motionEvent.getY();
                return;
            case 1:
                if (this.b) {
                    float y = this.c - motionEvent.getY();
                    f = this.a.f;
                    if (y > f) {
                        this.a.a(Math.round(this.c - motionEvent.getY()));
                    }
                }
                this.b = false;
                return;
            default:
                return;
        }
    }
}
