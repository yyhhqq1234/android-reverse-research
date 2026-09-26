package com.netease.mpay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;

/* loaded from: classes.dex */
public class af extends FragmentActivity {
    a a;
    boolean b;

    public af() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a() {
        if (bk.a != null) {
            bk.a.a(this);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        com.netease.mpay.widget.bf.b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.a.a(i, i2, intent, com.netease.mpay.b.al.a(i2, intent));
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.a.l()) {
            return;
        }
        super.onBackPressed();
        com.netease.mpay.widget.bf.b(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a();
        if (this.b) {
            return;
        }
        this.a.a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        a();
        d.a(this, bundle);
        this.a = b.a.a(this);
        if (this.a == null) {
            this.a = new ag(this, this);
            super.onCreate(bundle);
            super.finish();
            return;
        }
        this.a.a();
        this.a.b();
        this.a.a(bundle);
        super.onCreate(bundle);
        if (d.b(bundle)) {
            super.finish();
        } else {
            this.b = false;
            this.a.b(bundle);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a = this.a.a(str, context, attributeSet);
        return a != null ? a : super.onCreateView(str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.a.j();
        super.onDestroy();
    }

    public void onFragmentCallback(int i, Bundle bundle) {
        this.a.a(i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.a.c();
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.b = true;
        this.a.h();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.a.g();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.a.a(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        a();
        super.onRestart();
        this.a.e();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.a.c(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.a.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        d.a(bundle);
        this.a.d(bundle);
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.a.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.a.i();
        super.onStop();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.a.b(motionEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.a.a(z);
    }
}
