.class final Lcom/tencent/igame/priority/sdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a()Lcom/tencent/igame/priority/sdk/IGamePriority;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->logAppInfo(Ljava/lang/String;)V

    return-void
.end method
