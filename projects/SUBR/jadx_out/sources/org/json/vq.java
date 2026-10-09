package org.json;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\bR*\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\u0007\u0010\f\"\u0004\b\u0007\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/vq;", "", "Lcom/ironsource/uq;", "b", "", "isOldInit", "", "a", "Ljava/lang/Boolean;", "<set-?>", "c", "Lcom/ironsource/uq;", "()Lcom/ironsource/uq;", "(Lcom/ironsource/uq;)V", "initStatus", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class vq {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private static Boolean isOldInit;
    public static final vq a = new vq();

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private static uq initStatus = uq.NOT_INIT;

    private vq() {
    }

    public final synchronized uq a() {
        return initStatus;
    }

    public final synchronized void a(uq uqVar) {
        Intrinsics.checkNotNullParameter(uqVar, "<set-?>");
        initStatus = uqVar;
    }

    public final void a(boolean isOldInit2) {
        isOldInit = Boolean.valueOf(isOldInit2);
    }

    public final uq b() {
        Boolean bool = isOldInit;
        if (bool == null ? true : Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return uq.NOT_INIT;
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return initStatus;
        }
        throw new NoWhenBranchMatchedException();
    }
}
