.class public abstract Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;,
        Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Rsp:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final IDENTITY:J = 0x457L

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TIMEOUT:I = 0x1388

.field private static final what_retry:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

.field private retryAuthorizeCount:I

.field protected final rspClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TRsp;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;Ljava/lang/Class;)V
    .locals 2
    .param p1, "messageListener"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;",
            "Ljava/lang/Class",
            "<TRsp;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    .local p2, "rspClass":Ljava/lang/Class;, "Ljava/lang/Class<TRsp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "BaseProxy"

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$2;-><init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->mainHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->rspClass:Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->prepareNetWorkState()V

    .line 42
    iput-object p1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    .line 43
    return-void
.end method

.method private prepareNetWorkState()V
    .locals 7

    .prologue
    .line 46
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getConnectionManager()Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->getAccessHosts()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "mHosts":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;>;"
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v3

    const-wide/16 v4, 0x457

    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getConnectionManager()Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->getDefaultKey()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/qt/base/net/NetworkEngine;->setDefultkey(J[B)V

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 49
    .local v0, "ips":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 50
    .local v2, "port":[I
    invoke-static {v1, v0, v2}, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;->split(Ljava/util/List;[Ljava/lang/String;[I)V

    .line 52
    iget-object v4, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareAuthorize, host[0]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/tencent/qqgamemi/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v2}, Lcom/tencent/qt/base/net/NetworkEngine;->setHosts(I[Ljava/lang/String;[I)V

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected abstract getCommand()I
.end method

.method protected abstract getRequestContent()[B
.end method

.method protected abstract getSubcmd()I
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V
    .locals 4
    .param p1, "status"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    if-ne p1, v1, :cond_1

    .line 130
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryDelayIfNeed(I)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryDelayIfNeed pass : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    if-nez v1, :cond_2

    .line 177
    .end local p2    # "param":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 132
    .restart local p2    # "param":Ljava/lang/Object;
    :cond_1
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryDelayIfNeed(I)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    const-string v2, "messageListener is not null!"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$3;->$SwitchMap$com$tencent$qqgamemi$protocol$pbproxy$BaseProxy$ProxyStatus:[I

    invoke-virtual {p1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 139
    :pswitch_0
    if-eqz p2, :cond_0

    .line 140
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "erro":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    sget-object v2, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_BUILD:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onMessage error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v0    # "erro":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    sget-object v2, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onMessage error: erroNetWork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :pswitch_2
    if-eqz p2, :cond_3

    .line 154
    instance-of v1, p2, Lcom/tencent/qt/base/net/Request;

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    check-cast p2, Lcom/tencent/qt/base/net/Request;

    .end local p2    # "param":Ljava/lang/Object;
    invoke-interface {v1, p2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onTimeOut(Lcom/tencent/qt/base/net/Request;)V

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onMessage error: Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    .restart local p2    # "param":Ljava/lang/Object;
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    sget-object v2, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_UNKNOW:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v3, "null result"

    invoke-interface {v1, v2, v3}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onMessage error: null result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 166
    :pswitch_4
    if-eqz p2, :cond_0

    .line 167
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 168
    check-cast v0, Ljava/lang/String;

    .line 169
    .restart local v0    # "erro":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    sget-object v2, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_SERVER:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-interface {v1, v2, v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onMessage error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract parseRspPB(Lcom/squareup/wire/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRsp;)V"
        }
    .end annotation
.end method

.method public resetQueryCount()V
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryAuthorizeCount:I

    .line 186
    return-void
.end method

.method public retryDelayIfNeed(I)V
    .locals 6
    .param p1, "delayTime"    # I

    .prologue
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    const/4 v1, 0x0

    .line 189
    iget v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryAuthorizeCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    .line 190
    .local v0, "needRetry":Z
    :goto_0
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryFromAuthorizeDelayIfNeed: needRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryAuthorizeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->retryAuthorizeCount:I

    .line 193
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->mainHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    :cond_0
    return-void

    .end local v0    # "needRetry":Z
    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public sendRequest()V
    .locals 12

    .prologue
    .line 59
    .local p0, "this":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;, "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy<TRsp;>;"
    :try_start_0
    new-instance v10, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getCommand()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getSubcmd()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getRequestContent()[B

    move-result-object v2

    invoke-direct {v10, v0, v1, v2}, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;-><init>(II[B)V

    .line 60
    .local v10, "protoRequest":Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;
    iget-object v5, v10, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;->reverve:[B

    .line 61
    .local v5, "reserve":[B
    iget-object v6, v10, Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;->extra:[B

    .line 62
    .local v6, "extra":[B
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->TAG:Ljava/lang/String;

    const-string v1, "sendRequest: %04x,%02x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getCommand()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getSubcmd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getCommand()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getSubcmd()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->getRequestContent()[B

    move-result-object v4

    new-instance v7, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;

    invoke-direct {v7, p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$1;-><init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;)V

    const/16 v8, 0x1388

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v11

    .line 92
    .local v11, "ret":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    .line 93
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v5    # "reserve":[B
    .end local v6    # "extra":[B
    .end local v10    # "protoRequest":Lcom/tencent/qqgamemi/mgc/connection/ProtoFactory$ProtoRequest;
    .end local v11    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v9

    .line 96
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_BUILD:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->handlerFailResult(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/Object;)V

    goto :goto_0
.end method
