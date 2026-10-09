.class final Lc/t/m/g/dd$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lc/t/m/g/dd;


# direct methods
.method constructor <init>(Lc/t/m/g/dd;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lc/t/m/g/dd$1;->b:Lc/t/m/g/dd;

    iput-object p2, p0, Lc/t/m/g/dd$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/dd$1;->b:Lc/t/m/g/dd;

    iget-object v2, v2, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 157
    move-object/from16 v0, p0

    iget-object v6, v0, Lc/t/m/g/dd$1;->b:Lc/t/m/g/dd;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc/t/m/g/dd$1;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v8, v6, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v3, v2

    :goto_0
    iget-boolean v2, v6, Lc/t/m/g/dd;->g:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/dd$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v3, Lc/t/m/g/dd$a;->d:Lc/t/m/g/dd$a;

    if-ne v3, v2, :cond_1

    const-string v3, "TxRequestSender"

    const-string v4, "run: state=[shutdown]"

    invoke-static {v3, v4}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void

    .line 157
    :cond_1
    const-wide/16 v4, 0x0

    sget-boolean v3, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->COMPHTTPIO:Z

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v6, Lc/t/m/g/dd;->b:Lc/t/m/g/cj;

    invoke-static {v2}, Lc/t/m/g/dd$a;->b(Lc/t/m/g/dd$a;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lc/t/m/g/cj;->b(Ljava/lang/String;[B)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "request:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/t/m/g/f$a;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v3, v6, Lc/t/m/g/dd;->b:Lc/t/m/g/cj;

    invoke-static {v2}, Lc/t/m/g/dd$a;->b(Lc/t/m/g/dd$a;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Lc/t/m/g/cj;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "cost:"

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",request:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/t/m/g/f$a;->b(Ljava/lang/String;)V

    iget-wide v14, v6, Lc/t/m/g/dd;->c:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    iput-wide v14, v6, Lc/t/m/g/dd;->c:J

    iget-wide v14, v6, Lc/t/m/g/dd;->d:J

    invoke-static {v2}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v6, Lc/t/m/g/dd;->d:J

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lc/t/m/g/f$a;->b([B)[B

    move-result-object v3

    iget-wide v14, v6, Lc/t/m/g/dd;->e:J

    if-eqz v3, :cond_6

    array-length v3, v3

    :goto_1
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v6, Lc/t/m/g/dd;->e:J

    sget-boolean v3, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->COMPHTTPIO:Z

    if-eqz v3, :cond_3

    const-string v3, "TxRequestSender"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Halley:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms,HttpURLConnection:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TxRequestSender"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Halley:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms,HttpURLConnection:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    long-to-int v12, v12

    iput v12, v3, Landroid/os/Message;->arg1:I

    long-to-int v4, v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    iput-wide v10, v2, Lc/t/m/g/dd$a;->c:J

    const/4 v4, 0x1

    invoke-static {v2}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x1387

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    const/4 v4, 0x3

    invoke-static {v2}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x1385

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move-object v3, v2

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object v4, v3

    :goto_2
    const-string v3, "TxRequestSender"

    const-string v5, "run: thread is interrupted"

    invoke-static {v3, v5, v4}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    goto/16 :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    :goto_3
    const-string v3, "TxRequestSender"

    const-string v5, "run: io error"

    invoke-static {v3, v5, v4}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v2}, Lc/t/m/g/dd;->a(Lc/t/m/g/dd$a;)V

    const/4 v3, 0x1

    invoke-static {v2}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v4

    if-ne v3, v4, :cond_7

    const/16 v3, 0x1386

    const-wide/32 v4, 0xea60

    invoke-virtual {v7, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    const/4 v3, 0x3

    invoke-static {v2}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v4

    if-ne v3, v4, :cond_8

    const/16 v3, 0x1384    # 7.001E-42f

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    move-object v3, v2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method
