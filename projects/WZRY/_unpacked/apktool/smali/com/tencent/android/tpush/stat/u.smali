.class Lcom/tencent/android/tpush/stat/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 108
    invoke-static {}, Lcom/tencent/android/tpush/common/t;->a()V

    .line 109
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    .line 116
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v2

    .line 118
    :cond_2
    const/4 v0, 0x1

    .line 119
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    const/4 v0, 0x0

    .line 124
    :cond_3
    if-eqz v0, :cond_5

    .line 128
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->e()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/tencent/android/tpush/stat/v;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/stat/v;-><init>(Lcom/tencent/android/tpush/stat/u;JLjava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    const-string v1, "has caught the following uncaught exception:"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->g(Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/stat/a/f;->a(Ljava/lang/Throwable;)V

    .line 144
    :cond_5
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    const-string v1, "Call the original uncaught exception handler."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/android/tpush/stat/u;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
