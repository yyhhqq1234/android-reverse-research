.class Lcom/tencent/igame/priority/sdk/c/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/c/b;->a:Lcom/tencent/igame/priority/sdk/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/b;->a:Lcom/tencent/igame/priority/sdk/c/a;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/c/a;->a(Lcom/tencent/igame/priority/sdk/c/a;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/b;->a:Lcom/tencent/igame/priority/sdk/c/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/igame/priority/sdk/c/a;->a:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
