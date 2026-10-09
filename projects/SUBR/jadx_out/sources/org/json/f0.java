package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0005HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\r\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/ironsource/f0;", "", "Lcom/ironsource/n1$a;", "a", "performance", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/n1$a;", "b", "()Lcom/ironsource/n1$a;", "(Lcom/ironsource/n1$a;)V", "<init>", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class f0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private n1.a performance;

    public f0(n1.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        this.performance = performance;
    }

    public static /* synthetic */ f0 a(f0 f0Var, n1.a aVar, int i, Object obj) {
        if ((i & 1) != 0) {
            aVar = f0Var.performance;
        }
        return f0Var.a(aVar);
    }

    public final f0 a(n1.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        return new f0(performance);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final n1.a getPerformance() {
        return this.performance;
    }

    public final n1.a b() {
        return this.performance;
    }

    public final void b(n1.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.performance = aVar;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof f0) && this.performance == ((f0) other).performance;
    }

    public int hashCode() {
        return this.performance.hashCode();
    }

    public String toString() {
        return "AdInstancePerformance(performance=" + this.performance + ')';
    }
}
