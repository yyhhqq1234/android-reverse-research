.class final Lcom/tencent/igame/priority/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-static {}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a(Lcom/tencent/igame/priority/sdk/IGamePriority;)Lcom/tencent/igame/priority/sdk/IGamePriority;

    return-void
.end method
