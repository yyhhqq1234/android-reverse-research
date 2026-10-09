.class Lcom/tencent/igame/priority/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/igame/priority/sdk/rpc/d;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/IGamePriority;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/IGamePriority;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u8fde\u63a5\u6e38\u620f\u4eba\u751fApp\u670d\u52a1\u6210\u529f..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/igame/priority/sdk/rpc/a;->a()Lcom/tencent/igame/priority/sdk/rpc/a;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/tencent/igame/priority/sdk/b;

    invoke-direct {v2, p0}, Lcom/tencent/igame/priority/sdk/b;-><init>(Lcom/tencent/igame/priority/sdk/a;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Landroid/os/Messenger;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/igame/priority/sdk/rpc/a;->a()Lcom/tencent/igame/priority/sdk/rpc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Lcom/tencent/igame/priority/sdk/IGamePriority;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u8fde\u63a5\u6e38\u620f\u4eba\u751fApp\u670d\u52a1\u5931\u8d25..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    return-void
.end method
