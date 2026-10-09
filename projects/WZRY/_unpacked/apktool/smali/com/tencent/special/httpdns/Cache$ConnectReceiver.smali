.class public Lcom/tencent/special/httpdns/Cache$ConnectReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Connectivity changed clean cache"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method
