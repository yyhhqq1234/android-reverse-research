package org.json;

import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007R\u001b\u0010\f\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/ironsource/ps;", "", "Ljava/lang/Runnable;", "action", "", "delay", "", "a", "Lcom/ironsource/dq;", "b", "Lkotlin/Lazy;", "()Lcom/ironsource/dq;", "longBlockingTasksExecutorService", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ps {
    public static final ps a = new ps();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static final Lazy longBlockingTasksExecutorService = LazyKt.lazy(a.a);

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/dq;", "a", "()Lcom/ironsource/dq;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<dq> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final dq invoke() {
            return new dq(16, null, null, 6, null);
        }
    }

    private ps() {
    }

    private final dq a() {
        return (dq) longBlockingTasksExecutorService.getValue();
    }

    public static /* synthetic */ void a(ps psVar, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        psVar.a(runnable, j);
    }

    public final void a(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        a(this, action, 0L, 2, null);
    }

    public final void a(Runnable action, long delay) {
        Intrinsics.checkNotNullParameter(action, "action");
        a().schedule(action, delay, TimeUnit.MILLISECONDS);
    }
}
