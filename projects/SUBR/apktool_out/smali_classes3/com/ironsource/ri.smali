.class public final Lcom/ironsource/ri;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\"\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0008R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/ironsource/ri;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/ironsource/gr;",
        "serverResponse",
        "Lcom/ironsource/xa;",
        "initDuration",
        "Lcom/unity3d/ironsourceads/InitListener;",
        "initializationListener",
        "",
        "a",
        "Lcom/ironsource/hq;",
        "error",
        "Lcom/unity3d/ironsourceads/InitRequest;",
        "initRequest",
        "Lcom/ironsource/qh;",
        "b",
        "Lcom/ironsource/qh;",
        "tools",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/ri;

.field private static final b:Lcom/ironsource/qh;


# direct methods
.method public static synthetic $r8$lambda$BedDqsZ61SoMbMQn4Phf4A5Obi0(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/ri;->a(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBfns7W6YjMlMOxgNPyzw3gZbwE(Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/ri;->a(Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vvs4IgdhbN0NDvWGgX7hBw680UE(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/ri;->a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/ri;

    invoke-direct {v0}, Lcom/ironsource/ri;-><init>()V

    sput-object v0, Lcom/ironsource/ri;->a:Lcom/ironsource/ri;

    new-instance v0, Lcom/ironsource/qh;

    invoke-direct {v0}, Lcom/ironsource/qh;-><init>()V

    sput-object v0, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/ironsource/gr;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 5

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->m()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/gr;->f()Lcom/ironsource/ih;

    move-result-object v1

    const-string v2, "serverResponse.initialConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/gr;->k()Lcom/ironsource/xo;

    move-result-object v2

    const-string v3, "IronSource"

    invoke-virtual {v2, v3}, Lcom/ironsource/xo;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    const-string v3, "serverResponse.providerS\u2026s.IRONSOURCE_CONFIG_NAME)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ironsource/s0$a;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "networkSettings.interstitialSettings"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/ironsource/s0$a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Lcom/ironsource/ih;->a(Lcom/ironsource/s0;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/ih;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/ih;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/u0;

    new-instance v2, Lcom/ironsource/om;

    invoke-direct {v2}, Lcom/ironsource/om;-><init>()V

    invoke-direct {v0, v2}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/nm;)V

    new-instance v2, Lcom/ironsource/ri$a;

    invoke-direct {v2}, Lcom/ironsource/ri$a;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/ironsource/t0;->a(Landroid/content/Context;Lcom/ironsource/ih;Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/ironsource/ri;->a(Lcom/ironsource/gr;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method private final a(Lcom/ironsource/gr;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ironsource/gr;->c()Lcom/ironsource/p8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/x3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/x3;->d()Lcom/ironsource/g4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/g4;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/ironsource/kl;

    invoke-direct {v1}, Lcom/ironsource/kl;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/kl;->a(Ljava/util/Map;Z)V

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->m()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/hm;->e:Lcom/ironsource/hm$a;

    invoke-virtual {v1}, Lcom/ironsource/hm$a;->a()Lcom/ironsource/hm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/gr;->k()Lcom/ironsource/xo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/hm;->a(Lcom/ironsource/xo;)V

    invoke-virtual {p1}, Lcom/ironsource/gr;->c()Lcom/ironsource/p8;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/hm;->a(Lcom/ironsource/p8;)V

    const-string v2, "sessionId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/hm;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ironsource/hm;->g()V

    invoke-static {p2}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v0

    sget-object p2, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    invoke-virtual {p1}, Lcom/ironsource/gr;->h()Lcom/ironsource/gr$a;

    move-result-object p1

    const-string v2, "serverResponse.origin"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/ironsource/qh;->a(JLcom/ironsource/gr$a;)V

    new-instance p1, Lcom/ironsource/ri$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/ironsource/ri$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/qh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/ri;Landroid/content/Context;Lcom/ironsource/gr;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/ri;->a(Landroid/content/Context;Lcom/ironsource/gr;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/ri;Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/xa;Lcom/ironsource/hq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/ri;->a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/xa;Lcom/ironsource/hq;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/unity3d/ironsourceads/InitListener;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V
    .locals 1

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    invoke-virtual {v0, p1}, Lcom/ironsource/qh;->a(Lcom/ironsource/hq;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/unity3d/ironsourceads/InitListener;->onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/xa;Lcom/ironsource/hq;)V
    .locals 2

    invoke-static {p2}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v0

    sget-object p2, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    invoke-virtual {p2, p3, v0, v1}, Lcom/ironsource/qh;->a(Lcom/ironsource/hq;J)V

    new-instance v0, Lcom/ironsource/ri$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p3}, Lcom/ironsource/ri$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/qh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 8

    const-string v0, "$initRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initializationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/xa;

    invoke-direct {v0}, Lcom/ironsource/xa;-><init>()V

    new-instance v7, Lcom/ironsource/mq;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/InitRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/InitRequest;->getLegacyAdFormats()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/qh;->a(Ljava/util/List;)[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p0, Lcom/ironsource/tq;->a:Lcom/ironsource/tq;

    new-instance v1, Lcom/ironsource/ri$b;

    invoke-direct {v1, p1, v0, p2}, Lcom/ironsource/ri$b;-><init>(Landroid/content/Context;Lcom/ironsource/xa;Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-virtual {p0, p1, v7, v1}, Lcom/ironsource/tq;->c(Landroid/content/Context;Lcom/ironsource/mq;Lcom/ironsource/lq;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/unity3d/ironsourceads/InitRequest;Lcom/unity3d/ironsourceads/InitListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/ri;->b:Lcom/ironsource/qh;

    new-instance v1, Lcom/ironsource/ri$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p3}, Lcom/ironsource/ri$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ironsourceads/InitRequest;Landroid/content/Context;Lcom/unity3d/ironsourceads/InitListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/qh;->a(Ljava/lang/Runnable;)V

    return-void
.end method
