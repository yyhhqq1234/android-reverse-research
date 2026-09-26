.class public Lcom/netease/mobsecurity/interfacejni/SecruityInfo;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/netease/mobsecurity/a/c;

.field b:Lcom/netease/mobsecurity/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->a:Lcom/netease/mobsecurity/a/c;

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    invoke-static {p1}, Lcom/netease/mobsecurity/a/c;->a(Landroid/content/Context;)Lcom/netease/mobsecurity/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->a:Lcom/netease/mobsecurity/a/c;

    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->a:Lcom/netease/mobsecurity/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->a:Lcom/netease/mobsecurity/a/c;

    invoke-virtual {v0}, Lcom/netease/mobsecurity/a/c;->b()Lcom/netease/mobsecurity/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSecInfo()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-class v1, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/netease/mobsecurity/a/a/b;->a(DD)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSecInfo(DD)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-class v1, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/mobsecurity/a/a/b;->a(DD)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSigHash()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-class v1, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    invoke-interface {v0}, Lcom/netease/mobsecurity/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUUID(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-class v1, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->b:Lcom/netease/mobsecurity/a/a/b;

    invoke-interface {v0, p1}, Lcom/netease/mobsecurity/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
