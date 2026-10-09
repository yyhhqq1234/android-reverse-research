.class Lcom/tencent/android/tpush/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/XGIOperateCallback;Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/af;->e:I

    .line 1416
    iput-object p1, p0, Lcom/tencent/android/tpush/af;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1417
    iput-object p2, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    .line 1418
    iput-object p3, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    .line 1419
    iput p4, p0, Lcom/tencent/android/tpush/af;->d:I

    .line 1420
    iput p5, p0, Lcom/tencent/android/tpush/af;->e:I

    .line 1421
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1429
    iget v0, p0, Lcom/tencent/android/tpush/af;->d:I

    if-ne v0, v2, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v2, "operation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1439
    packed-switch v1, :pswitch_data_0

    .line 1493
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 1494
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/a;->a(Landroid/content/Context;)V

    .line 1495
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/aa;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/aa;->a()V

    .line 1499
    :goto_1
    return-void

    .line 1444
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/android/tpush/af;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v3, "flag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V

    .line 1445
    new-instance v1, Lcom/tencent/android/tpush/data/RegisterEntity;

    invoke-direct {v1}, Lcom/tencent/android/tpush/data/RegisterEntity;-><init>()V

    .line 1446
    iget v2, p0, Lcom/tencent/android/tpush/af;->e:I

    if-nez v2, :cond_1

    .line 1448
    iget-object v2, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    const-string v3, ".firstregister"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1452
    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->state:I

    .line 1456
    :goto_2
    iget-object v2, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v3, "accId"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    .line 1457
    iget-object v2, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    .line 1458
    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->token:Ljava/lang/String;

    .line 1459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->timestamp:J

    .line 1460
    const v0, 0x40466666    # 3.1f

    iput v0, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->xgSDKVersion:F

    .line 1461
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->appVersion:Ljava/lang/String;

    .line 1462
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->setCurrentAppRegisterEntity(Landroid/content/Context;Lcom/tencent/android/tpush/data/RegisterEntity;)V

    .line 1464
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/android/tpush/c/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1454
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput v2, v1, Lcom/tencent/android/tpush/data/RegisterEntity;->state:I

    goto :goto_2

    .line 1474
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/android/tpush/af;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1480
    :cond_2
    iget v0, p0, Lcom/tencent/android/tpush/af;->d:I

    if-nez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    const-string v1, "operation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1482
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1484
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/af;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto/16 :goto_0

    .line 1487
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/android/tpush/af;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/af;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/af;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1482
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
