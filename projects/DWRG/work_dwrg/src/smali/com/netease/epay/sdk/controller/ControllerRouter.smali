.class public Lcom/netease/epay/sdk/controller/ControllerRouter;
.super Ljava/lang/Object;
.source "ControllerRouter.java"


# static fields
.field private static controllers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllControllers()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 87
    return-void
.end method

.method private static dealError(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/controller/ControllerResult;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0
.end method

.method public static getController(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeController(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;

    .prologue
    .line 28
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient;->isCallbackNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/netease/epay/sdk/ResponseParser;

    invoke-direct {v0}, Lcom/netease/epay/sdk/ResponseParser;-><init>()V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/network/HttpClient;->setParseCallback(Lcom/netease/epay/sdk/base/network/IParseCallback;)V

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/netease/epay/sdk/controller/RegisterCenter;->getController(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const-string v0, "-1000"

    const-string v1, "\u627e\u4e0d\u5230key\u5bf9\u5e94\u7684controller"

    invoke-static {v0, v1, p3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->dealError(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    if-eqz p3, :cond_3

    .line 38
    invoke-virtual {p3, p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;->setKey(Ljava/lang/String;)V

    .line 42
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/json/JSONObject;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/netease/epay/sdk/controller/ControllerCallback;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    const-string v0, "-1000"

    const-string v1, "\u672a\u627e\u5230controller\u5bf9\u5e94\u7684\u6784\u9020\u51fd\u6570"

    invoke-static {v0, v1, p3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->dealError(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 56
    const-string v0, "-1000"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64cd\u4f5c\u5931\u8d25\uff0c\u6682\u4e0d\u652f\u6301\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->dealError(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 48
    :cond_4
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/controller/BaseController;

    .line 50
    if-eqz v0, :cond_1

    .line 51
    sget-object v1, Lcom/netease/epay/sdk/controller/ControllerRouter;->controllers:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->start(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const-string v0, "-1000"

    const-string v1, "\u64cd\u4f5c\u5931\u8d25:ControllerRouter:route"

    invoke-static {v0, v1, p3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->dealError(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method
