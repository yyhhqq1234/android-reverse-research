.class public final Lcom/ironsource/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\u000cR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/ironsource/gk;",
        "",
        "Lcom/ironsource/u1;",
        "a",
        "",
        "c",
        "Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;",
        "listener",
        "Landroid/app/Activity;",
        "activity",
        "",
        "placementName",
        "",
        "b",
        "Lcom/ironsource/ye;",
        "Lcom/ironsource/ye;",
        "provider",
        "Lcom/ironsource/ek;",
        "Lcom/ironsource/ek;",
        "fullScreenAdInternal",
        "adUnitId",
        "Lcom/ironsource/l1;",
        "adTools",
        "Lcom/ironsource/tc;",
        "adControllerFactory",
        "Lcom/ironsource/n9;",
        "currentTimeProvider",
        "<init>",
        "(Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V",
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
.field private final a:Lcom/ironsource/ye;

.field private final b:Lcom/ironsource/ek;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V
    .locals 9

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adControllerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/ironsource/gk;->a:Lcom/ironsource/ye;

    new-instance v0, Lcom/ironsource/ek;

    sget-object v2, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-direct {p0}, Lcom/ironsource/gk;->a()Lcom/ironsource/u1;

    move-result-object v6

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/ek;-><init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/u1;Lcom/ironsource/ye;Lcom/ironsource/n9;)V

    iput-object v0, p0, Lcom/ironsource/gk;->b:Lcom/ironsource/ek;

    return-void
.end method

.method private final a()Lcom/ironsource/u1;
    .locals 1

    new-instance v0, Lcom/ironsource/gk$a;

    invoke-direct {v0, p0}, Lcom/ironsource/gk$a;-><init>(Lcom/ironsource/gk;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/gk;)Lcom/ironsource/ye;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/gk;->a:Lcom/ironsource/ye;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/gk;->b:Lcom/ironsource/ek;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/ek;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/gk;->b:Lcom/ironsource/ek;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ironsource/hk;->a(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;)Lcom/ironsource/fk;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/ironsource/ek;->a(Lcom/ironsource/fk;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/ironsource/gk;->b:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->j()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/gk;->b:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->k()V

    return-void
.end method
