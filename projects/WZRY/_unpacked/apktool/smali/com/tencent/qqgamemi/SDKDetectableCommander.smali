.class public abstract Lcom/tencent/qqgamemi/SDKDetectableCommander;
.super Lcom/tencent/qqgamemi/SDKCommander;
.source "SDKDetectableCommander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;,
        Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeautureConstant;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKDetectableCommander"


# instance fields
.field private cacheCheckSDKFeatureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isCheckFeatureCalled:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile sdkFeatureCache:I

.field private sendUnityMsgCount:I

.field volatile videoBusId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/tencent/qqgamemi/SDKCommander;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->cacheCheckSDKFeatureCallbacks:Ljava/util/List;

    .line 28
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->isCheckFeatureCalled:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    .line 30
    iput v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sendUnityMsgCount:I

    .line 31
    iput v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->videoBusId:I

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 25
    iget v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->isCheckFeatureCalled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qqgamemi/SDKDetectableCommander;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->isCheckFeatureCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->notifyGameMessageEvent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqgamemi/SDKDetectableCommander;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->cacheCheckSDKFeatureCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$408(Lcom/tencent/qqgamemi/SDKDetectableCommander;)I
    .locals 2
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 25
    iget v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sendUnityMsgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sendUnityMsgCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->checkSDKFeatrueInner(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->handlerSDKFeatureMessage(Landroid/content/Context;I)V

    return-void
.end method

.method private checkSDKFeatrueInner(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/tencent/component/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const-string v2, "SDKDetectableCommander"

    const-string v3, "checkSDKFeature isNetworkAvailable is false"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->handlerSDKFeatureMessage(Landroid/content/Context;I)V

    .line 215
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->isDeviceEnable(Landroid/content/Context;)Z

    move-result v1

    .line 185
    .local v1, "isDeviceEnable":Z
    const-string v2, "SDKDetectableCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSDKFeature isDeviceEnable :\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez v1, :cond_1

    .line 187
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->handlerSDKFeatureMessage(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v1    # "isDeviceEnable":Z
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v5}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->handlerSDKFeatureMessage(Landroid/content/Context;I)V

    .line 213
    const-string v2, "SDKDetectableCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSDKFeature fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isDeviceEnable":Z
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->getInstance()Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    move-result-object v2

    const-string v3, "com.tencent.qqgamemi.plugin.dpsrp"

    invoke-virtual {p0, v3}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->getPluginVersionCode(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;

    invoke-direct {v4, p0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;-><init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->requestWhiteListInfo(ILcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handlerSDKFeatureMessage(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdkFeature"    # I

    .prologue
    .line 118
    iget v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    if-eq v1, p2, :cond_0

    .line 119
    iput p2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    .line 121
    :cond_0
    const-string v1, "SDKDetectableCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerSDKFeatureMessage sdkFeatureCache :\u3000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->notifyCheckSDKFeatureCallback(I)V

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sendUnityMsgCount:I

    if-ge v0, v1, :cond_1

    .line 124
    iget v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sdkFeatureCache:I

    invoke-direct {p0, p1, v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->notifyGameMessageEvent(Landroid/content/Context;I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->sendUnityMsgCount:I

    .line 127
    return-void
.end method

.method private notifyCheckSDKFeatureCallback(I)V
    .locals 5
    .param p1, "sdkFeature"    # I

    .prologue
    .line 130
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->cacheCheckSDKFeatureCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, "sListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    .line 133
    .local v0, "checkSDKFeatureCallback":Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;
    const-string v2, "SDKDetectableCommander"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCheckSDKFeatureCallback sdkFeature :\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, p1}, Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;->check(I)V

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 137
    .end local v0    # "checkSDKFeatureCallback":Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;
    :cond_0
    return-void
.end method

.method private notifyGameMessageEvent(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchs"    # I

    .prologue
    .line 105
    const-string v0, "SDKDetectableCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGameMessageEvent sdkFeature :\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander$3;-><init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method


# virtual methods
.method public checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkSDKFeatureCallback"    # Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    .prologue
    .line 140
    new-instance v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander$4;-><init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public getPluginVersionCode(Ljava/lang/String;)I
    .locals 4
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCurPluginVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const-string v1, "SDKDetectableCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPluginVersionCode fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .param p3, "checkFeauture"    # I

    .prologue
    .line 74
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander$1;-><init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 86
    :cond_0
    return-void
.end method

.method public writeCmdWithCheckOrFeature(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .param p3, "checkFeauture"    # I

    .prologue
    .line 89
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tencent/qqgamemi/SDKDetectableCommander$2;-><init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 101
    :cond_0
    return-void
.end method
