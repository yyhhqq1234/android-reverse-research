.class public final Lcom/ironsource/wc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/dd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000c\u001a\u00020\u000fH\u0016R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/ironsource/wc;",
        "Lcom/ironsource/dd;",
        "",
        "d",
        "Lcom/ironsource/sc;",
        "c",
        "",
        "loadAd",
        "Landroid/app/Activity;",
        "activity",
        "",
        "placementName",
        "a",
        "Lcom/ironsource/g1;",
        "b",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "Lcom/ironsource/ek;",
        "Lcom/ironsource/ek;",
        "adInternal",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "adInfo",
        "Lcom/ironsource/ch;",
        "Lcom/ironsource/ch;",
        "testSuiteLoadConfigService",
        "<init>",
        "(Lcom/ironsource/ek;)V",
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
.field private final a:Lcom/ironsource/ek;

.field private final b:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field private final c:Lcom/ironsource/ch;


# direct methods
.method public constructor <init>(Lcom/ironsource/ek;)V
    .locals 10

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p1}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/ek;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;Lcom/ironsource/xk;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/ironsource/wc;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p1}, Lcom/ironsource/ek;->i()Lcom/ironsource/ye;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/ye;->n()Lcom/ironsource/ch;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/wc;->c:Lcom/ironsource/ch;

    return-void
.end method

.method private final c()Lcom/ironsource/sc;
    .locals 8

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->b()Lcom/ironsource/sc;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ironsource/c1;

    iget-object v1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    iget-object v1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/ironsource/wc;->c:Lcom/ironsource/ch;

    invoke-interface {v1}, Lcom/ironsource/ch;->a()Lcom/ironsource/xs;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/c1;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/xs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v1

    new-instance v2, Lcom/ironsource/z1;

    iget-object v3, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v3}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/ironsource/z1;-><init>(Lcom/ironsource/l1;Lcom/ironsource/c1;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/pb;->a(Lcom/ironsource/a2;)V

    iget-object v1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->g()Lcom/ironsource/tc;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v2}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v4}, Lcom/ironsource/ek;->e()Lcom/ironsource/u1;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ironsource/tc;->a(Lcom/ironsource/vc;Lcom/ironsource/l1;Lcom/ironsource/c1;Lcom/ironsource/u1;)Lcom/ironsource/sc;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v1, v0}, Lcom/ironsource/ek;->a(Lcom/ironsource/sc;)V

    :cond_0
    return-object v0
.end method

.method private final d()Z
    .locals 6

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v3, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v3}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x270

    const-string v5, "Ad unit ID should be specified"

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/ek;->onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v3, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v3}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x271

    const-string v5, "Load must be called after init success callback"

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/ek;->onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->i()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->s()Lcom/ironsource/vg;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/vg;->a()Lcom/ironsource/ck;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v3}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v4}, Lcom/ironsource/ek;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ironsource/ck;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v3, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v3}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x272

    const-string v5, "Invalid ad unit id"

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/ek;->b(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return v2

    :cond_4
    return v1
.end method


# virtual methods
.method public a()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/wc;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object p2, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {p2}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x274

    const-string v1, "Show called before load success"

    invoke-direct {p1, p2, v0, v1}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {p2, p1}, Lcom/ironsource/ek;->a(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return-void
.end method

.method public b()Lcom/ironsource/g1;
    .locals 5

    new-instance v0, Lcom/ironsource/g1$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "load ad was not called"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ironsource/g1$a;-><init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public loadAd()V
    .locals 2

    invoke-direct {p0}, Lcom/ironsource/wc;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-direct {p0}, Lcom/ironsource/wc;->c()Lcom/ironsource/sc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/ek;->a(Lcom/ironsource/sc;)V

    iget-object v0, p0, Lcom/ironsource/wc;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->l()V

    return-void
.end method

.method public synthetic onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/dd$-CC;->$default$onAdInfoChanged(Lcom/ironsource/dd;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method
