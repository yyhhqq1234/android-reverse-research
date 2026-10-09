.class public abstract Lcom/tencent/igame/priority/sdk/c/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected a:J

.field protected a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field protected a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/c/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/igame/priority/sdk/d/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/igame/priority/sdk/d/b/a;

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;->a(Lcom/tencent/igame/priority/sdk/d/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/tencent/igame/priority/sdk/d/b/a;
.end method

.method protected a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/igame/priority/sdk/f/a;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/igame/priority/sdk/c/b;

    invoke-direct {v0, p0}, Lcom/tencent/igame/priority/sdk/c/b;-><init>(Lcom/tencent/igame/priority/sdk/c/a;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->b:Landroid/os/Handler;

    return-void
.end method

.method protected abstract a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
.end method

.method protected a()Z
    .locals 2

    const-string v0, "igame_priority_sdk_pref_wzry_key_wifi_bssid"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/igame/a/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/igame/priority/sdk/c/c;-><init>(Lcom/tencent/igame/priority/sdk/c/a;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/igame/priority/sdk/c/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
