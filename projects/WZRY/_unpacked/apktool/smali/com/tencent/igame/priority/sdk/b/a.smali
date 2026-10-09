.class public Lcom/tencent/igame/priority/sdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tencent/igame/priority/sdk/b/a;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lcom/tencent/igame/priority/sdk/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lorg/json/JSONArray;

    return-void
.end method

.method public static a()Lcom/tencent/igame/priority/sdk/b/a;
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lcom/tencent/igame/priority/sdk/b/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/igame/priority/sdk/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lcom/tencent/igame/priority/sdk/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/b/a;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/b/a;-><init>()V

    sput-object v0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lcom/tencent/igame/priority/sdk/b/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lcom/tencent/igame/priority/sdk/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ZLorg/json/JSONArray;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/tencent/igame/priority/sdk/b/c;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:I

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/igame/priority/sdk/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Z)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/igame/priority/sdk/b/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/igame/priority/sdk/b/c;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:I

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/igame/priority/sdk/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;ILorg/json/JSONArray;Z)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lorg/json/JSONArray;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lev"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Landroid/content/Context;

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lorg/json/JSONArray;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/b/a;->a:Lorg/json/JSONArray;

    invoke-direct {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(ZLorg/json/JSONArray;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lev"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/b/a;->a(ZLorg/json/JSONArray;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
