package org.json;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u001e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/ironsource/h5;", "Lcom/ironsource/i5;", "Lkotlin/Result;", "Lcom/ironsource/f5;", "a", "()Ljava/lang/Object;", "", "Ljava/lang/String;", "encryptedAuctionResponse", "Lcom/ironsource/to;", "b", "Lcom/ironsource/to;", "providerName", "<init>", "(Ljava/lang/String;Lcom/ironsource/to;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class h5 implements i5 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String encryptedAuctionResponse;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final to providerName;

    public h5(String encryptedAuctionResponse, to providerName) {
        Intrinsics.checkNotNullParameter(encryptedAuctionResponse, "encryptedAuctionResponse");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.encryptedAuctionResponse = encryptedAuctionResponse;
        this.providerName = providerName;
    }

    @Override // org.json.i5
    public Object a() {
        Object objM601constructorimpl;
        String strC = bb.b().c();
        Intrinsics.checkNotNullExpressionValue(strC, "getInstance().mediationKey");
        rj rjVar = new rj(new w9(this.encryptedAuctionResponse, strC));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM601constructorimpl = Result.m601constructorimpl(rjVar.a());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
        if (thM604exceptionOrNullimpl == null) {
            return f5.INSTANCE.a((JSONObject) objM601constructorimpl, this.providerName.value());
        }
        l9.d().a(thM604exceptionOrNullimpl);
        if (thM604exceptionOrNullimpl instanceof IllegalArgumentException) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m601constructorimpl(ResultKt.createFailure(new rf(lb.a.d())));
        }
        Result.Companion companion4 = Result.INSTANCE;
        return Result.m601constructorimpl(ResultKt.createFailure(new rf(lb.a.h())));
    }
}
