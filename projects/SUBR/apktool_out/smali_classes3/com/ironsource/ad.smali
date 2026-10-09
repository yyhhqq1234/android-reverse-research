.class public final Lcom/ironsource/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/dd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u001a\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0016R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/ironsource/ad;",
        "Lcom/ironsource/dd;",
        "Lcom/ironsource/g1;",
        "d",
        "",
        "c",
        "loadInterval",
        "",
        "a",
        "duration",
        "isExpired",
        "",
        "loadAd",
        "Landroid/app/Activity;",
        "activity",
        "",
        "placementName",
        "b",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "adInfo",
        "onAdInfoChanged",
        "Lcom/ironsource/ek;",
        "Lcom/ironsource/ek;",
        "adInternal",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "Lcom/ironsource/n9;",
        "Lcom/ironsource/n9;",
        "currentTimeProvider",
        "J",
        "expiredDurationInMillis",
        "e",
        "loadSuccessTimestamp",
        "<init>",
        "(Lcom/ironsource/ek;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/n9;)V",
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

.field private b:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field private final c:Lcom/ironsource/n9;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/ironsource/ek;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/n9;)V
    .locals 1

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    iput-object p2, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iput-object p3, p0, Lcom/ironsource/ad;->c:Lcom/ironsource/n9;

    invoke-virtual {p1}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/ek;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/l1;->b(Lcom/unity3d/mediation/LevelPlay$AdFormat;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/ad;->d:J

    invoke-interface {p3}, Lcom/ironsource/n9;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/ad;->e:J

    return-void
.end method

.method private final a(JZ)V
    .locals 5

    iget-wide v0, p0, Lcom/ironsource/ad;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iget-object v2, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v2}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1, p3}, Lcom/ironsource/zt;->a(Ljava/lang/Long;JZ)V

    return-void
.end method

.method private final a(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/ironsource/ad;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final c()J
    .locals 4

    iget-object v0, p0, Lcom/ironsource/ad;->c:Lcom/ironsource/n9;

    invoke-interface {v0}, Lcom/ironsource/n9;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/ad;->e:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final d()Lcom/ironsource/g1;
    .locals 4

    iget-object v0, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->i()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->t()Lcom/ironsource/ie;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/ie;->a(Ljava/lang/String;)Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ironsource/g1$a;->c:Lcom/ironsource/g1$a$a;

    invoke-virtual {v0}, Lcom/ironsource/i8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/g1$a$a;->a(Ljava/lang/String;)Lcom/ironsource/g1$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ironsource/g1$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/g1$b;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->d()Lcom/ironsource/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/l1;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v1}, Lcom/ironsource/ek;->b()Lcom/ironsource/sc;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    new-instance p2, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v0, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    invoke-virtual {v0}, Lcom/ironsource/ek;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40f

    const-string v2, "Internal Error, Illegal state"

    invoke-direct {p2, v0, v1, v2}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/ek;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void

    :cond_0
    new-instance v2, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v3, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-direct {v2, v3, p2}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Lcom/unity3d/mediation/LevelPlayAdInfo;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object p2, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    new-instance v3, Lcom/ironsource/cd;

    invoke-direct {v3, p2, v2}, Lcom/ironsource/cd;-><init>(Lcom/ironsource/ek;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-virtual {p2, v3}, Lcom/ironsource/ek;->a(Lcom/ironsource/dd;)V

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/sc;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public b()Lcom/ironsource/g1;
    .locals 6

    invoke-direct {p0}, Lcom/ironsource/ad;->d()Lcom/ironsource/g1;

    move-result-object v0

    instance-of v1, v0, Lcom/ironsource/g1$b;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ironsource/ad;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/ironsource/ad;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/ironsource/ad;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-object v0, Lcom/ironsource/g1$a;->c:Lcom/ironsource/g1$a$a;

    invoke-virtual {v0}, Lcom/ironsource/g1$a$a;->a()Lcom/ironsource/g1$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadAd()V
    .locals 3

    invoke-direct {p0}, Lcom/ironsource/ad;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/ad;->a(J)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ironsource/ad;->a(JZ)V

    iget-object v0, p0, Lcom/ironsource/ad;->a:Lcom/ironsource/ek;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/ek;->l()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/ek;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :goto_0
    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/ad;->b:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method
