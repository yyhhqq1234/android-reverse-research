.class final Lcom/tencent/igame/priority/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;


# direct methods
.method constructor <init>(Lcom/tencent/igame/priority/sdk/PriorityProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/g;->a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a()Lcom/tencent/igame/priority/sdk/IGamePriority;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/g;->a:Lcom/tencent/igame/priority/sdk/PriorityProgressListener;

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->setProgressListener(Lcom/tencent/igame/priority/sdk/PriorityProgressListener;)V

    return-void
.end method
