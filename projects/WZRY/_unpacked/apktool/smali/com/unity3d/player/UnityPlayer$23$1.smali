.class final Lcom/unity3d/player/UnityPlayer$23$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$23;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$23;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$23$1;->a:Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$23$1;->a:Lcom/unity3d/player/UnityPlayer$23;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$23;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$23$1;->a:Lcom/unity3d/player/UnityPlayer$23;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$23;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$23$1;->a:Lcom/unity3d/player/UnityPlayer$23;

    iget-object v1, v1, Lcom/unity3d/player/UnityPlayer$23;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v1}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
