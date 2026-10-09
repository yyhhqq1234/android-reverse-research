.class final Lcom/google/ar/core/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic b:Lcom/google/ar/core/t;


# direct methods
.method constructor <init>(Lcom/google/ar/core/t;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/t;

    iput-object p2, p0, Lcom/google/ar/core/v;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ar/core/v;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ARCore-InstallService"

    const-string v1, "requestInstall timed out, launching fullscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    iget-object v1, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/t;

    iget-object v1, v1, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/t;

    iget-object v2, v2, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    invoke-static {v0, v1, v2}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V

    :cond_0
    return-void
.end method
