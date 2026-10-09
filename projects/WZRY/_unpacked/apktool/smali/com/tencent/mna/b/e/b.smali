.class public Lcom/tencent/mna/b/e/b;
.super Ljava/lang/Object;
.source "PingUpload.java"


# static fields
.field private static a:Lcom/tencent/mna/base/d/c;


# direct methods
.method public static declared-synchronized a(I)I
    .locals 6

    .prologue
    .line 21
    const-class v1, Lcom/tencent/mna/b/e/b;

    monitor-enter v1

    const/16 v0, -0x191

    .line 22
    :try_start_0
    sget-object v2, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "A"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 27
    const-string v3, "lastdelay"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "appid"

    sget-object v5, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "openid"

    sget-object v5, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 29
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pvpid"

    sget-object v5, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v3, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mna/base/d/c;->a(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 37
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadPingValue delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit v1

    return v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 33
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/tencent/mna/b/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;

    invoke-virtual {v0}, Lcom/tencent/mna/base/d/c;->a()V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 15
    const-class v1, Lcom/tencent/mna/b/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/tencent/mna/base/d/c;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v2

    invoke-direct {v0, v2, p0, p1}, Lcom/tencent/mna/base/d/c;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/b/e/b;->a:Lcom/tencent/mna/base/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit v1

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
