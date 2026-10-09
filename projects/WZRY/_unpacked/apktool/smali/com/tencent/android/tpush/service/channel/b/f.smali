.class public Lcom/tencent/android/tpush/service/channel/b/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/b/c;


# instance fields
.field private a:J

.field private b:Z

.field protected j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v4

    iget v4, v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 30
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 32
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b/f;->j:Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;

    .line 17
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->a:J

    .line 25
    :cond_0
    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
