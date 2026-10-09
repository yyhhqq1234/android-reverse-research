package org.json;

import kotlin.Metadata;
import kotlin.UByte$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0005HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/ironsource/f2;", "", "", "a", "impressionTimeout", "", "toString", "", "hashCode", "other", "", "equals", "J", "b", "()J", "<init>", "(J)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class f2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final long impressionTimeout;

    public f2(long j) {
        this.impressionTimeout = j;
    }

    public static /* synthetic */ f2 a(f2 f2Var, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = f2Var.impressionTimeout;
        }
        return f2Var.a(j);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final long getImpressionTimeout() {
        return this.impressionTimeout;
    }

    public final f2 a(long impressionTimeout) {
        return new f2(impressionTimeout);
    }

    public final long b() {
        return this.impressionTimeout;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof f2) && this.impressionTimeout == ((f2) other).impressionTimeout;
    }

    public int hashCode() {
        return UByte$$ExternalSyntheticBackport0.m(this.impressionTimeout);
    }

    public String toString() {
        return "AdUnitInteractionData(impressionTimeout=" + this.impressionTimeout + ')';
    }
}
