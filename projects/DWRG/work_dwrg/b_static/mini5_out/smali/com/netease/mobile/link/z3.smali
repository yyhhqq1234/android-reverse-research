.class public final Lcom/netease/mobile/link/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lcom/netease/mobile/link/z3;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/view/View;

.field public c:Ljava/util/Timer;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/mobile/link/z3;
    .locals 2

    sget-object v0, Lcom/netease/mobile/link/z3;->g:Lcom/netease/mobile/link/z3;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobile/link/z3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/z3;->g:Lcom/netease/mobile/link/z3;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/z3;

    invoke-direct {v1}, Lcom/netease/mobile/link/z3;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/z3;->g:Lcom/netease/mobile/link/z3;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mobile/link/z3;->g:Lcom/netease/mobile/link/z3;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mobile/link/z3;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/z3;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mobile/link/z3$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mobile/link/z3$b;-><init>(Lcom/netease/mobile/link/z3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonForceGuideTimer setOnWebPage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 3
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mobile/link/z3;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mobile/link/z3;->e:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/netease/mobile/link/z3;->e:Z

    iget-boolean v0, p0, Lcom/netease/mobile/link/z3;->f:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/z3;->a(I)V

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mobile/link/h6;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MobileLink"

    const-string v1, "NonForceGuideTimer mActivity is finishing, reset."

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mobile/link/z3;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/netease/mobile/link/z3;->b:Landroid/view/View;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/z3;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobile/link/z3;->c:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "MobileLink"

    const-string v1, "NonForceGuideTimer start"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mobile/link/z3;->c()V

    invoke-virtual {p0}, Lcom/netease/mobile/link/z3;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/netease/mobile/link/z3;->d:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mobile/link/z3;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/z3;->c:Ljava/util/Timer;

    new-instance v1, Lcom/netease/mobile/link/z3$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/z3$a;-><init>(Lcom/netease/mobile/link/z3;)V

    iget v2, p0, Lcom/netease/mobile/link/z3;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "NonForceGuideTimer stop"

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/netease/mobile/link/z3;->a(I)V

    invoke-virtual {p0}, Lcom/netease/mobile/link/z3;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/z3;->e:Z

    iput-boolean v0, p0, Lcom/netease/mobile/link/z3;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
