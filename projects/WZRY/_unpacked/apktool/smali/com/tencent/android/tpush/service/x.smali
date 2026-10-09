.class public Lcom/tencent/android/tpush/service/x;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/service/x;

.field private static b:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/android/tpush/service/x;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/x;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/x;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/x;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/tencent/android/tpush/service/x;->b()V

    .line 32
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/x;->a:Lcom/tencent/android/tpush/service/x;

    return-object v0
.end method

.method private static declared-synchronized b()V
    .locals 3

    .prologue
    .line 68
    const-class v1, Lcom/tencent/android/tpush/service/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IJLandroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 48
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAndAllowWhileIdle"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Long;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 51
    sget-object v1, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "TPush"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/x;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
