.class public Lcom/tencent/tp/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/d;


# static fields
.field private static volatile b:Lcom/tencent/tp/h;


# instance fields
.field private a:Lcom/tencent/tp/d;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.tencent.up_tp.SMI"

    invoke-static {v0}, Lcom/tencent/tp/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/d;

    iput-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "com.tencent.up_tp.SMI NOT found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "com.tencent.tp.SMI"

    invoke-static {v0}, Lcom/tencent/tp/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/d;

    iput-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "com.tencent.tp.SMI NOT found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public static a()Lcom/tencent/tp/h;
    .locals 2

    sget-object v0, Lcom/tencent/tp/h;->b:Lcom/tencent/tp/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tp/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tp/h;->b:Lcom/tencent/tp/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tp/h;

    invoke-direct {v0}, Lcom/tencent/tp/h;-><init>()V

    sput-object v0, Lcom/tencent/tp/h;->b:Lcom/tencent/tp/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tp/h;->b:Lcom/tencent/tp/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NotImp"

    goto :goto_0
.end method

.method public m(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "IsEnabled_0:apk"

    invoke-static {v0}, Lcom/tencent/tp/TssSdk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public n(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/h;->a:Lcom/tencent/tp/d;

    invoke-interface {v0, p1}, Lcom/tencent/tp/d;->n(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
