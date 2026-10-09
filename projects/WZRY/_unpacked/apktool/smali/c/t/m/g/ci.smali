.class public final Lc/t/m/g/ci;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/ci$a;
    }
.end annotation


# instance fields
.field final a:Lc/t/m/g/cj;

.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/io/File;

.field public d:Z

.field public e:Landroid/os/HandlerThread;

.field public f:Landroid/os/Handler;

.field volatile g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/t/m/g/dj;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Lc/t/m/g/dn;

.field volatile i:Lc/t/m/g/dk;

.field public j:J


# direct methods
.method private constructor <init>(Lc/t/m/g/cj;Ljava/io/File;)V
    .locals 2
    .param p2    # Ljava/io/File;
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/ci;->j:J

    .line 57
    iput-object p1, p0, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    .line 58
    iput-object p2, p0, Lc/t/m/g/ci;->c:Ljava/io/File;

    .line 60
    new-instance v0, Lc/t/m/g/ci$1;

    invoke-direct {v0, p0}, Lc/t/m/g/ci$1;-><init>(Lc/t/m/g/ci;)V

    iput-object v0, p0, Lc/t/m/g/ci;->b:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method public constructor <init>(Lc/t/m/g/cj;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/d_c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lc/t/m/g/ci;-><init>(Lc/t/m/g/cj;Ljava/io/File;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lc/t/m/g/dk;Lc/t/m/g/dn;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/t/m/g/dk;",
            "Lc/t/m/g/dn;",
            "Ljava/util/List",
            "<",
            "Lc/t/m/g/dj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lc/t/m/g/dk;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_1
    iput-object p1, p0, Lc/t/m/g/ci;->i:Lc/t/m/g/dk;

    .line 153
    iput-object p2, p0, Lc/t/m/g/ci;->h:Lc/t/m/g/dn;

    .line 154
    iput-object p3, p0, Lc/t/m/g/ci;->g:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lc/t/m/g/ci;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    if-nez p2, :cond_2

    .line 157
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc/t/m/g/ci;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lc/t/m/g/ci;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lc/t/m/g/ci;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/ci;->j:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lc/t/m/g/ci;->a(I)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 125
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 127
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 128
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lc/t/m/g/ci;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lc/t/m/g/ci;->a(I)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/ci;->j:J

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1
.end method
