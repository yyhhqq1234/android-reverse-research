.class Lcom/tencent/igame/priority/sdk/rpc/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/rpc/a;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/rpc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;)Lcom/tencent/igame/priority/sdk/rpc/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;)Lcom/tencent/igame/priority/sdk/rpc/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/igame/priority/sdk/rpc/d;->a()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;)Lcom/tencent/igame/priority/sdk/rpc/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/b;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Lcom/tencent/igame/priority/sdk/rpc/a;)Lcom/tencent/igame/priority/sdk/rpc/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/igame/priority/sdk/rpc/d;->b()V

    :cond_0
    return-void
.end method
