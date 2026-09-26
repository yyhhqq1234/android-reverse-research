package com.netease.mpay;

import android.os.Bundle;
import android.view.MotionEvent;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class MpayLoginActivity extends af {
    public MpayLoginActivity() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.a.a(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.netease.mpay.af, android.app.Activity
    public void finish() {
        super.finish();
        this.a.k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.a.q();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.af, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(RIdentifier.i.b);
        com.netease.mpay.skin.e.a(getLayoutInflater(), new com.netease.mpay.skin.e());
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.a.r();
        super.onDetachedFromWindow();
    }
}
