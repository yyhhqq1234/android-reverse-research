.class Lcom/tencent/tp/a/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tencent/tp/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/tp/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/a/b;->a:Lcom/tencent/tp/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/tp/a/c;

    invoke-direct {v1, p0}, Lcom/tencent/tp/a/c;-><init>(Lcom/tencent/tp/a/b;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
