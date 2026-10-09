.class public final Lcom/ironsource/si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/bq;
.implements Lcom/ironsource/s9;
.implements Lcom/ironsource/r9;
.implements Lcom/ironsource/p9;
.implements Lcom/ironsource/q9;
.implements Lcom/ironsource/yi;
.implements Lcom/ironsource/ln;


# static fields
.field private static final l:Ljava/lang/String; = "IronSourceAdsPublisherAgent"

.field private static m:Lcom/ironsource/si;


# instance fields
.field private a:Lcom/ironsource/sdk/controller/e;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/ma;

.field private e:Lcom/ironsource/mm;

.field private f:Z

.field private g:Lcom/ironsource/b9;

.field private h:Lcom/ironsource/sdk/controller/FeaturesManager;

.field private i:Lcom/ironsource/ah$a;

.field private j:Lcom/ironsource/m0$a;

.field private k:Lcom/ironsource/m0;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ironsource/si;->f:Z

    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/si;->h:Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-static {}, Lcom/ironsource/jl;->K()Lcom/ironsource/xe;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/xe;->g()Lcom/ironsource/ah$a;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-static {}, Lcom/ironsource/jl;->K()Lcom/ironsource/xe;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/xe;->C()Lcom/ironsource/m0$a;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    invoke-static {}, Lcom/ironsource/jl;->P()Lcom/ironsource/ye;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/ye;->D()Lcom/ironsource/m0;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    invoke-direct {p0, p1}, Lcom/ironsource/si;->b(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/si;->f:Z

    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/si;->h:Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-static {}, Lcom/ironsource/jl;->K()Lcom/ironsource/xe;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xe;->g()Lcom/ironsource/ah$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-static {}, Lcom/ironsource/jl;->K()Lcom/ironsource/xe;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xe;->C()Lcom/ironsource/m0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    invoke-static {}, Lcom/ironsource/jl;->P()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->D()Lcom/ironsource/m0;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    iput-object p1, p0, Lcom/ironsource/si;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/si;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/ironsource/si;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/ironsource/la;)Lcom/ironsource/gn;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/la;->i()Lcom/ironsource/fn;

    move-result-object p1

    check-cast p1, Lcom/ironsource/gn;

    return-object p1
.end method

.method static synthetic a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ironsource/si;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/si;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/ironsource/si;->a(Landroid/content/Context;I)Lcom/ironsource/si;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)Lcom/ironsource/si;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/si;

    monitor-enter v0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/si;->m:Lcom/ironsource/si;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ironsource/si;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/si;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/ironsource/si;->m:Lcom/ironsource/si;

    :cond_0
    sget-object p0, Lcom/ironsource/si;->m:Lcom/ironsource/si;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/yi;
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/ironsource/si;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/ironsource/yi;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/ironsource/yi;
    .locals 2

    const-class v0, Lcom/ironsource/si;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ironsource/si;->m:Lcom/ironsource/si;

    if-nez v1, :cond_0

    sget-object v1, Lcom/ironsource/zp;->a:Lcom/ironsource/zp$a;

    invoke-static {v1}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;)V

    new-instance v1, Lcom/ironsource/si;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/si;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/ironsource/si;->m:Lcom/ironsource/si;

    :cond_0
    sget-object p0, Lcom/ironsource/si;->m:Lcom/ironsource/si;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "adm"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private b(Lcom/ironsource/la;)Lcom/ironsource/in;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/la;->i()Lcom/ironsource/fn;

    move-result-object p1

    check-cast p1, Lcom/ironsource/in;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/si;)Lcom/ironsource/ma;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 13

    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/fj;->a(Landroid/content/Context;)Lcom/ironsource/fj;

    new-instance v1, Lcom/ironsource/ls;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/ls;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;Lcom/ironsource/ls;)V

    invoke-static {}, Lcom/ironsource/fj;->e()Lcom/ironsource/fj;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/fj;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/ma;

    invoke-direct {v1}, Lcom/ironsource/ma;-><init>()V

    iput-object v1, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    new-instance v1, Lcom/ironsource/b9;

    invoke-direct {v1}, Lcom/ironsource/b9;-><init>()V

    iput-object v1, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/ironsource/b9;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, p0, Lcom/ironsource/si;->h:Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getDebugMode()I

    move-result v1

    new-instance v2, Lcom/ironsource/mm;

    invoke-direct {v2}, Lcom/ironsource/mm;-><init>()V

    iput-object v2, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    new-instance v12, Lcom/ironsource/sdk/controller/e;

    iget-object v4, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    iget-object v5, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    sget-object v6, Lcom/ironsource/if;->a:Lcom/ironsource/if;

    iget-object v2, p0, Lcom/ironsource/si;->h:Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/FeaturesManager;->getDataManagerConfig()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/si;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/ironsource/si;->c:Ljava/lang/String;

    iget-object v11, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    move-object v2, v12

    move-object v3, p1

    move v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/ironsource/sdk/controller/e;-><init>(Landroid/content/Context;Lcom/ironsource/b9;Lcom/ironsource/ma;Lcom/ironsource/if;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mm;)V

    iput-object v12, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/Logger;->enableLogging(I)V

    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "C\'tor"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/si;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0}, Lcom/ironsource/mm;->d()V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0}, Lcom/ironsource/mm;->e()V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0, p1}, Lcom/ironsource/mm;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0}, Lcom/ironsource/mm;->b()V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0}, Lcom/ironsource/mm;->a()V

    iget-object v0, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {v0, p1}, Lcom/ironsource/mm;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/ironsource/si;->e:Lcom/ironsource/mm;

    invoke-virtual {p1}, Lcom/ironsource/mm;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/oi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadOnNewInstance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdsPublisherAgent"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/si$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/si$f;-><init>(Lcom/ironsource/si;Lcom/ironsource/oi;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/ironsource/la;)Lcom/ironsource/nn;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/la;->i()Lcom/ironsource/fn;

    move-result-object p1

    check-cast p1, Lcom/ironsource/nn;

    return-object p1
.end method

.method static synthetic c(Lcom/ironsource/si;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/si;->b:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/oi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/si;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/ironsource/fg;

    invoke-direct {v1}, Lcom/ironsource/fg;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callfailreason"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/oi;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isbiddinginstance"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/oi;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isoneflow"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/oi;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "demandsourcename"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    invoke-static {p1}, Lcom/ironsource/zi;->a(Lcom/ironsource/oi;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "producttype"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    sget-object v2, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/j0;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "custom_c"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v1

    sget-object v2, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/j0;->a(Ljava/lang/String;)Z

    sget-object v2, Lcom/ironsource/zp;->k:Lcom/ironsource/zp$a;

    invoke-virtual {v1}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadInAppBiddingAd failed decoding  ADM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdsPublisherAgent"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/oi;Ljava/util/Map;)V

    return-void
.end method

.method private d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/ironsource/si;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/si;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ironsource/sdk/controller/e;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "IronSourceAdsPublisherAgent"

    const-string v2, "release()"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/pa;->g()V

    iget-object v1, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    invoke-virtual {v1}, Lcom/ironsource/b9;->b()V

    iget-object v1, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/controller/e;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->destroy()V

    iput-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    :goto_0
    sput-object v0, Lcom/ironsource/si;->m:Lcom/ironsource/si;

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/oi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    invoke-virtual {v0, p1}, Lcom/ironsource/b9;->a(Landroid/app/Activity;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "showAd "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IronSourceAdsPublisherAgent"

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-virtual {p2}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v0, Lcom/ironsource/si$g;

    invoke-direct {v0, p0, p1, p3}, Lcom/ironsource/si$g;-><init>(Lcom/ironsource/si;Lcom/ironsource/la;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "enableLifeCycleListeners"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ironsource/si;->f:Z

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Lcom/ironsource/i;

    invoke-direct {p2, p0}, Lcom/ironsource/i;-><init>(Lcom/ironsource/ln;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    new-instance p2, Lcom/ironsource/fg;

    invoke-direct {p2}, Lcom/ironsource/fg;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "generalmessage"

    invoke-virtual {p2, v0, p1}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    sget-object p1, Lcom/ironsource/zp;->u:Lcom/ironsource/zp$a;

    invoke-virtual {p2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/dg$e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ironsource/nn;->c()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ironsource/in;->onInterstitialClose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/dg$e;Ljava/lang/String;Lcom/ironsource/w2;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/ironsource/la;->b(I)V

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p3}, Lcom/ironsource/nn;->a(Lcom/ironsource/w2;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    if-ne p1, p3, :cond_1

    invoke-direct {p0, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ironsource/in;->onInterstitialInitSuccess()V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ironsource/gn;->onBannerInitSuccess()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/dg$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object v0

    new-instance v1, Lcom/ironsource/fg;

    invoke-direct {v1}, Lcom/ironsource/fg;-><init>()V

    const-string v2, "demandsourcename"

    invoke-virtual {v1, v2, p2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p2

    const-string v1, "producttype"

    invoke-virtual {p2, v1, p1}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p2

    const-string v1, "callfailreason"

    invoke-virtual {p2, v1, p3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p2

    if-eqz v0, :cond_2

    sget-object v1, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {v0}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/j0;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "custom_c"

    invoke-virtual {p2, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    invoke-static {v0}, Lcom/ironsource/lg;->a(Lcom/ironsource/la;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isbiddinginstance"

    invoke-virtual {p2, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    invoke-virtual {v0}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/j0;->a(Ljava/lang/String;)Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ironsource/la;->b(I)V

    sget-object v1, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p3}, Lcom/ironsource/nn;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p3}, Lcom/ironsource/in;->onInterstitialInitFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p3}, Lcom/ironsource/gn;->onBannerLoadFail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object p1, Lcom/ironsource/zp;->i:Lcom/ironsource/zp$a;

    invoke-virtual {p2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/ironsource/dg$e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "Received Event Notification: "

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "IronSourceAdsPublisherAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for demand source: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/la;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "demandSourceName"

    if-ne p1, v0, :cond_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p4, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1, p3, p4}, Lcom/ironsource/in;->onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p4, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1, p3, p4}, Lcom/ironsource/nn;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v1}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p4, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "impressions"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/ironsource/gn;->onBannerShowSuccess()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/oi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadStartTime"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/ironsource/j0;->a(Ljava/lang/String;J)Z

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/oi;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isbiddinginstance"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/oi;->m()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isoneflow"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/oi;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "demandsourcename"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    invoke-static {p1}, Lcom/ironsource/zi;->a(Lcom/ironsource/oi;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "producttype"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "custom_c"

    invoke-virtual {v3, v1, v0}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    sget-object v0, Lcom/ironsource/zp;->f:Lcom/ironsource/zp$a;

    invoke-virtual {v2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdsPublisherAgent"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/l0;

    invoke-direct {v0, p1}, Lcom/ironsource/l0;-><init>(Lcom/ironsource/oi;)V

    iget-object v1, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    invoke-interface {v1, v0}, Lcom/ironsource/m0$a;->a(Lcom/ironsource/l0;)V

    iget-object v1, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object v3, Lcom/ironsource/k1;->a:Lcom/ironsource/k1;

    invoke-virtual {v0}, Lcom/ironsource/l0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/m0$a;->a(Lorg/json/JSONObject;Lcom/ironsource/k1;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ironsource/sr;

    invoke-direct {v1, v0}, Lcom/ironsource/sr;-><init>(Lcom/ironsource/l0;)V

    iget-object v0, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-interface {v0, v1}, Lcom/ironsource/ah$a;->a(Lcom/ironsource/qr;)V

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/oi;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/oi;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ironsource/nn;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/wf;)V
    .locals 1

    sget-object v0, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/la;->c()Lcom/ironsource/oi;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/ironsource/gn;->onBannerLoadSuccess(Lcom/ironsource/oi;Lcom/ironsource/wf;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ironsource/gn;->onBannerLoadFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/dg$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/ironsource/la;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/in;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/in;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/si;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/si;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    sget-object v1, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/fn;)Lcom/ironsource/la;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance p5, Lcom/ironsource/si$c;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/si$c;-><init>(Lcom/ironsource/si;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/nn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/nn;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/si;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/si;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    sget-object v1, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/fn;)Lcom/ironsource/la;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance p5, Lcom/ironsource/si$a;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/ironsource/si$a;-><init>(Lcom/ironsource/si;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;)V

    invoke-virtual {p4, p5}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object v1

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    const-string v3, "demandsourcename"

    invoke-virtual {v2, v3, p1}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ironsource/la;->c()Lcom/ironsource/oi;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    sget-object v4, Lcom/ironsource/k1;->b:Lcom/ironsource/k1;

    invoke-virtual {v2}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p2, v4, v5}, Lcom/ironsource/m0$a;->a(Lorg/json/JSONObject;Lcom/ironsource/k1;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    invoke-virtual {v2}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/ironsource/m0;->a(Ljava/lang/String;)Lcom/ironsource/l0;

    move-result-object p2

    new-instance v2, Lcom/ironsource/tr;

    invoke-direct {v2, p2}, Lcom/ironsource/tr;-><init>(Lcom/ironsource/l0;)V

    iget-object p2, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-interface {p2, v2}, Lcom/ironsource/ah$a;->a(Lcom/ironsource/qr;)V

    :cond_0
    invoke-static {v1, v0}, Lcom/ironsource/lg;->a(Lcom/ironsource/la;Lcom/ironsource/dg$e;)Lcom/ironsource/dg$e;

    move-result-object p2

    const-string v0, "producttype"

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p2

    invoke-static {v1}, Lcom/ironsource/lg;->a(Lcom/ironsource/la;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isbiddinginstance"

    invoke-virtual {p2, v2, v0}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p2

    sget-object v0, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {v1}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/j0;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "custom_c"

    invoke-virtual {p2, v3, v2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    invoke-virtual {v1}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/j0;->a(Ljava/lang/String;)Z

    invoke-direct {p0, v1}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/ironsource/la;->c()Lcom/ironsource/oi;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/in;->onInterstitialLoadSuccess(Lcom/ironsource/oi;)V

    :cond_1
    sget-object p2, Lcom/ironsource/zp;->l:Lcom/ironsource/zp$a;

    invoke-virtual {p1}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/si$b;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/si$b;-><init>(Lcom/ironsource/si;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/oi;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAdAvailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdsPublisherAgent"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/si;->d:Lcom/ironsource/ma;

    sget-object v1, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/la;->d()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/e;->d()V

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/oi;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    invoke-virtual {v0, p1}, Lcom/ironsource/b9;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, p2, p3}, Lcom/ironsource/si;->a(Lcom/ironsource/oi;Ljava/util/Map;)V

    return-void
.end method

.method public b(Lcom/ironsource/dg$e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ironsource/in;->onInterstitialOpen()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ironsource/nn;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/ironsource/oi;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroyInstance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdsPublisherAgent"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    sget-object v1, Lcom/ironsource/k1;->e:Lcom/ironsource/k1;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/m0$a;->a(Lcom/ironsource/k1;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    invoke-virtual {p1}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/m0;->a(Ljava/lang/String;)Lcom/ironsource/l0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/rr;

    invoke-direct {v1, v0}, Lcom/ironsource/rr;-><init>(Lcom/ironsource/l0;)V

    iget-object v0, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-interface {v0, v1}, Lcom/ironsource/ah$a;->a(Lcom/ironsource/qr;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/si$h;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/si$h;-><init>(Lcom/ironsource/si;Lcom/ironsource/oi;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/la;->c()Lcom/ironsource/oi;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    sget-object v2, Lcom/ironsource/k1;->c:Lcom/ironsource/k1;

    invoke-virtual {v0}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ironsource/m0$a;->a(Lcom/ironsource/k1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    invoke-virtual {v0}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/m0;->a(Ljava/lang/String;)Lcom/ironsource/l0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/vr;

    invoke-direct {v1, v0}, Lcom/ironsource/vr;-><init>(Lcom/ironsource/l0;)V

    iget-object v0, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-interface {v0, v1}, Lcom/ironsource/ah$a;->a(Lcom/ironsource/qr;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ironsource/in;->onInterstitialShowSuccess()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/la;->c()Lcom/ironsource/oi;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/si;->j:Lcom/ironsource/m0$a;

    sget-object v2, Lcom/ironsource/k1;->d:Lcom/ironsource/k1;

    invoke-virtual {v0}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ironsource/m0$a;->a(Lcom/ironsource/k1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/si;->c(Lcom/ironsource/oi;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/si;->k:Lcom/ironsource/m0;

    invoke-virtual {v0}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/m0;->a(Ljava/lang/String;)Lcom/ironsource/l0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/ur;

    invoke-direct {v1, v0}, Lcom/ironsource/ur;-><init>(Lcom/ironsource/l0;)V

    iget-object v0, p0, Lcom/ironsource/si;->i:Lcom/ironsource/ah$a;

    invoke-interface {v0, v1}, Lcom/ironsource/ah$a;->a(Lcom/ironsource/qr;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/ironsource/in;->onInterstitialShowFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "demandSourceName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/si$d;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/si$d;-><init>(Lcom/ironsource/si;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/si;->g:Lcom/ironsource/b9;

    invoke-virtual {v0, p1}, Lcom/ironsource/b9;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/e;->f()V

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c(Lcom/ironsource/dg$e;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ironsource/nn;->d()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ironsource/in;->onInterstitialClick()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/ironsource/si;->a(Lcom/ironsource/la;)Lcom/ironsource/gn;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ironsource/gn;->onBannerClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/nn;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object v1

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    const-string v3, "callfailreason"

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    const-string v4, "demandsourcename"

    invoke-virtual {v3, v4, p1}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/ironsource/lg;->a(Lcom/ironsource/la;Lcom/ironsource/dg$e;)Lcom/ironsource/dg$e;

    move-result-object p1

    const-string v0, "producttype"

    invoke-virtual {v2, v0, p1}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p1

    invoke-virtual {v1}, Lcom/ironsource/la;->e()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/ironsource/rb;->E:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/rb;->F:Ljava/lang/Object;

    :goto_0
    const-string v3, "generalmessage"

    invoke-virtual {p1, v3, v0}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p1

    invoke-static {v1}, Lcom/ironsource/lg;->a(Lcom/ironsource/la;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isbiddinginstance"

    invoke-virtual {p1, v3, v0}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object p1

    sget-object v0, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    invoke-virtual {v1}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/j0;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "custom_c"

    invoke-virtual {p1, v4, v3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    invoke-virtual {v1}, Lcom/ironsource/la;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/j0;->a(Ljava/lang/String;)Z

    invoke-direct {p0, v1}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/ironsource/in;->onInterstitialLoadFailed(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/ironsource/zp;->g:Lcom/ironsource/zp$a;

    invoke-virtual {v2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/si;->a:Lcom/ironsource/sdk/controller/e;

    new-instance v1, Lcom/ironsource/si$e;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/si$e;-><init>(Lcom/ironsource/si;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/ironsource/oi;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ironsource/oi;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/oi;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ironsource/si;->a(Lcom/ironsource/oi;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ironsource/dg$e;->c:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/si;->c(Lcom/ironsource/la;)Lcom/ironsource/nn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ironsource/nn;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInterstitialAdRewarded(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/si;->d(Lcom/ironsource/dg$e;Ljava/lang/String;)Lcom/ironsource/la;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/si;->b(Lcom/ironsource/la;)Lcom/ironsource/in;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/ironsource/in;->onInterstitialAdRewarded(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/si;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/si;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/si;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/si;->c(Landroid/app/Activity;)V

    return-void
.end method
