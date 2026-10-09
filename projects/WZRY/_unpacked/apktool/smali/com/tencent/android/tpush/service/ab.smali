.class Lcom/tencent/android/tpush/service/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/android/tpush/service/ad;

.field final synthetic c:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tencent/android/tpush/service/ab;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/android/tpush/service/ab;->b:Lcom/tencent/android/tpush/service/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ab;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/ab;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/tencent/android/tpush/service/ab;->b:Lcom/tencent/android/tpush/service/ad;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/tencent/android/tpush/service/ab;->b:Lcom/tencent/android/tpush/service/ad;

    invoke-interface {v1, v0}, Lcom/tencent/android/tpush/service/ad;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method
