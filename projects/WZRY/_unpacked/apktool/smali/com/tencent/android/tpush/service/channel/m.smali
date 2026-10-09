.class Lcom/tencent/android/tpush/service/channel/m;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method private constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/m;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/channel/m;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 765
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/m;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/m;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 767
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)V

    .line 768
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/m;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;J)J

    .line 773
    :goto_0
    return-void

    .line 770
    :cond_1
    const-string v0, "TpnsChannel"

    const-string v1, "give up heartbeatSlave "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
