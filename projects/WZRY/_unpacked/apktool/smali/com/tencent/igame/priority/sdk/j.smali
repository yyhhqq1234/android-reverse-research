.class final Lcom/tencent/igame/priority/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/igame/priority/sdk/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a()Lcom/tencent/igame/priority/sdk/IGamePriority;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/igame/priority/sdk/j;->a:Z

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->setDebuggable(Z)V

    return-void
.end method
