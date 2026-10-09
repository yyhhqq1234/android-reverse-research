.class final Lcom/google/ar/core/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/ar/core/o;

.field final synthetic c:Lcom/google/ar/core/m;


# direct methods
.method constructor <init>(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    iput-object p2, p0, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    invoke-static {v1}, Lcom/google/ar/core/m;->c(Lcom/google/ar/core/m;)Lcom/google/a/b/a/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    invoke-static {v3}, Lcom/google/ar/core/m;->b(Lcom/google/ar/core/m;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Lcom/google/ar/core/u;

    invoke-direct {v5, p0, v0}, Lcom/google/ar/core/u;-><init>(Lcom/google/ar/core/t;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/a/b/a/a/a/a;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/a/b/a/a/a/d;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/ar/core/v;

    invoke-direct {v2, p0, v0}, Lcom/google/ar/core/v;-><init>(Lcom/google/ar/core/t;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ARCore-InstallService"

    const-string v2, "requestInstall threw, launching fullscreen."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    iget-object v1, p0, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    invoke-static {v0, v1, v2}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V

    goto :goto_0
.end method
