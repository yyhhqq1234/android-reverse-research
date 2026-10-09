.class public Lcom/netease/mobsecurity/interfacejni/SecretTransfer;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/netease/mobsecurity/a/c;

.field b:Lcom/netease/mobsecurity/a/c/a;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->a:Lcom/netease/mobsecurity/a/c;

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    iput-object p1, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/mobsecurity/a/c;->a(Landroid/content/Context;)Lcom/netease/mobsecurity/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->a:Lcom/netease/mobsecurity/a/c;

    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->a:Lcom/netease/mobsecurity/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->a:Lcom/netease/mobsecurity/a/c;

    invoke-virtual {v0}, Lcom/netease/mobsecurity/a/c;->c()Lcom/netease/mobsecurity/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSignedHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsecurity/SecException;
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/mobsecurity/a/d;

    invoke-direct {v0}, Lcom/netease/mobsecurity/a/d;-><init>()V

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "input"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/netease/mobsecurity/a/d;->b:Ljava/util/Map;

    const/16 v1, 0xa

    iput v1, v0, Lcom/netease/mobsecurity/a/d;->c:I

    const-class v1, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    invoke-interface {v2, v0}, Lcom/netease/mobsecurity/a/c/a;->a(Lcom/netease/mobsecurity/a/d;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x2bb

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x28a

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x28a

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public getSignedJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsecurity/SecException;
        }
    .end annotation

    const-string v0, ""

    const/16 v0, 0x68

    if-nez p1, :cond_0

    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netease/mobsecurity/a/d;

    invoke-direct {v1}, Lcom/netease/mobsecurity/a/d;-><init>()V

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "input"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/netease/mobsecurity/a/d;->b:Ljava/util/Map;

    const/16 v2, 0xb

    iput v2, v1, Lcom/netease/mobsecurity/a/d;->c:I

    iput v0, v1, Lcom/netease/mobsecurity/a/d;->d:I

    const-class v2, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/mobsecurity/interfacejni/SecretTransfer;->b:Lcom/netease/mobsecurity/a/c/a;

    invoke-interface {v0, v1}, Lcom/netease/mobsecurity/a/c/a;->a(Lcom/netease/mobsecurity/a/d;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x2bb

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x28a

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/netease/mobsecurity/SecException;

    const/16 v1, 0x28a

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/SecException;-><init>(I)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
