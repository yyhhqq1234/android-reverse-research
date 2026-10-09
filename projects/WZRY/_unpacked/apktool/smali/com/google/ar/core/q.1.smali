.class final Lcom/google/ar/core/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ar/core/ArCoreApk$a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/google/ar/core/m;


# direct methods
.method constructor <init>(Lcom/google/ar/core/m;Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/q;->c:Lcom/google/ar/core/m;

    iput-object p2, p0, Lcom/google/ar/core/q;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/q;->c:Lcom/google/ar/core/m;

    invoke-static {v0}, Lcom/google/ar/core/m;->c(Lcom/google/ar/core/m;)Lcom/google/a/b/a/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ar/core/q;->c:Lcom/google/ar/core/m;

    invoke-static {v2}, Lcom/google/ar/core/m;->b(Lcom/google/ar/core/m;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/ar/core/r;

    invoke-direct {v3, p0}, Lcom/google/ar/core/r;-><init>(Lcom/google/ar/core/q;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/a/b/a/a/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/a/b/a/a/a/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ARCore-InstallService"

    const-string v2, "requestInfo threw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0
.end method
