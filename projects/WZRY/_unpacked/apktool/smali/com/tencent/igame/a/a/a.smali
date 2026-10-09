.class public Lcom/tencent/igame/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/igame/a/a/a;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/igame/a/a/a;->a:I

    iput-object p1, p0, Lcom/tencent/igame/a/a/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/igame/a/a/a;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "wifi"

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/a/a/a;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/igame/a/a/a;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 4

    const/16 v3, 0x50

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/igame/a/a/a;->a:Z

    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->b:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/igame/a/a/a;->a:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/tencent/igame/a/a/a;->a:Z

    const-string v0, "10.0.0.200"

    iput-object v0, p0, Lcom/tencent/igame/a/a/a;->b:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/igame/a/a/a;->a:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->a:Ljava/lang/String;

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/a/a/a;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/igame/a/a/a;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/igame/a/a/a;->a:Z

    return v0
.end method
