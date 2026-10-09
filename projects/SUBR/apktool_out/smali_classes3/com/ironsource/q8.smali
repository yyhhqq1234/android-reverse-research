.class public final Lcom/ironsource/q8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0018\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u0017\u0010\u0010\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000fR\u0017\u0010\u0015\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\n\u0010\u0019R#\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00070\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u0006\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/ironsource/q8;",
        "",
        "Lorg/json/JSONObject;",
        "configurations",
        "",
        "adFormatKey",
        "a",
        "Lcom/ironsource/s;",
        "Lcom/ironsource/s;",
        "rewardedConfigurations",
        "b",
        "interstitialConfigurations",
        "Lcom/ironsource/q6;",
        "c",
        "Lcom/ironsource/q6;",
        "()Lcom/ironsource/q6;",
        "bannerConfigurations",
        "Lcom/ironsource/pl;",
        "d",
        "Lcom/ironsource/pl;",
        "()Lcom/ironsource/pl;",
        "nativeAdConfigurations",
        "Lcom/ironsource/w3;",
        "e",
        "Lcom/ironsource/w3;",
        "()Lcom/ironsource/w3;",
        "applicationConfigurations",
        "",
        "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
        "f",
        "Ljava/util/Map;",
        "()Ljava/util/Map;",
        "adFormatsConfigurations",
        "<init>",
        "(Lorg/json/JSONObject;)V",
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
.field private final a:Lcom/ironsource/s;

.field private final b:Lcom/ironsource/s;

.field private final c:Lcom/ironsource/q6;

.field private final d:Lcom/ironsource/pl;

.field private final e:Lcom/ironsource/w3;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "configurations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/s;

    const-string v1, "rewarded"

    invoke-direct {p0, p1, v1}, Lcom/ironsource/q8;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/s;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/q8;->a:Lcom/ironsource/s;

    new-instance v1, Lcom/ironsource/s;

    const-string v2, "interstitial"

    invoke-direct {p0, p1, v2}, Lcom/ironsource/q8;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/s;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/ironsource/q8;->b:Lcom/ironsource/s;

    new-instance v2, Lcom/ironsource/q6;

    const-string v3, "banner"

    invoke-direct {p0, p1, v3}, Lcom/ironsource/q8;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/q6;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/q8;->c:Lcom/ironsource/q6;

    new-instance v2, Lcom/ironsource/pl;

    const-string v3, "nativeAd"

    invoke-direct {p0, p1, v3}, Lcom/ironsource/q8;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/pl;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/q8;->d:Lcom/ironsource/pl;

    new-instance v2, Lcom/ironsource/w3;

    const-string v3, "application"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {v2, p1}, Lcom/ironsource/w3;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/ironsource/q8;->e:Lcom/ironsource/w3;

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/Pair;

    sget-object v2, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/q8;->f:Ljava/util/Map;

    return-void
.end method

.method private final a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "adFormats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q8;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/ironsource/w3;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/q8;->e:Lcom/ironsource/w3;

    return-object v0
.end method

.method public final c()Lcom/ironsource/q6;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/q8;->c:Lcom/ironsource/q6;

    return-object v0
.end method

.method public final d()Lcom/ironsource/pl;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/q8;->d:Lcom/ironsource/pl;

    return-object v0
.end method
