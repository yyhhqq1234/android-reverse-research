.class Lcom/tencent/mna/b/d/b$e;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mna/b/d/b$e;->a:I

    .line 450
    const/16 v0, -0xa

    iput v0, p0, Lcom/tencent/mna/b/d/b$e;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/b/d/b$1;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/tencent/mna/b/d/b$e;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 455
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/c;->l()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->a:Lcom/tencent/mna/b/d/d$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/d;->a(ILcom/tencent/mna/b/d/d$a;)Z

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    const-string v0, "diagnose, Ping switch off"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 462
    invoke-static {}, Lcom/tencent/mna/base/a/c;->n()I

    move-result v1

    .line 461
    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/d/b$e;->a:I

    .line 464
    invoke-static {}, Lcom/tencent/mna/base/a/c;->i()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 465
    const-string/jumbo v0, "www.qq.com"

    invoke-static {}, Lcom/tencent/mna/base/a/c;->n()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/o;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/d/b$e;->b:I

    .line 467
    :cond_1
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "diagnose ping %d, ping next %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mna/b/d/b$e;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mna/b/d/b$e;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PingGateWayTask run exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
