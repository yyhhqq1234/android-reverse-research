.class final Lcom/tencent/android/tpush/stat/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/stat/event/d;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/stat/event/d;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/n;->a:Lcom/tencent/android/tpush/stat/event/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/n;->a:Lcom/tencent/android/tpush/stat/event/d;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->a(Lcom/tencent/android/tpush/stat/event/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
