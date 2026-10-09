.class Lcom/tencent/android/tpush/b/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tencent/android/tpush/b/i;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    iput-object p2, p0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 285
    sget-boolean v4, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v4, :cond_0

    .line 286
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Action -> handleRemotePushMessage"

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "msgId"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string/jumbo v5, "timestamps"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "server_time"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string/jumbo v5, "ttl"

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string/jumbo v5, "type"

    const-wide/16 v14, 0x1

    invoke-virtual {v4, v5, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 295
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_1

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    .line 297
    const-wide/16 v16, 0x3e8

    div-long v16, v10, v16

    sub-long v16, v4, v16

    .line 298
    sub-long v4, v4, v16

    sub-long/2addr v4, v8

    .line 300
    const-wide/16 v16, 0x0

    cmp-long v13, v6, v16

    if-ltz v13, :cond_1

    if-lez v12, :cond_1

    int-to-long v0, v12

    move-wide/from16 v16, v0

    cmp-long v13, v16, v4

    if-gez v13, :cond_1

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageDistribute check server time failed, msg discarded cause msg is timeout, msg.ttl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<reviseMaxTimeoutSec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 313
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "accId"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "date"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "extra_push_time"

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "busiMsgId"

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "multiPkg"

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 321
    new-instance v19, Lcom/tencent/android/tpush/data/MessageId;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/android/tpush/data/MessageId;-><init>()V

    .line 322
    move-object/from16 v0, v19

    iput-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    .line 323
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-short v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isAck:S

    .line 324
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "extra_host"

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->host:J

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "extra_port"

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/tencent/android/tpush/data/MessageId;->port:I

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v5, "extra_pact"

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    move-object/from16 v0, v19

    iput-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->pact:B

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v4}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v4

    move-object/from16 v0, v19

    iput-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->apn:B

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v4}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/e/h;->h(Landroid/content/Context;)B

    move-result v4

    move-object/from16 v0, v19

    iput-byte v4, v0, Lcom/tencent/android/tpush/data/MessageId;->isp:B

    .line 330
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->pushTime:J

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string/jumbo v5, "svrPkgName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/tencent/android/tpush/data/MessageId;->serviceHost:Ljava/lang/String;

    .line 332
    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    .line 333
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 334
    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->busiMsgId:J

    .line 335
    move-object/from16 v0, v19

    iput-wide v8, v0, Lcom/tencent/android/tpush/data/MessageId;->timestamp:J

    .line 336
    move-object/from16 v0, v19

    iput-wide v14, v0, Lcom/tencent/android/tpush/data/MessageId;->msgType:J

    .line 337
    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/tencent/android/tpush/data/MessageId;->multiPkg:J

    .line 338
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/tencent/android/tpush/data/MessageId;->date:Ljava/lang/String;

    .line 340
    const-wide/32 v4, 0xf731400

    .line 342
    if-lez v12, :cond_4

    .line 343
    int-to-long v4, v12

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 348
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-lez v6, :cond_5

    .line 349
    sub-long v6, v10, v8

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    add-long v6, v6, v26

    add-long/2addr v4, v6

    .line 354
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string/jumbo v7, "time_gap"

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v10

    sub-long v28, v26, v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 355
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    const-string v7, "expire_time"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 357
    sget-boolean v6, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v6, :cond_3

    .line 358
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">> msg from service,  @msgId="

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " @accId="

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/tencent/android/tpush/data/MessageId;->accessId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " @timeUs="

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " @recTime="

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/tencent/android/tpush/data/MessageId;->receivedTime:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, " @msg.date="

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " @msg.busiMsgId="

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " @msg.timestamp="

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @msg.type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @msg.multiPkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @msg.serverTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @msg.ttl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @expire_time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @currentTimeMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v4}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Lcom/tencent/android/tpush/b/d;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 381
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNotifiedMsgIds contain the msgId id, return"

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    :cond_4
    const-wide/16 v28, 0x0

    cmp-long v6, v6, v28

    if-lez v6, :cond_2

    if-nez v12, :cond_2

    .line 345
    const-wide/16 v4, 0x7530

    goto/16 :goto_1

    .line 352
    :cond_5
    add-long v4, v4, v26

    goto/16 :goto_2

    .line 384
    :cond_6
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v5}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v4, v5, v13, v6, v7}, Lcom/tencent/android/tpush/b/d;->b(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 385
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> msgId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been acked, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_7
    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/tencent/android/tpush/data/MessageId;->pkgName:Ljava/lang/String;

    .line 390
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/tencent/android/tpush/data/MessageId;->id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 391
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v5}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v13, v0}, Lcom/tencent/android/tpush/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/data/MessageId;)V

    .line 395
    :cond_8
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    invoke-static {v5}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Lcom/tencent/android/tpush/b/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/k;->b:Lcom/tencent/android/tpush/b/i;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/android/tpush/b/k;->a:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
