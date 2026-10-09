.class public Lcom/tencent/android/tpush/common/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/common/n;->a:Lcom/tencent/android/tpush/common/p;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/tencent/android/tpush/common/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/n;->a:Lcom/tencent/android/tpush/common/p;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/common/n;->a:Lcom/tencent/android/tpush/common/p;

    .line 37
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/common/n;->a:Lcom/tencent/android/tpush/common/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 252
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/p;->a()Lcom/tencent/android/tpush/common/r;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/common/r;->a(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/r;->b()V

    .line 257
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/p;->a()Lcom/tencent/android/tpush/common/r;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/common/r;->a(Ljava/lang/String;I)Lcom/tencent/android/tpush/common/r;

    .line 123
    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/r;->b()V

    .line 124
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/p;->a()Lcom/tencent/android/tpush/common/r;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/android/tpush/common/r;->a(Ljava/lang/String;J)Lcom/tencent/android/tpush/common/r;

    .line 87
    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/r;->b()V

    .line 88
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {p0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/p;->a()Lcom/tencent/android/tpush/common/r;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/common/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/android/tpush/common/r;

    .line 161
    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/r;->b()V

    .line 162
    return-void
.end method
