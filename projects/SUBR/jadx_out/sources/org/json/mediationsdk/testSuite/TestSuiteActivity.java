package org.json.mediationsdk.testSuite;

import android.app.Activity;
import android.os.Bundle;
import android.widget.RelativeLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
import org.json.dh;
import org.json.ft;
import org.json.lt;
import org.json.ts;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0014J\b\u0010\u000f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0016J\u0006\u0010\u0012\u001a\u00020\u0011R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0004\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;", "Landroid/app/Activity;", "Lcom/ironsource/dh;", "Lorg/json/JSONObject;", "b", "", "a", "Landroid/widget/RelativeLayout$LayoutParams;", "c", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onBackPressed", "onDestroy", "onUIReady", "onClosed", "Landroid/widget/RelativeLayout;", "getContainer", "Landroid/widget/RelativeLayout;", "mContainer", "Lcom/ironsource/lt;", "Lcom/ironsource/lt;", "mWebViewWrapper", "Lcom/ironsource/ft;", "Lcom/ironsource/ft;", "mNativeBridge", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class TestSuiteActivity extends Activity implements dh {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private RelativeLayout mContainer;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private lt mWebViewWrapper;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private ft mNativeBridge;

    private final String a() {
        Bundle extras;
        if (getIntent() == null || getIntent().getExtras() == null || (extras = getIntent().getExtras()) == null) {
            return null;
        }
        return extras.getString("controllerUrl");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TestSuiteActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    private final JSONObject b() {
        boolean z;
        String strB = new ts().b(this);
        if (strB != null) {
            try {
                z = strB.length() == 0;
            } catch (Exception unused) {
                return new JSONObject();
            }
        }
        return z ? new JSONObject() : new JSONObject(strB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TestSuiteActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        lt ltVar = this$0.mWebViewWrapper;
        lt ltVar2 = null;
        if (ltVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            ltVar = null;
        }
        if (ltVar.getMAppWebView().getParent() == null) {
            RelativeLayout relativeLayout = this$0.mContainer;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout = null;
            }
            lt ltVar3 = this$0.mWebViewWrapper;
            if (ltVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                ltVar3 = null;
            }
            relativeLayout.removeView(ltVar3.getMLoadingScreenWebView());
            RelativeLayout relativeLayout2 = this$0.mContainer;
            if (relativeLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout2 = null;
            }
            lt ltVar4 = this$0.mWebViewWrapper;
            if (ltVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                ltVar4 = null;
            }
            relativeLayout2.addView(ltVar4.getMAppWebView(), this$0.c());
            lt ltVar5 = this$0.mWebViewWrapper;
            if (ltVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            } else {
                ltVar2 = ltVar5;
            }
            ltVar2.b();
        }
    }

    private final RelativeLayout.LayoutParams c() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    public final RelativeLayout getContainer() {
        RelativeLayout relativeLayout = this.mContainer;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mContainer");
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // org.json.dh
    public void onClosed() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.a(this.f$0);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.mContainer = relativeLayout;
        setContentView(relativeLayout, c());
        lt ltVar = new lt(this, this, b(), a());
        this.mWebViewWrapper = ltVar;
        ft ftVar = new ft(ltVar);
        this.mNativeBridge = ftVar;
        ftVar.d();
        RelativeLayout relativeLayout2 = this.mContainer;
        lt ltVar2 = null;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout2 = null;
        }
        lt ltVar3 = this.mWebViewWrapper;
        if (ltVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            ltVar2 = ltVar3;
        }
        relativeLayout2.addView(ltVar2.getMLoadingScreenWebView(), c());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ft ftVar = this.mNativeBridge;
        lt ltVar = null;
        if (ftVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNativeBridge");
            ftVar = null;
        }
        ftVar.a();
        RelativeLayout relativeLayout = this.mContainer;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout = null;
        }
        relativeLayout.removeAllViews();
        lt ltVar2 = this.mWebViewWrapper;
        if (ltVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            ltVar = ltVar2;
        }
        ltVar.a();
        super.onDestroy();
    }

    @Override // org.json.dh
    public void onUIReady() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.b(this.f$0);
            }
        });
    }
}
