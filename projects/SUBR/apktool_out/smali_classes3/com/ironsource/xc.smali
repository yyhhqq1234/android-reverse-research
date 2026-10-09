.class public final Lcom/ironsource/xc;
.super Lcom/ironsource/y;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010+\u001a\u00020*\u0012\u0006\u0010#\u001a\u00020\u001f\u00a2\u0006\u0004\u0008,\u0010-J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014J\u0008\u0010\u0016\u001a\u00020\u0005H\u0014J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u0005H\u0016J\u0008\u0010\u001b\u001a\u00020\u0005H\u0016J\u0008\u0010\u001c\u001a\u00020\u0005H\u0016J\u0008\u0010\u001d\u001a\u00020\u0005H\u0016R$\u0010#\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006."
    }
    d2 = {
        "Lcom/ironsource/xc;",
        "Lcom/ironsource/y;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;",
        "",
        "G",
        "K",
        "H",
        "L",
        "J",
        "",
        "errorCode",
        "",
        "errorMessage",
        "b",
        "I",
        "Lcom/ironsource/g0;",
        "adInstancePresenter",
        "a",
        "Landroid/app/Activity;",
        "activity",
        "y",
        "onAdClosed",
        "onAdShowFailed",
        "onAdShowSuccess",
        "onAdVisible",
        "onAdStarted",
        "onAdEnded",
        "onAdRewarded",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/yc;",
        "kotlin.jvm.PlatformType",
        "v",
        "Ljava/lang/ref/WeakReference;",
        "listener",
        "Lcom/ironsource/xa;",
        "w",
        "Lcom/ironsource/xa;",
        "rewardDurationAfterClose",
        "Lcom/ironsource/t2;",
        "adTools",
        "Lcom/ironsource/z;",
        "instanceData",
        "<init>",
        "(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/yc;)V",
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
.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/yc;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/ironsource/xa;


# direct methods
.method public static synthetic $r8$lambda$3rBxGOJFxPPEMMhP4CgXnZuFFWs(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->b(Lcom/ironsource/xc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J6vOWPPun2AaPU-now2Ano9jwRQ(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->a(Lcom/ironsource/xc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHAqYzkhJ7-NfpRkiQI0O-sYx9c(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->d(Lcom/ironsource/xc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsVJRKtoAAifwZW2hQNumMOPzbU(Lcom/ironsource/xc;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/xc;->a(Lcom/ironsource/xc;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_9nB0y9WCbS1RndtGi6f9YRj6k(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->e(Lcom/ironsource/xc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nn7oURWTUkrMWbO_ZUSm7Vjmz3M(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->f(Lcom/ironsource/xc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7mN-93qQCk20-JsuyEFYCv50_k(Lcom/ironsource/xc;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/xc;->c(Lcom/ironsource/xc;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/yc;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/y;-><init>(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/c0;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ironsource/xc;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final G()V
    .locals 3

    new-instance v0, Lcom/ironsource/xa;

    invoke-direct {v0}, Lcom/ironsource/xa;-><init>()V

    iput-object v0, p0, Lcom/ironsource/xc;->w:Lcom/ironsource/xa;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/k0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/xc;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/yc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/ironsource/yc;->b(Lcom/ironsource/xc;)V

    :cond_0
    return-void
.end method

.method private final H()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final I()V
    .locals 12

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t2;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "custom_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v1}, Lcom/ironsource/t2;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ironsource/xc;->w:Lcom/ironsource/xa;

    invoke-static {v0}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v7

    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->o()Lcom/ironsource/ff;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/y;->l()Lcom/ironsource/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/ff;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ironsource/z9;->a:Lcom/ironsource/z9$a;

    invoke-virtual {v0}, Lcom/ironsource/z9$a;->a()Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object v0

    :cond_1
    move-object v11, v0

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getAmount()I

    move-result v3

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/t2;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/ironsource/k0;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JLjava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/xc;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/yc;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, v11}, Lcom/ironsource/yc;->a(Lcom/ironsource/xc;Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V

    :cond_2
    return-void
.end method

.method private final J()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/xc;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/yc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/ironsource/yc;->a(Lcom/ironsource/xc;)V

    :cond_0
    return-void
.end method

.method private final K()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final L()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->k(Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->G()V

    return-void
.end method

.method private static final a(Lcom/ironsource/xc;ILjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/xc;->b(ILjava/lang/String;)V

    return-void
.end method

.method private final b(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/ironsource/k0;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/n1$a;->d:Lcom/ironsource/n1$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/n1$a;)V

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/xc;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/yc;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, v0}, Lcom/ironsource/yc;->a(Lcom/ironsource/xc;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method private static final b(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->H()V

    return-void
.end method

.method private static final c(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->I()V

    return-void
.end method

.method private static final d(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->J()V

    return-void
.end method

.method private static final e(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->K()V

    return-void
.end method

.method private static final f(Lcom/ironsource/xc;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/xc;->L()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placementName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/k0;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/y;->f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    invoke-virtual {p0}, Lcom/ironsource/y;->h()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "showAd - adapter not instance of AdapterAdFullScreenInterface"

    invoke-virtual {p0, p1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/zt;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showAd - exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/zt;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/y;->l()Lcom/ironsource/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/x1;->h(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/xc;->b(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/g0;)V
    .locals 1

    const-string v0, "adInstancePresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/ironsource/g0;->a(Lcom/ironsource/xc;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdEnded()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdRewarded()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowFailed(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/xc$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/xc;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowSuccess()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdStarted()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdVisible()V
    .locals 1

    new-instance v0, Lcom/ironsource/xc$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/ironsource/xc$$ExternalSyntheticLambda6;-><init>(Lcom/ironsource/xc;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected y()V
    .locals 3

    invoke-virtual {p0}, Lcom/ironsource/y;->f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/y;->f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    invoke-virtual {p0}, Lcom/ironsource/y;->l()Lcom/ironsource/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/z;->g()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "adapter not instance of AdapterAdFullScreenInterface"

    invoke-virtual {p0, v1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
