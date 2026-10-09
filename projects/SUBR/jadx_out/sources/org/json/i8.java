package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u001f\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/ironsource/i8;", "", "", "e", "toString", "", "a", "Lcom/ironsource/k8;", "b", "isCapped", "type", "", "hashCode", "other", "equals", "Z", "d", "()Z", "Lcom/ironsource/k8;", "c", "()Lcom/ironsource/k8;", "<init>", "(ZLcom/ironsource/k8;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class i8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean isCapped;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final k8 type;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[k8.values().length];
            try {
                iArr[k8.Delivery.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[k8.Pacing.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[k8.ShowCount.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public i8(boolean z, k8 k8Var) {
        this.isCapped = z;
        this.type = k8Var;
    }

    public /* synthetic */ i8(boolean z, k8 k8Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : k8Var);
    }

    public static /* synthetic */ i8 a(i8 i8Var, boolean z, k8 k8Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = i8Var.isCapped;
        }
        if ((i & 2) != 0) {
            k8Var = i8Var.type;
        }
        return i8Var.a(z, k8Var);
    }

    public final i8 a(boolean isCapped, k8 type) {
        return new i8(isCapped, type);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getIsCapped() {
        return this.isCapped;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final k8 getType() {
        return this.type;
    }

    public final k8 c() {
        return this.type;
    }

    public final boolean d() {
        return this.isCapped;
    }

    public final String e() {
        k8 k8Var = this.type;
        int i = k8Var == null ? -1 : a.a[k8Var.ordinal()];
        if (i == 1) {
            return "Placement delivery is false";
        }
        if (i == 2) {
            return "In pacing mode";
        }
        if (i != 3) {
            return null;
        }
        return "Max ad cap reached";
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof i8)) {
            return false;
        }
        i8 i8Var = (i8) other;
        return this.isCapped == i8Var.isCapped && this.type == i8Var.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isCapped;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        k8 k8Var = this.type;
        return i + (k8Var == null ? 0 : k8Var.hashCode());
    }

    public String toString() {
        return "CappingStatus(isCapped=" + this.isCapped + " reason=" + this.type + ')';
    }
}
