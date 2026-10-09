.class Lcom/subao/common/a/c$i;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method static a(Lcom/subao/common/a/c;)I
    .locals 2

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/subao/common/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    const/4 v0, 0x1

    .line 2298
    :goto_0
    return v0

    .line 2291
    :cond_0
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2292
    const-string v0, "SubaoGame"

    const-string v1, "init() must be called in android UI thread"

    invoke-static {v0, v1}, Lcom/subao/common/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const/4 v0, -0x3

    goto :goto_0

    .line 2295
    :cond_1
    invoke-static {p0}, Lcom/subao/common/a/c;->e(Lcom/subao/common/a/c;)Lcom/subao/common/e/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/e/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2296
    const/4 v0, -0x1

    goto :goto_0

    .line 2298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/subao/common/g/c;)Lcom/subao/common/a/c$s;
    .locals 1

    .prologue
    .line 2377
    new-instance v0, Lcom/subao/common/a/c$s;

    invoke-direct {v0, p0}, Lcom/subao/common/a/c$s;-><init>(Lcom/subao/common/g/c;)V

    .line 2378
    invoke-virtual {v0}, Lcom/subao/common/a/c$s;->start()V

    .line 2379
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/subao/common/g/c;Lcom/subao/common/j/l;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2359
    const-string v0, "key_hook_module"

    invoke-virtual {p1, v5, v0, p3}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2362
    invoke-static {p0, v0}, Lcom/subao/common/n/e;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2363
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v0, p1

    move-object v4, p2

    .line 2363
    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/g/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/j/l;I)V

    .line 2368
    return-void
.end method

.method static a(Lcom/subao/common/g/a;)V
    .locals 2

    .prologue
    .line 2307
    sget-object v0, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    if-ne p0, v0, :cond_0

    .line 2308
    new-instance v0, Lcom/subao/common/a/c$i$1;

    const-string v1, "JNI-ProxyLoop"

    invoke-direct {v0, v1}, Lcom/subao/common/a/c$i$1;-><init>(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v0}, Lcom/subao/common/a/c$i$1;->start()V

    .line 2317
    :goto_0
    return-void

    .line 2315
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/subao/vpn/VPNJni;->proxyLoop(IZ)V

    goto :goto_0
.end method

.method static a(Lcom/subao/common/g/c;I)V
    .locals 0

    .prologue
    .line 2345
    if-ltz p1, :cond_0

    .line 2346
    invoke-virtual {p0, p1}, Lcom/subao/common/g/c;->a(I)V

    .line 2348
    :cond_0
    return-void
.end method

.method static a(Lcom/subao/common/g/c;Lcom/subao/common/e/q$a;)V
    .locals 3

    .prologue
    .line 2326
    const/4 v0, 0x0

    .line 2328
    :try_start_0
    invoke-static {p1}, Lcom/subao/common/e/y;->a(Lcom/subao/common/e/q$a;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2332
    :goto_0
    if-eqz v0, :cond_0

    .line 2333
    const/4 v1, 0x0

    const-string v2, "key_inject"

    invoke-virtual {p0, v1, v2, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;[B)V

    .line 2335
    :cond_0
    return-void

    .line 2329
    :catch_0
    move-exception v1

    .line 2330
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
