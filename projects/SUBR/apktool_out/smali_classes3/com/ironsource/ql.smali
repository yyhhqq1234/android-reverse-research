.class public final Lcom/ironsource/ql;
.super Lcom/ironsource/n;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/em;
.implements Lcom/ironsource/j2;
.implements Lcom/ironsource/v1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001e\u001a\u00020\u0005\u0012\u0006\u0010!\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\n\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0008\u0010\n\u001a\u00020\rH\u0016J\u0012\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\n\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/ironsource/ql;",
        "Lcom/ironsource/n;",
        "Lcom/ironsource/em;",
        "Lcom/ironsource/j2;",
        "Lcom/ironsource/v1;",
        "Lcom/ironsource/l1;",
        "tools",
        "Lcom/ironsource/am;",
        "adProperties",
        "Lcom/ironsource/cm;",
        "a",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "h",
        "",
        "j",
        "Lcom/ironsource/nl;",
        "nativeAdBinder",
        "i",
        "Lcom/ironsource/q1;",
        "adUnitCallback",
        "f",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "b",
        "k",
        "Lcom/ironsource/tl;",
        "Lcom/ironsource/tl;",
        "listener",
        "c",
        "Lcom/ironsource/l1;",
        "adTools",
        "d",
        "Lcom/ironsource/am;",
        "nativeAdProperties",
        "e",
        "Lcom/ironsource/cm;",
        "nativeAdUnit",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "adInfo",
        "<init>",
        "(Lcom/ironsource/tl;Lcom/ironsource/l1;Lcom/ironsource/am;)V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final b:Lcom/ironsource/tl;

.field private final c:Lcom/ironsource/l1;

.field private final d:Lcom/ironsource/am;

.field private e:Lcom/ironsource/cm;

.field private f:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public constructor <init>(Lcom/ironsource/tl;Lcom/ironsource/l1;Lcom/ironsource/am;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/n;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ql;->b:Lcom/ironsource/tl;

    iput-object p2, p0, Lcom/ironsource/ql;->c:Lcom/ironsource/l1;

    iput-object p3, p0, Lcom/ironsource/ql;->d:Lcom/ironsource/am;

    invoke-direct {p0}, Lcom/ironsource/ql;->h()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/ql;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method private final a(Lcom/ironsource/l1;Lcom/ironsource/am;)Lcom/ironsource/cm;
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    sget-object v0, Lcom/ironsource/dm;->z:Lcom/ironsource/dm$a;

    invoke-virtual {p0}, Lcom/ironsource/n;->g()Lcom/ironsource/vg;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/vg;->a()Lcom/ironsource/ck;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/dm$a;->a(Lcom/ironsource/c1;Lcom/ironsource/ck;)Lcom/ironsource/dm;

    move-result-object p2

    new-instance v0, Lcom/ironsource/cm;

    invoke-direct {v0, p1, p2, p0}, Lcom/ironsource/cm;-><init>(Lcom/ironsource/l1;Lcom/ironsource/dm;Lcom/ironsource/em;)V

    return-object v0
.end method

.method private final h()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 10

    new-instance v9, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v0, p0, Lcom/ironsource/ql;->d:Lcom/ironsource/am;

    invoke-virtual {v0}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ironsource/ql;->d:Lcom/ironsource/am;

    invoke-virtual {v0}, Lcom/ironsource/c1;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "nativeAdProperties.adFormat.toString()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;Lcom/ironsource/xk;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/ql;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a()V
    .locals 2

    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: Not yet implemented"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ql;->b:Lcom/ironsource/tl;

    invoke-interface {v0, p1}, Lcom/ironsource/tl;->onNativeAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public final a(Lcom/ironsource/nl;)V
    .locals 2

    const-string v0, "nativeAdBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/ql;->e:Lcom/ironsource/cm;

    if-nez v0, :cond_0

    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/ironsource/vl;

    invoke-direct {v1, p1}, Lcom/ironsource/vl;-><init>(Lcom/ironsource/nl;)V

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/m1;->a(Lcom/ironsource/g0;Lcom/ironsource/v1;)V

    return-void
.end method

.method public bridge synthetic b()Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/ironsource/ql;->k()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    new-instance p1, Lkotlin/NotImplementedError;

    const-string v0, "An operation is not implemented: Not yet implemented"

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Lcom/ironsource/q1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/j2$-CC;->$default$c(Lcom/ironsource/j2;Lcom/ironsource/q1;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/ironsource/q1;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/ql;->f(Lcom/ironsource/q1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public f(Lcom/ironsource/q1;)V
    .locals 1

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/q1;->c()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ironsource/ql;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v0, p0, Lcom/ironsource/ql;->b:Lcom/ironsource/tl;

    invoke-interface {v0, p1}, Lcom/ironsource/tl;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    invoke-direct {p0}, Lcom/ironsource/ql;->h()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/ql;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v0, p0, Lcom/ironsource/ql;->e:Lcom/ironsource/cm;

    if-nez v0, :cond_0

    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/m1;->d()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/ql;->c:Lcom/ironsource/l1;

    iget-object v1, p0, Lcom/ironsource/ql;->d:Lcom/ironsource/am;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/ql;->a(Lcom/ironsource/l1;Lcom/ironsource/am;)Lcom/ironsource/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/ql;->e:Lcom/ironsource/cm;

    if-nez v0, :cond_0

    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/ironsource/m1;->a(Lcom/ironsource/j2;)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/ql;->b:Lcom/ironsource/tl;

    iget-object v1, p0, Lcom/ironsource/ql;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/tl;->f(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method
