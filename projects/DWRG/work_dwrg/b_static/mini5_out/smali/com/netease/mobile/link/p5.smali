.class public final Lcom/netease/mobile/link/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lcom/netease/mobile/link/p5;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/mobile/link/p5;
    .locals 2

    sget-object v0, Lcom/netease/mobile/link/p5;->c:Lcom/netease/mobile/link/p5;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobile/link/p5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/p5;->c:Lcom/netease/mobile/link/p5;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/p5;

    invoke-direct {v1}, Lcom/netease/mobile/link/p5;-><init>()V

    sput-object v1, Lcom/netease/mobile/link/p5;->c:Lcom/netease/mobile/link/p5;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mobile/link/p5;->c:Lcom/netease/mobile/link/p5;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobile/link/p5;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/mobile/link/p5;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
