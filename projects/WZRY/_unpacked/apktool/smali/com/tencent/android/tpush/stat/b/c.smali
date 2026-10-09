.class public Lcom/tencent/android/tpush/stat/b/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Landroid/net/LocalServerSocket;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/tencent/android/tpush/stat/b/c;->b:Ljava/lang/String;

    .line 28
    sput-object v0, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;

    .line 74
    sput-object v0, Lcom/tencent/android/tpush/stat/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/android/tpush/stat/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/tencent/android/tpush/stat/b/c;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/b/i;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/i;->b()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/b/c;->b:Ljava/lang/String;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/b/c;->b:Ljava/lang/String;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocalMid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/tencent/android/tpush/stat/b/d;

    invoke-direct {v0}, Lcom/tencent/android/tpush/stat/b/d;-><init>()V

    .line 87
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/b/d;->c(Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/b/d;->e(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/stat/b/d;->b(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/android/tpush/stat/b/d;->a(J)V

    .line 91
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/b/i;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/b/i;->d(Lcom/tencent/android/tpush/stat/b/d;)V

    .line 92
    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    const-string v1, "com.tencent.teg.mid.sock.lock"

    .line 33
    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is in use."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :catch_1
    move-exception v1

    .line 40
    const-string v1, "TPush"

    const-string v2, "something wrong while create LocalServerSocket."

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 49
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close socket  mLocalServerSocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/b/c;->a:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
