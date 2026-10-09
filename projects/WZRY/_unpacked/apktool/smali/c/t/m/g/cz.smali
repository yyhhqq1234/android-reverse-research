.class public final Lc/t/m/g/cz;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# instance fields
.field private final a:Lc/t/m/g/cj;

.field private b:Z


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    .line 44
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 29
    iget-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    iget-object v1, v1, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TxNetworkStateMonitor"

    const-string v2, "listenNetworkState: failed"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "TxNetworkStateMonitor"

    const-string v2, "listenNetworkState: Exception"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_1
    invoke-static {p1}, Lc/t/m/g/f$a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/cj;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
