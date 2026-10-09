.class public Lcom/subao/common/k/b;
.super Ljava/lang/Object;
.source "NetworkWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/k/b$c;,
        Lcom/subao/common/k/b$d;,
        Lcom/subao/common/k/b$a;,
        Lcom/subao/common/k/b$b;,
        Lcom/subao/common/k/b$e;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/k/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/subao/common/k/b$c;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/subao/common/k/b$c;-><init>(I)V

    sput-object v0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;

    return-void
.end method

.method public static a(Lcom/subao/common/k/b$e;Lcom/subao/common/k/b$a;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    sget-object v0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;

    invoke-interface {v0, p0, p1}, Lcom/subao/common/k/c;->a(Lcom/subao/common/k/b$e;Lcom/subao/common/k/b$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/subao/common/k/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/16 v0, 0x7d0

    .line 51
    :goto_0
    new-instance v1, Lcom/subao/common/k/b$c;

    invoke-direct {v1, v0}, Lcom/subao/common/k/b$c;-><init>(I)V

    invoke-static {v1}, Lcom/subao/common/k/b;->a(Lcom/subao/common/k/c;)V

    .line 52
    new-instance v1, Lcom/subao/common/k/b$d;

    invoke-direct {v1, v0}, Lcom/subao/common/k/b$d;-><init>(I)V

    throw v1

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/subao/common/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const/16 v0, 0x7d1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/subao/common/k/d;

    invoke-direct {v0, p0}, Lcom/subao/common/k/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/subao/common/k/b;->a(Lcom/subao/common/k/c;)V

    .line 49
    return-void
.end method

.method private static declared-synchronized a(Lcom/subao/common/k/c;)V
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/subao/common/k/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;

    invoke-interface {v0}, Lcom/subao/common/k/c;->a()V

    .line 35
    :cond_0
    sput-object p0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v1

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/subao/common/k/b;->a:Lcom/subao/common/k/c;

    invoke-interface {v0, p0}, Lcom/subao/common/k/c;->a(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private static a()Z
    .locals 4

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 65
    :goto_0
    if-nez v0, :cond_0

    const-string v1, "SubaoParallel"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "SubaoParallel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi-Accel not supported on Android version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 79
    :goto_0
    if-nez v0, :cond_0

    .line 80
    const-string v1, "SubaoParallel"

    const-string v2, "Has not required permission: CHANGE_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
