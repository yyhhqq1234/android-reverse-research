.class public Lcom/netease/mpay/hk;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/mpay/hk;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hk;->b:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a()Lcom/netease/mpay/hk;
    .locals 2

    const-class v1, Lcom/netease/mpay/hk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/hk;->a:Lcom/netease/mpay/hk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/hk;

    invoke-direct {v0}, Lcom/netease/mpay/hk;-><init>()V

    sput-object v0, Lcom/netease/mpay/hk;->a:Lcom/netease/mpay/hk;

    :cond_0
    sget-object v0, Lcom/netease/mpay/hk;->a:Lcom/netease/mpay/hk;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/MpayConfig;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hk;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/MpayConfig;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/mpay/hk;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/hk;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
