package org.json;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0004H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\t\u0010\nJ \u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\f\u0010\nJ \u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0004H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0006\u0010\nR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b\f\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lcom/ironsource/b8;", "Lcom/ironsource/ge;", "Lcom/ironsource/j8;", "unit", "Lkotlin/Result;", "", "a", "(Lcom/ironsource/j8;)Ljava/lang/Object;", "Lcom/ironsource/ds;", "c", "()Ljava/lang/Object;", "Lcom/ironsource/un;", "b", "Lcom/ironsource/ca;", "Ljava/lang/Boolean;", "d", "()Ljava/lang/Boolean;", "enabled", "", "Ljava/lang/Integer;", "e", "()Ljava/lang/Integer;", "limit", "Lcom/ironsource/j8;", "f", "()Lcom/ironsource/j8;", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/j8;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class b8 implements ge {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Boolean enabled;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Integer limit;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final j8 unit;

    public b8(Boolean bool, Integer num, j8 j8Var) {
        this.enabled = bool;
        this.limit = num;
        this.unit = j8Var;
    }

    public /* synthetic */ b8(Boolean bool, Integer num, j8 j8Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bool, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : j8Var);
    }

    private final Object a(j8 unit) {
        return new c8(this.enabled, this.limit, unit).a();
    }

    @Override // org.json.ge
    public Object a() {
        ca caVar;
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(new da(this.enabled).a());
        if (thM604exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
        }
        Result.Companion companion2 = Result.INSTANCE;
        Boolean bool = this.enabled;
        if (bool != null) {
            bool.booleanValue();
            caVar = new ca(this.enabled.booleanValue());
        } else {
            caVar = null;
        }
        return Result.m601constructorimpl(caVar);
    }

    @Override // org.json.ge
    public Object b() {
        un unVar;
        Integer num;
        j8 j8Var = j8.Second;
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(a(j8Var));
        if (thM604exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
        }
        if (!Intrinsics.areEqual(this.enabled, Boolean.TRUE) || (num = this.limit) == null) {
            unVar = null;
        } else {
            num.intValue();
            unVar = new un(j8Var.a(this.limit), null, 2, null);
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m601constructorimpl(unVar);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    @Override // org.json.ge
    public Object c() {
        ds dsVar;
        Integer num;
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(a(this.unit));
        if (thM604exceptionOrNullimpl != null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
        }
        if (!Intrinsics.areEqual(this.enabled, Boolean.TRUE) || (num = this.limit) == null) {
            dsVar = null;
        } else {
            int iIntValue = num.intValue();
            j8 j8Var = this.unit;
            if (j8Var != null) {
                dsVar = new ds(iIntValue, j8Var);
            } else {
                dsVar = null;
            }
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m601constructorimpl(dsVar);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Boolean getEnabled() {
        return this.enabled;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Integer getLimit() {
        return this.limit;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final j8 getUnit() {
        return this.unit;
    }
}
