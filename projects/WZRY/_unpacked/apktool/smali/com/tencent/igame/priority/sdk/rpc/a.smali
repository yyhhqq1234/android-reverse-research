.class public Lcom/tencent/igame/priority/sdk/rpc/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tencent/igame/priority/sdk/rpc/a;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private a:Landroid/os/Messenger;

.field private a:Lcom/tencent/igame/priority/sdk/rpc/d;

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/os/Messenger;

    new-instance v0, Lcom/tencent/igame/priority/sdk/rpc/b;

    invoke-direct {v0, p0}, Lcom/tencent/igame/priority/sdk/rpc/b;-><init>(Lcom/tencent/igame/priority/sdk/rpc/a;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/rpc/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a()Lcom/tencent/igame/priority/sdk/rpc/a;
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/igame/priority/sdk/rpc/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/rpc/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/rpc/a;-><init>()V

    sput-object v0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/rpc/a;)Lcom/tencent/igame/priority/sdk/rpc/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/d;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/rpc/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/igame/priority/sdk/rpc/d;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/d;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.igame.priority.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tencent.igame"

    const-string v4, "com.tencent.igame.priority.PriorityService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Lcom/tencent/igame/priority/sdk/rpc/d;

    invoke-interface {v0}, Lcom/tencent/igame/priority/sdk/rpc/d;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Messenger;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "req"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/rpc/a;->a:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
