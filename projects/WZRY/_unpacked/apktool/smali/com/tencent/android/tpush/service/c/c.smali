.class Lcom/tencent/android/tpush/service/c/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/t;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/data/MessageId;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/android/tpush/service/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/c/a;Lcom/tencent/android/tpush/data/MessageId;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/tencent/android/tpush/service/c/c;->c:Lcom/tencent/android/tpush/service/c/a;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    iput-object p3, p0, Lcom/tencent/android/tpush/service/c/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 310
    if-nez p2, :cond_4

    .line 312
    :try_start_0
    instance-of v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    if-eqz v1, :cond_3

    .line 313
    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    .line 315
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;->msgReportList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->a(ILjava/util/List;)V

    .line 317
    iget-object v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;->msgReportList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;->msgReportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    const-string v1, "SrvMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceAcking ack failed with null tReq.msgReportList rsp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/c;->c:Lcom/tencent/android/tpush/service/c/a;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/c/c;->b:Landroid/content/Context;

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;->msgReportList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 332
    :goto_1
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(I)V

    .line 333
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/c/g;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/c/c;->c:Lcom/tencent/android/tpush/service/c/a;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/c/c;->b:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/android/tpush/service/c/g;-><init>(Lcom/tencent/android/tpush/service/c/a;Landroid/content/Context;I)V

    const/4 v2, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v6}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    .line 348
    :goto_2
    return-void

    .line 318
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_3
    const-string v0, "SrvMessageManager"

    const-string v1, "requestServiceAck -> Invalid ack callback"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    :try_start_2
    const-string v0, "SrvMessageManager"

    const-string v1, "requestServiceAck -> Invalid ack callback"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-static {v6}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    throw v0

    .line 342
    :cond_4
    invoke-static {v6}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    .line 343
    const-string v1, "SrvMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> ServiceAcking ack onMessageSendFailed responseCode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 6

    .prologue
    .line 372
    const-string v1, "SrvMessageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceAcking ack onMessageDiscarded msgId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    .line 375
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/c/c;->a:Lcom/tencent/android/tpush/data/MessageId;

    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 353
    const-string v0, "SrvMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceAcking ack onMessageSendFailed  responseCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/c/a;->b(Z)Z

    .line 359
    return-void
.end method
