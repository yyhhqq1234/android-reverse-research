.class public Lcom/pay/http/APHttpHandle;
.super Landroid/os/Handler;
.source "APHttpHandle.java"


# static fields
.field private static handle:Lcom/pay/http/APHttpHandle;

.field private static lock:[B


# instance fields
.field private observerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/IAPHttpAnsObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/pay/http/APHttpHandle;->lock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static getIntanceHandel()Lcom/pay/http/APHttpHandle;
    .locals 4

    .prologue
    .line 25
    sget-object v2, Lcom/pay/http/APHttpHandle;->lock:[B

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Lcom/pay/http/APHttpHandle;->handle:Lcom/pay/http/APHttpHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 28
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v1, Lcom/pay/http/APHttpHandle;

    invoke-direct {v1}, Lcom/pay/http/APHttpHandle;-><init>()V

    sput-object v1, Lcom/pay/http/APHttpHandle;->handle:Lcom/pay/http/APHttpHandle;

    .line 36
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    sget-object v1, Lcom/pay/http/APHttpHandle;->handle:Lcom/pay/http/APHttpHandle;

    return-object v1

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 32
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "APHttpHandle"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private runObserverOnMainThread(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 63
    .local v4, "what":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/pay/http/APBaseHttpAns;

    .line 64
    .local v2, "object":Lcom/pay/http/APBaseHttpAns;
    invoke-virtual {v2}, Lcom/pay/http/APBaseHttpAns;->getHttpReqKey()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pay/http/IAPHttpAnsObserver;

    .line 67
    .local v3, "observer":Lcom/pay/http/IAPHttpAnsObserver;
    if-nez v3, :cond_0

    .line 68
    const-string v5, "HttpHandler"

    const-string v6, "observer is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "object":Lcom/pay/http/APBaseHttpAns;
    .end local v3    # "observer":Lcom/pay/http/IAPHttpAnsObserver;
    .end local v4    # "what":I
    :goto_0
    return-void

    .line 71
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "object":Lcom/pay/http/APBaseHttpAns;
    .restart local v3    # "observer":Lcom/pay/http/IAPHttpAnsObserver;
    .restart local v4    # "what":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/pay/http/APHttpHandle;->unregister(Ljava/lang/String;)V

    .line 72
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-interface {v3, v2}, Lcom/pay/http/IAPHttpAnsObserver;->onFinish(Lcom/pay/http/APBaseHttpAns;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "object":Lcom/pay/http/APBaseHttpAns;
    .end local v3    # "observer":Lcom/pay/http/IAPHttpAnsObserver;
    .end local v4    # "what":I
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "object":Lcom/pay/http/APBaseHttpAns;
    .restart local v3    # "observer":Lcom/pay/http/IAPHttpAnsObserver;
    .restart local v4    # "what":I
    :pswitch_1
    :try_start_1
    invoke-interface {v3, v2}, Lcom/pay/http/IAPHttpAnsObserver;->onError(Lcom/pay/http/APBaseHttpAns;)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-interface {v3, v2}, Lcom/pay/http/IAPHttpAnsObserver;->onStop(Lcom/pay/http/APBaseHttpAns;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/pay/http/APHttpHandle;->runObserverOnMainThread(Landroid/os/Message;)V

    .line 58
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/http/APHttpHandle;->handle:Lcom/pay/http/APHttpHandle;

    .line 42
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/pay/http/APHttpHandle;->observerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    return-void
.end method
