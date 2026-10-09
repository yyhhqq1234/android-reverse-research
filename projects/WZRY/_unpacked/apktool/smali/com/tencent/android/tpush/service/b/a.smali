.class public Lcom/tencent/android/tpush/service/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->b:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/tencent/android/tpush/service/b/a;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.xg.tpush.httpdns.cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/b/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/service/b/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/b/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_2

    .line 42
    invoke-static {v1}, Lcom/tencent/android/tpush/service/b/c;->a(Ljava/lang/String;)Lcom/tencent/android/tpush/service/b/c;

    move-result-object v1

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/b/c;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 46
    const-string v4, "httpDns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",diff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    :goto_1
    return-object v0

    .line 50
    :cond_1
    const-string v1, "httpDns"

    const-string v2, "cacheResult Exp."

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
