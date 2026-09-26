.class public Lcom/netease/mcount/MCountAgent;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/mcount/MCountAgent;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mcount/MCountAgent;

    invoke-direct {v0}, Lcom/netease/mcount/MCountAgent;-><init>()V

    sput-object v0, Lcom/netease/mcount/MCountAgent;->a:Lcom/netease/mcount/MCountAgent;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MCountAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0}, Lcom/netease/mcount/MCountAgent;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/netease/mcount/m;

    invoke-direct {v0, p0}, Lcom/netease/mcount/m;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mcount/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static init(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Lcom/netease/mcount/q;

    invoke-direct {v0, p0}, Lcom/netease/mcount/q;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mcount/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    new-instance v0, Lcom/netease/mcount/n;

    invoke-direct {v0, p1, p2, p0}, Lcom/netease/mcount/n;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V

    sget-object v1, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {p0}, Lcom/netease/mcount/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-wide v0, Lcom/netease/mcount/h;->b:J

    const-class v2, Lcom/netease/mcount/MCountService;

    const-string v3, "com.netease.mcount.MCountService"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/mcount/a;->a(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onStop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static setTimeOffsetSec(J)V
    .locals 0

    sput-wide p0, Lcom/netease/mcount/h;->d:J

    return-void
.end method

.method public static setUploadInterval(I)V
    .locals 4

    if-lez p0, :cond_0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/netease/mcount/h;->b:J

    :cond_0
    return-void
.end method

.method public static setUploadOnlyWifi(Z)V
    .locals 0

    sput-boolean p0, Lcom/netease/mcount/h;->c:Z

    return-void
.end method

.method public static uploadLog(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/netease/mcount/MCountAgent;->b:Landroid/os/Handler;

    sget-boolean v1, Lcom/netease/mcount/h;->c:Z

    invoke-static {v0, p0, v1}, Lcom/netease/mcount/k;->a(Landroid/os/Handler;Landroid/content/Context;Z)V

    return-void
.end method
