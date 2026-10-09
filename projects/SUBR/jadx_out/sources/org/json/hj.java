package org.json;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018B\u0011\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0019B\u0019\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0017\u0010\u001cB!\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\t¢\u0006\u0004\b\u0017\u0010\u001eJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016R\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/ironsource/hj;", "Landroid/webkit/WebView;", "Lcom/ironsource/tj;", "", "script", "", "a", "Lcom/ironsource/pn;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "keyCode", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "", "onKeyDown", "Lcom/ironsource/sj;", "Lcom/ironsource/sj;", "javascriptEngine", "b", "Lcom/ironsource/pn;", "changeListener", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcom/ironsource/sj;)V", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class hj extends WebView implements tj {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private sj javascriptEngine;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private pn changeListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hj(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hj(Context context, sj javascriptEngine) {
        this(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        this.javascriptEngine = javascriptEngine;
    }

    public /* synthetic */ hj(Context context, sj sjVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? new sj.a(0, 1, null) : sjVar);
    }

    public final void a(pn listener) {
        this.changeListener = listener;
    }

    @Override // org.json.tj
    public void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        sj sjVar = this.javascriptEngine;
        sj sjVar2 = null;
        if (sjVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
            sjVar = null;
        }
        if (!sjVar.a()) {
            sj sjVar3 = this.javascriptEngine;
            if (sjVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
                sjVar3 = null;
            }
            sjVar3.a(this);
        }
        sj sjVar4 = this.javascriptEngine;
        if (sjVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
        } else {
            sjVar2 = sjVar4;
        }
        sjVar2.a(script);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (keyCode == 4) {
            pn pnVar = this.changeListener;
            if (pnVar != null && pnVar.onBackButtonPressed()) {
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }
}
