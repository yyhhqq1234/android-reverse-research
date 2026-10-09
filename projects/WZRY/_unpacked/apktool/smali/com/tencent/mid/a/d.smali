.class public Lcom/tencent/mid/a/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/mid/util/f;

.field private static i:Lcom/tencent/mid/a/d;

.field private static j:Landroid/content/Context;


# instance fields
.field a:I

.field b:Landroid/net/LocalServerSocket;

.field private d:Lcom/tencent/mid/util/a;

.field private e:Lcom/tencent/mid/util/a;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    sput-object v1, Lcom/tencent/mid/a/d;->i:Lcom/tencent/mid/a/d;

    sput-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/mid/a/d;->d:Lcom/tencent/mid/util/a;

    iput-object v2, p0, Lcom/tencent/mid/a/d;->e:Lcom/tencent/mid/util/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mid/a/d;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mid/a/d;->g:I

    iput v3, p0, Lcom/tencent/mid/a/d;->h:I

    iput v3, p0, Lcom/tencent/mid/a/d;->a:I

    iput-object v2, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/mid/a/d;
    .locals 2

    const-class v1, Lcom/tencent/mid/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mid/a/d;->i:Lcom/tencent/mid/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mid/a/d;

    invoke-direct {v0, p0}, Lcom/tencent/mid/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mid/a/d;->i:Lcom/tencent/mid/a/d;

    :cond_0
    sget-object v0, Lcom/tencent/mid/a/d;->i:Lcom/tencent/mid/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;JI)V
    .locals 5

    const/4 v0, 0x3

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mid/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move p3, v0

    :cond_0
    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNewVersionMidEntity reset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    if-lez p3, :cond_1

    new-instance v1, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v1}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/tencent/mid/api/MidEntity;->setGuid(J)V

    sget-object v2, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mid/util/Util;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mid/util/Util;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mid/util/Util;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    invoke-virtual {v1, v0}, Lcom/tencent/mid/api/MidEntity;->setVersion(I)V

    sget-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server return new version mid midEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/tencent/mid/b/g;->a(II)V

    :cond_1
    return-void

    :pswitch_1
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->b(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->c(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->a(Lcom/tencent/mid/api/MidEntity;)V

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/g;->g(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;JILcom/tencent/mid/api/MidCallback;)V
    .locals 5

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/a/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x4

    :cond_0
    sget-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMidEntity reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    if-lez p3, :cond_1

    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mid/api/MidEntity;->setGuid(J)V

    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidEntity;->setVersion(I)V

    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server return new mid midEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/tencent/mid/b/g;->a(II)V

    :cond_1
    return-void

    :pswitch_0
    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/b/g;->d(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/b/g;->e(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/b/g;->g(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(ILcom/tencent/mid/a/f;Lcom/tencent/mid/api/MidCallback;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    sget-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enter http request, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, ""

    invoke-direct {p0}, Lcom/tencent/mid/a/d;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Http request failed too much, please check the network."

    sget-object v3, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    invoke-virtual {v3, v2}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const/16 v3, -0x2742

    invoke-interface {p3, v3, v2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/mid/a/b;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/b;->a(Landroid/content/Context;)Lcom/tencent/mid/util/b;

    move-result-object v3

    new-instance v2, Lcom/tencent/mid/a/b;

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->getHttpAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/tencent/mid/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v0}, Lcom/tencent/mid/a/f;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "rty"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/tencent/mid/a/d;->h:I

    if-lez v1, :cond_3

    const-string v1, "seq"

    iget v4, p0, Lcom/tencent/mid/a/d;->h:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "android"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mid_list"

    sget-object v4, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/tencent/mid/util/Util;->queryMids(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mid_list_new"

    sget-object v4, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/tencent/mid/util/Util;->queryMids(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonBodyStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/tencent/mid/a/d;->a(I)Lcom/tencent/mid/util/a;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/tencent/mid/util/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v8, :cond_4

    const/4 v7, 0x3

    if-ne p1, v7, :cond_5

    :cond_4
    if-ne p1, v8, :cond_6

    invoke-virtual {v3}, Lcom/tencent/mid/util/b;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v5}, Lcom/tencent/mid/util/a;->b()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5}, Lcom/tencent/mid/util/a;->c()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/tencent/mid/util/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mid/util/h;->a(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/mid/util/h;->a([B)[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/tencent/mid/util/b;->a()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v3, v7

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    :cond_5
    invoke-virtual {v5, v4}, Lcom/tencent/mid/util/a;->a([B)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "gzip"

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/tencent/mid/a/b;->a(Ljava/lang/String;[BLjava/lang/String;I)Lcom/tencent/mid/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/a/e;->a()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code invalid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mid/a/e;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    invoke-virtual {v3, v1}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/mid/a/e;->a()I

    move-result v0

    invoke-interface {p3, v0, v1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Lcom/tencent/mid/a/b;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-virtual {v3}, Lcom/tencent/mid/util/b;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const-string v1, ""

    invoke-virtual {v0}, Lcom/tencent/mid/a/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ret_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ret_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "ret_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "ret_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    invoke-virtual {v4, v3}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    invoke-interface {p3, v1, v3}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/tencent/mid/a/b;->a()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_7
    const-string v1, "seq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "seq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/mid/a/d;->h:I

    :cond_a
    const-string v1, "mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "guid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "guid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "reset"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v4, v5, v3, p3}, Lcom/tencent/mid/a/d;->a(Ljava/lang/String;JILcom/tencent/mid/api/MidCallback;)V

    :cond_b
    const-string v1, "locW"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v9, :cond_c

    sget-object v3, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/mid/util/i;->a(Landroid/content/Context;)Lcom/tencent/mid/util/i;

    move-result-object v3

    const-string/jumbo v4, "ten.mid.allowCheckAndRewriteLocal.bool"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mid/util/i;->a(Ljava/lang/String;I)Z

    :cond_c
    const-string v1, "mid_new"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "guid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "reset_new"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v4, v5, v0}, Lcom/tencent/mid/a/d;->a(Ljava/lang/String;JI)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Lcom/tencent/mid/a/b;->a()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :goto_2
    :try_start_9
    invoke-direct {p0}, Lcom/tencent/mid/a/d;->d()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v2, -0x272e

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    sget-object v2, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v1}, Lcom/tencent/mid/a/b;->a()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_d

    :try_start_b
    invoke-virtual {v2}, Lcom/tencent/mid/a/b;->a()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    :cond_d
    :goto_4
    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mid/a/d;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mid/a/d;->g:I

    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/tencent/mid/a/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mid/a/d;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mid/a/d;->f:J

    return-void
.end method

.method private e()Z
    .locals 4

    iget v0, p0, Lcom/tencent/mid/a/d;->g:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mid/a/d;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mid/a/d;->c()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.tencent.teg.mid.sock.lock"

    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    sget-object v2, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open socket mLocalServerSocket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

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

    invoke-virtual {v2, v1}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    const-string v2, "something wrong while create LocalServerSocket."

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    sget-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close socket  mLocalServerSocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mid/a/d;->b:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(I)Lcom/tencent/mid/util/a;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mid/a/d;->d:Lcom/tencent/mid/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mid/util/a;

    invoke-direct {v0}, Lcom/tencent/mid/util/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/a/d;->d:Lcom/tencent/mid/util/a;

    iget-object v0, p0, Lcom/tencent/mid/a/d;->d:Lcom/tencent/mid/util/a;

    invoke-virtual {v0}, Lcom/tencent/mid/util/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/a/d;->d:Lcom/tencent/mid/util/a;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mid/a/d;->e:Lcom/tencent/mid/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mid/util/a;

    invoke-direct {v0}, Lcom/tencent/mid/util/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/a/d;->e:Lcom/tencent/mid/util/a;

    iget-object v0, p0, Lcom/tencent/mid/a/d;->e:Lcom/tencent/mid/util/a;

    const-string v1, "key-/.*$!xx"

    const-string/jumbo v2, "vec-;*5@)&%("

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mid/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mid/a/d;->e:Lcom/tencent/mid/util/a;

    goto :goto_0
.end method

.method a(ILcom/tencent/mid/a/f;Lcom/tencent/mid/api/MidCallback;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const/16 v0, -0x2710

    const-string v1, "packet == null || handler == null"

    invoke-interface {p3, v0, v1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    const-string v1, "packet == null || handler == null || cb == null"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, -0x271a

    const-string v1, "network not available."

    invoke-interface {p3, v0, v1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/tencent/mid/a/d;->f()Z

    move-result v1

    if-nez v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/a/h;->a(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mid/a/d;->g()V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    sget-object v0, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->a()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mid/a/d;->g()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mid/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/tencent/mid/a/d;->g()V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mid/a/d;->b(ILcom/tencent/mid/a/f;Lcom/tencent/mid/api/MidCallback;)V

    invoke-direct {p0}, Lcom/tencent/mid/a/d;->g()V

    goto :goto_0
.end method

.method b()Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mid/a/d;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/mid/a/d;->a:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/tencent/mid/a/d;->c:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send count limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mid/a/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/tencent/mid/a/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/api/a;->a(Landroid/content/Context;)Lcom/tencent/mid/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mid/api/a;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->getDateString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_LIMIT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mid/a/d;->a:I

    if-nez v3, :cond_1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mid/a/d;->a:I

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mid/a/d;->a:I

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
