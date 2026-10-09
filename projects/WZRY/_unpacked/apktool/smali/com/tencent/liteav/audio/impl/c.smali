.class public Lcom/tencent/liteav/audio/impl/c;
.super Ljava/lang/Object;
.source "TXCHeadsetMgr.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/tencent/liteav/audio/impl/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/audio/impl/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/c;->b:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/tencent/liteav/audio/impl/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/impl/c$1;-><init>(Lcom/tencent/liteav/audio/impl/c;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/c;->c:Landroid/content/BroadcastReceiver;

    .line 87
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/c;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setHeadsetOn(Z)V

    .line 90
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    .line 91
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/liteav/audio/impl/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/tencent/liteav/audio/impl/c;->a:Ljava/lang/String;

    const-string v1, " repeate register headset, ignore"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/tencent/liteav/audio/impl/c;->a:Ljava/lang/String;

    const-string v1, " invalid unregister headset, ignore"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/c;->d:Z

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/c;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
