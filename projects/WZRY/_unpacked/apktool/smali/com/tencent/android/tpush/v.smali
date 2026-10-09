.class final Lcom/tencent/android/tpush/v;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/XGIOperateCallback;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/tencent/android/tpush/v;->a:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1353
    invoke-static {p1, p0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1356
    invoke-static {p1}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/w;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/w;-><init>(Lcom/tencent/android/tpush/v;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1372
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/v;->a:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v0, :cond_1

    .line 1374
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v6

    new-instance v0, Lcom/tencent/android/tpush/af;

    iget-object v1, p0, Lcom/tencent/android/tpush/v;->a:Lcom/tencent/android/tpush/XGIOperateCallback;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/af;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;Landroid/content/Context;Landroid/content/Intent;II)V

    invoke-virtual {v6, v0}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1382
    :cond_1
    :goto_1
    return-void

    .line 1378
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1367
    :catch_1
    move-exception v0

    goto :goto_0
.end method
