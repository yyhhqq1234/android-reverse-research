.class Lcom/tencent/igame/priority/sdk/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/c/c;->a:Lcom/tencent/igame/priority/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/c;->a:Lcom/tencent/igame/priority/sdk/c/a;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/a;->a()Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/c;->a:Lcom/tencent/igame/priority/sdk/c/a;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c/a;->a(Lcom/tencent/igame/priority/sdk/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
