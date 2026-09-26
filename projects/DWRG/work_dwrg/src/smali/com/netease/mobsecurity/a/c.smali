.class public Lcom/netease/mobsecurity/a/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/netease/mobsecurity/a/c;

.field private static volatile d:Lcom/netease/mobsecurity/a/b/a;


# instance fields
.field private a:Lcom/netease/mobsecurity/a/b;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netease/mobsecurity/a/b;->a(Landroid/content/Context;)Lcom/netease/mobsecurity/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/a/c;->a:Lcom/netease/mobsecurity/a/b;

    iput-object p1, p0, Lcom/netease/mobsecurity/a/c;->c:Landroid/content/Context;

    invoke-static {}, Lcom/netease/mobsecurity/a/c;->a()Lcom/netease/mobsecurity/a/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mobsecurity/a/b/a;->a(Landroid/content/Context;)I

    return-void
.end method

.method private a(I)Lcom/netease/mobsecurity/a/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsecurity/a/c;->a:Lcom/netease/mobsecurity/a/b;

    invoke-virtual {v0, p1}, Lcom/netease/mobsecurity/a/b;->a(I)Lcom/netease/mobsecurity/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/netease/mobsecurity/a/b/a;
    .locals 1

    sget-object v0, Lcom/netease/mobsecurity/a/c;->d:Lcom/netease/mobsecurity/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsecurity/a/b/b;

    invoke-direct {v0}, Lcom/netease/mobsecurity/a/b/b;-><init>()V

    sput-object v0, Lcom/netease/mobsecurity/a/c;->d:Lcom/netease/mobsecurity/a/b/a;

    :cond_0
    sget-object v0, Lcom/netease/mobsecurity/a/c;->d:Lcom/netease/mobsecurity/a/b/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsecurity/a/c;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/netease/mobsecurity/a/c;->b:Lcom/netease/mobsecurity/a/c;

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v2, Lcom/netease/mobsecurity/a/c;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/netease/mobsecurity/a/c;->b:Lcom/netease/mobsecurity/a/c;

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mobsecurity/a/c;

    invoke-direct {v1, p0}, Lcom/netease/mobsecurity/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/mobsecurity/a/c;->b:Lcom/netease/mobsecurity/a/c;

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/netease/mobsecurity/a/c;->b:Lcom/netease/mobsecurity/a/c;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netease/mobsecurity/a/c;->b:Lcom/netease/mobsecurity/a/c;

    goto :goto_0
.end method


# virtual methods
.method public b()Lcom/netease/mobsecurity/a/a/b;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netease/mobsecurity/a/c;->a(I)Lcom/netease/mobsecurity/a/a;

    move-result-object v0

    check-cast v0, Lcom/netease/mobsecurity/a/a/b;

    return-object v0
.end method

.method public c()Lcom/netease/mobsecurity/a/c/a;
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/netease/mobsecurity/a/c;->a(I)Lcom/netease/mobsecurity/a/a;

    move-result-object v0

    check-cast v0, Lcom/netease/mobsecurity/a/c/a;

    return-object v0
.end method
