.class public Lcom/tencent/gcloud/map/MapUIService;
.super Ljava/lang/Object;
.source "MapUIService.java"


# static fields
.field public static Instance:Lcom/tencent/gcloud/map/MapUIService;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMapCallBack:Lcom/tencent/friday/uikit/IFridayCallBack;

.field mMapProvider:Lcom/tencent/friday/uikit/IFriday;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/tencent/gcloud/map/MapUIService;

    invoke-direct {v0}, Lcom/tencent/gcloud/map/MapUIService;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/map/MapUIService;->Instance:Lcom/tencent/gcloud/map/MapUIService;

    .line 74
    const-string v0, "MapUIService"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MapUISerive"

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapUIService;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/tencent/gcloud/map/MapUIService$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/map/MapUIService$1;-><init>(Lcom/tencent/gcloud/map/MapUIService;)V

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapUIService;->mMapCallBack:Lcom/tencent/friday/uikit/IFridayCallBack;

    .line 30
    new-instance v0, Lcom/tencent/friday/uikit/FridayProvider;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/FridayProvider;-><init>()V

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapUIService;->mMapProvider:Lcom/tencent/friday/uikit/IFriday;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/gcloud/map/MapUIService;[BI[BI)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/gcloud/map/MapUIService;->nativeOnReceiveAction([BI[BI)V

    return-void
.end method

.method private native nativeInit()V
.end method

.method private native nativeOnReceiveAction([BI[BI)V
.end method


# virtual methods
.method public Initialize(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    const-string v0, "MapUISerive"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapUIService;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/tencent/gcloud/map/MapUIService;->nativeInit()V

    .line 38
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapUIService;->mMapProvider:Lcom/tencent/friday/uikit/IFriday;

    iget-object v1, p0, Lcom/tencent/gcloud/map/MapUIService;->mMapCallBack:Lcom/tencent/friday/uikit/IFridayCallBack;

    invoke-interface {v0, p1, v1}, Lcom/tencent/friday/uikit/IFriday;->init(Landroid/app/Activity;Lcom/tencent/friday/uikit/IFridayCallBack;)V

    .line 39
    return-void
.end method

.method public sendAction([BI[BI)V
    .locals 1
    .param p1, "action"    # [B
    .param p2, "actionLength"    # I
    .param p3, "parameter"    # [B
    .param p4, "parameterLength"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapUIService;->mMapProvider:Lcom/tencent/friday/uikit/IFriday;

    invoke-interface {v0, p1, p3}, Lcom/tencent/friday/uikit/IFriday;->call([B[B)V

    .line 44
    return-void
.end method
