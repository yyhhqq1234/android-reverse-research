.class Lcom/tencent/igame/priority/sdk/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/a;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "rsp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "rsp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;

    iget v1, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->resultCode:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->expireTime:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v1, v1, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    iget v2, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->resultCode:I

    iget-object v3, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->token:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/igame/priority/sdk/rpc/PriorityRsp;->expireTime:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(ILjava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/tencent/igame/priority/sdk/rpc/a;->a()Lcom/tencent/igame/priority/sdk/rpc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v1, v1, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Lcom/tencent/igame/priority/sdk/IGamePriority;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/rpc/a;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6e38\u620f\u4eba\u751fApp\u7684Token\u5373\u5c06\u5931\u6548\uff0c\u9700\u8981\u91cd\u65b0\u8bf7\u6c42..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/b;->a:Lcom/tencent/igame/priority/sdk/a;

    iget-object v0, v0, Lcom/tencent/igame/priority/sdk/a;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/IGamePriority;->doSDKCheckAndAskPriority()V

    goto :goto_0
.end method
