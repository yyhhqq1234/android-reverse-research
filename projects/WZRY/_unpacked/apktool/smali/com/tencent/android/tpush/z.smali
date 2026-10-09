.class final Lcom/tencent/android/tpush/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/android/tpush/XGIOperateCallback;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    iput-wide p3, p0, Lcom/tencent/android/tpush/z;->c:J

    iput-object p5, p0, Lcom/tencent/android/tpush/z;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    .line 315
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v2, 0x0

    const-string v3, "XINGE SDK config error"

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-wide v0, p0, Lcom/tencent/android/tpush/z;->c:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    move-wide v2, v0

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGPushConfig;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 327
    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 329
    :cond_2
    iget-object v4, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v4, :cond_5

    .line 330
    iget-object v4, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v5, 0x0

    const/16 v6, 0x2711

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The accessId, accessKey or token is invalid! accessId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",accessKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v6, v0}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accessId, accessKey or token is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "TPush"

    const-string/jumbo v2, "unregisterPush"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 322
    :cond_3
    :try_start_1
    iget-wide v0, p0, Lcom/tencent/android/tpush/z;->c:J

    move-wide v2, v0

    goto :goto_1

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 347
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.tencent.android.tpush.action.UNREGISTER.V3"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v5, "accId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "accKey"

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v0, "token"

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v0, "packName"

    iget-object v1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v0, "operation"

    const/16 v1, 0x65

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v0, "opType"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/s;->b()Z

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->c(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_6

    if-nez v0, :cond_6

    .line 361
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v4, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto/16 :goto_0

    .line 363
    :cond_6
    iget-object v1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/android/tpush/z;->b:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v1, v4, v2, v0}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;Z)V

    goto/16 :goto_0
.end method
