.class Lcom/tencent/android/tpush/service/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/t;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/s;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/s;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tencent/android/tpush/service/t;->a:Lcom/tencent/android/tpush/service/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 4

    .prologue
    .line 111
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnCallback onResponse request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez p2, :cond_4

    .line 113
    if-eqz p1, :cond_0

    .line 117
    const/4 v1, 0x7

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->a(ILjava/util/List;)V

    .line 118
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->unregInfoList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->updateUnregUninList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 122
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/android/tpush/service/c/a;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 125
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->msgClickList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 129
    :cond_0
    check-cast p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;

    .line 130
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->timeUs:J

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/tencent/android/tpush/service/c/a;->a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 135
    :cond_1
    const-string v1, "PushServiceNetworkHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnCallback onResponse rsp==null?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz p3, :cond_2

    .line 138
    iget-object v0, p0, Lcom/tencent/android/tpush/service/t;->a:Lcom/tencent/android/tpush/service/s;

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v1

    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->confVersion:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/s;->a(ZJ)V

    .line 159
    :cond_2
    :goto_1
    return-void

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_4
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> reconn failed responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
