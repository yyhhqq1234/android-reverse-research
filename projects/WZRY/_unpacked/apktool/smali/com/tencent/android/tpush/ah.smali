.class Lcom/tencent/android/tpush/ah;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object v0, p0, Lcom/tencent/android/tpush/ah;->a:Landroid/content/Context;

    .line 1215
    iput-object v0, p0, Lcom/tencent/android/tpush/ah;->b:Landroid/content/Intent;

    .line 1216
    iput-object v0, p0, Lcom/tencent/android/tpush/ah;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1217
    iput v1, p0, Lcom/tencent/android/tpush/ah;->d:I

    .line 1221
    iput-object p1, p0, Lcom/tencent/android/tpush/ah;->a:Landroid/content/Context;

    .line 1222
    iput-object p2, p0, Lcom/tencent/android/tpush/ah;->b:Landroid/content/Intent;

    .line 1223
    iput-object p3, p0, Lcom/tencent/android/tpush/ah;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1224
    const-string v0, "opType"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/ah;->d:I

    .line 1226
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1232
    :try_start_0
    iget v0, p0, Lcom/tencent/android/tpush/ah;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1240
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeoutRunnable error optype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/ah;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :goto_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/ag;

    .line 1244
    iget-object v2, p0, Lcom/tencent/android/tpush/ah;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " RegisterTimeoutRunnable run error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1250
    :goto_2
    return-void

    .line 1234
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ah;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ah;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ah;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_0

    .line 1237
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ah;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ah;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ah;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_0

    .line 1246
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
