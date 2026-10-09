.class final Lcom/tencent/igame/priority/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/igame/priority/sdk/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a()Lcom/tencent/igame/priority/sdk/IGamePriority;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/igame/priority/sdk/e;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/igame/priority/sdk/IGamePriority;->setUserId(Ljava/lang/String;I)V

    return-void
.end method
