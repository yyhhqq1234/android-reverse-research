.class public Lcom/tencent/android/tpush/common/o;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/common/o;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/tencent/android/tpush/common/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->c:Ljava/lang/String;

    .line 31
    const v0, 0x40466666    # 3.1f

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/common/o;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/tencent/android/tpush/common/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/tencent/android/tpush/common/o;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/common/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;

    .line 38
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/common/o;->a:Lcom/tencent/android/tpush/common/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 42
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :try_start_0
    const-string v1, "appVer"

    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->c:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 47
    const-string v1, "appSdkVer"

    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->d:Ljava/lang/String;

    invoke-static {v6, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 49
    const-string v1, "ch"

    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/XGPushConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 52
    const-string v1, "gs"

    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/XGPushConfig;->getGameServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/common/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/common/s;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lcom/tencent/android/tpush/c/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/android/tpush/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "XGOtherPush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reservert info: other push token is : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  other push type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-static {v6, v1, v2}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    move v0, v5

    .line 67
    :cond_0
    if-nez v0, :cond_1

    .line 68
    const-string v0, "XGOtherPush"

    const-string v1, "Reservert info: use normal xg token register"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "gcm"

    .line 71
    const-string v1, ""

    .line 72
    invoke-static {v6, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 74
    const-string v0, "miid"

    .line 75
    const-string v1, ""

    .line 76
    invoke-static {v6, v0, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    const-string v1, ".firstregister"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 80
    iget-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    const-string v1, ".usertype"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 82
    iget-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    const-string v1, ".installtime"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    cmp-long v8, v2, v8

    if-nez v8, :cond_4

    .line 87
    iget-object v2, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    const-string v3, ".installtime"

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    :goto_0
    const-string/jumbo v2, "ut"

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    if-ne v7, v5, :cond_2

    .line 101
    const-string v2, "freg"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    :cond_2
    const-string v2, "it"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "aidl"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_4
    if-nez v4, :cond_5

    if-eq v7, v5, :cond_5

    .line 90
    :try_start_1
    invoke-static {v2, v3}, Lcom/tencent/android/tpush/common/t;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/tencent/android/tpush/common/t;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/tencent/android/tpush/common/o;->b:Landroid/content/Context;

    const-string v4, ".usertype"

    invoke-static {v1, v4, v0}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v2

    move v4, v5

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "RegisterReservedInfo"

    const-string/jumbo v2, "toSting"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method
