package org.json;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lcom/ironsource/t6;", "Landroid/widget/FrameLayout;", "Lcom/ironsource/iu;", "a", "Lcom/ironsource/iu;", "getViewBinder", "()Lcom/ironsource/iu;", "viewBinder", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class t6 extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final iu viewBinder;

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\n"}, d2 = {"com/ironsource/t6$a", "Lcom/ironsource/iu;", "Landroid/view/View;", "view", "Landroid/widget/FrameLayout$LayoutParams;", "layoutParams", "Lcom/ironsource/t2;", "adTools", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements iu {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(View this_apply) {
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this_apply.setEnabled(false);
            this_apply.setClickable(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(t2 adTools, long j) {
            Intrinsics.checkNotNullParameter(adTools, "$adTools");
            adTools.getEventSender().getTroubleshoot().a(false, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(t6 this$0, View view, View this_apply) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this$0.removeView(view);
            this_apply.setEnabled(true);
            this_apply.setClickable(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(t2 adTools, long j) {
            Intrinsics.checkNotNullParameter(adTools, "$adTools");
            adTools.getEventSender().getTroubleshoot().a(true, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(final t2 adTools, final long j) {
            Intrinsics.checkNotNullParameter(adTools, "$adTools");
            adTools.d(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    t6.a.d(adTools, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(t2 adTools, long j) {
            Intrinsics.checkNotNullParameter(adTools, "$adTools");
            adTools.getEventSender().getTroubleshoot().a(j);
        }

        @Override // org.json.iu
        public void a(View view, FrameLayout.LayoutParams layoutParams, final t2 adTools) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            final View childAt = t6.this.getChildAt(0);
            final long jB = jl.INSTANCE.d().d().b();
            if (jB <= 0) {
                t6.this.removeView(childAt);
                t6.this.addView(view, layoutParams);
                adTools.d(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        t6.a.a(adTools, jB);
                    }
                });
                return;
            }
            adTools.d(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    t6.a.b(adTools, jB);
                }
            });
            view.setAlpha(0.0f);
            t6.this.addView(view, layoutParams);
            if (childAt != null) {
                final t6 t6Var = t6.this;
                childAt.animate().alpha(0.0f).setDuration(jB).withStartAction(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        t6.a.a(childAt);
                    }
                }).withEndAction(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        t6.a.a(t6Var, childAt, childAt);
                    }
                }).start();
            }
            view.animate().alpha(1.0f).setDuration(jB).withEndAction(new Runnable() { // from class: com.ironsource.t6$a$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    t6.a.c(adTools, jB);
                }
            }).start();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.viewBinder = new a();
    }

    public final iu getViewBinder() {
        return this.viewBinder;
    }
}
