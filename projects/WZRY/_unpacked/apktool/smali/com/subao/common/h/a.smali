.class public Lcom/subao/common/h/a;
.super Ljava/lang/Object;
.source "AccelGameListManager.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lcom/subao/common/h/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/h/a;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lcom/subao/common/h/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/subao/common/h/a;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
