.class Lcom/tencent/android/tpush/ag;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/Intent;

.field c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1261
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1255
    iput-object v0, p0, Lcom/tencent/android/tpush/ag;->a:Landroid/content/Context;

    .line 1256
    iput-object v0, p0, Lcom/tencent/android/tpush/ag;->b:Landroid/content/Intent;

    .line 1257
    iput-object v0, p0, Lcom/tencent/android/tpush/ag;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1258
    iput v1, p0, Lcom/tencent/android/tpush/ag;->d:I

    .line 1262
    iput-object p1, p0, Lcom/tencent/android/tpush/ag;->a:Landroid/content/Context;

    .line 1263
    iput-object p2, p0, Lcom/tencent/android/tpush/ag;->b:Landroid/content/Intent;

    .line 1264
    iput-object p3, p0, Lcom/tencent/android/tpush/ag;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1265
    const-string v0, "opType"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/ag;->d:I

    .line 1267
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1272
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/ah;

    .line 1273
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1282
    iget v0, p0, Lcom/tencent/android/tpush/ag;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1290
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterStartReceiver error optype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/ag;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ag;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1298
    :goto_1
    return-void

    .line 1284
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ag;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ag;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegisterStartReceiver error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1287
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ag;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ag;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
