.class public Lcom/oppo/oms/sdk/OmsService;
.super Ljava/lang/Object;
.source "OmsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/oms/sdk/OmsService$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OmsService"

.field public static sInstance:Lcom/oppo/oms/sdk/OmsService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOmsServiceHelper:Lcom/oppo/oms/sdk/OmsServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/oppo/oms/sdk/OmsService;

    invoke-direct {v0}, Lcom/oppo/oms/sdk/OmsService;-><init>()V

    sput-object v0, Lcom/oppo/oms/sdk/OmsService;->sInstance:Lcom/oppo/oms/sdk/OmsService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "OmsService"

    const-string v1, "OmsService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/oms/sdk/OmsService;)Lcom/oppo/oms/sdk/OmsServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/oms/sdk/OmsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsService;->mOmsServiceHelper:Lcom/oppo/oms/sdk/OmsServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/oms/sdk/OmsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/oms/sdk/OmsService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/oppo/oms/sdk/OmsService;
    .locals 2

    .prologue
    .line 39
    const-string v0, "OmsService"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/oppo/oms/sdk/OmsService;->sInstance:Lcom/oppo/oms/sdk/OmsService;

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 45
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oppo/oms/sdk/OmsService;->mHandler:Landroid/os/Handler;

    .line 48
    :cond_0
    return-void
.end method

.method private initOmsServiceHelper(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-direct {v0, p1}, Lcom/oppo/oms/sdk/OmsServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/oms/sdk/OmsService;->mOmsServiceHelper:Lcom/oppo/oms/sdk/OmsServiceHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public requestFeature(Landroid/content/Context;Lcom/oppo/oms/sdk/entity/FeatureRequest;)Lcom/oppo/oms/sdk/entity/Result;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/oppo/oms/sdk/entity/FeatureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppo/oms/sdk/entity/FeatureRequest;",
            ")",
            "Lcom/oppo/oms/sdk/entity/Result",
            "<",
            "Lcom/oppo/oms/sdk/entity/ErrorEntity;",
            "Lcom/oppo/oms/sdk/entity/FeatureEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "OmsService"

    const-string v1, "requestFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1}, Lcom/oppo/oms/sdk/OmsService;->initOmsServiceHelper(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsService;->mOmsServiceHelper:Lcom/oppo/oms/sdk/OmsServiceHelper;

    invoke-virtual {v0, p2}, Lcom/oppo/oms/sdk/OmsServiceHelper;->requestFeature(Lcom/oppo/oms/sdk/entity/FeatureRequest;)Lcom/oppo/oms/sdk/entity/Result;

    move-result-object v0

    return-object v0
.end method

.method public requestFeature(Landroid/content/Context;Lcom/oppo/oms/sdk/entity/FeatureRequest;Lcom/oppo/oms/sdk/OmsService$CallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/oppo/oms/sdk/entity/FeatureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oppo/oms/sdk/entity/FeatureRequest;",
            "Lcom/oppo/oms/sdk/OmsService$CallBack",
            "<",
            "Lcom/oppo/oms/sdk/entity/Result",
            "<",
            "Lcom/oppo/oms/sdk/entity/ErrorEntity;",
            "Lcom/oppo/oms/sdk/entity/FeatureEntity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "callBack":Lcom/oppo/oms/sdk/OmsService$CallBack;, "Lcom/oppo/oms/sdk/OmsService$CallBack<Lcom/oppo/oms/sdk/entity/Result<Lcom/oppo/oms/sdk/entity/ErrorEntity;Lcom/oppo/oms/sdk/entity/FeatureEntity;>;>;"
    const-string v0, "OmsService"

    const-string v1, "requestFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1}, Lcom/oppo/oms/sdk/OmsService;->initOmsServiceHelper(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/oppo/oms/sdk/OmsService;->initHandler()V

    .line 54
    invoke-static {}, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->getInstance()Lcom/oppo/oms/sdk/Util/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oppo/oms/sdk/OmsService$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/oppo/oms/sdk/OmsService$1;-><init>(Lcom/oppo/oms/sdk/OmsService;Lcom/oppo/oms/sdk/entity/FeatureRequest;Lcom/oppo/oms/sdk/OmsService$CallBack;)V

    invoke-virtual {v0, v1}, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
