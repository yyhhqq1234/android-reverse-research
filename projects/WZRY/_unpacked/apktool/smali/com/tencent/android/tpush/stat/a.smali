.class public Lcom/tencent/android/tpush/stat/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile d:Lcom/tencent/android/tpush/stat/a;


# instance fields
.field private volatile a:I

.field private volatile b:Ljava/lang/String;

.field private volatile c:Lorg/apache/http/HttpHost;

.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/android/tpush/stat/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/a;->d:Lcom/tencent/android/tpush/stat/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/a;->c:Lorg/apache/http/HttpHost;

    .line 29
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/a;->f:Lcom/tencent/android/tpush/stat/a/f;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/f;->a(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a;->f:Lcom/tencent/android/tpush/stat/a/f;

    .line 63
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a;->f()V

    .line 64
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/a;->d()V

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/android/tpush/stat/a;->d:Lcom/tencent/android/tpush/stat/a;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/tencent/android/tpush/stat/a;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a;->d:Lcom/tencent/android/tpush/stat/a;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/tencent/android/tpush/stat/a;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/a;->d:Lcom/tencent/android/tpush/stat/a;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/a;->d:Lcom/tencent/android/tpush/stat/a;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    .line 88
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/a;->c:Lorg/apache/http/HttpHost;

    .line 89
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    iget v1, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/h;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->f:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NETWORK name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "WIFI"

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->b(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/a;->c:Lorg/apache/http/HttpHost;

    .line 115
    :cond_1
    :goto_1
    return-void

    .line 105
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/android/tpush/stat/a;->a:I

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->f:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "NETWORK TYPE: network is close."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 113
    :cond_4
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/a;->f()V

    goto :goto_1
.end method

.method public e()V
    .locals 4
    .annotation build Lcom/jg/JgMethodChecked;
        author = 0x1
        fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
        lastDate = "20150316"
        reviewer = 0x3
        vComment = {
            .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/b;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/b;-><init>(Lcom/tencent/android/tpush/stat/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "registerBroadcast"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
