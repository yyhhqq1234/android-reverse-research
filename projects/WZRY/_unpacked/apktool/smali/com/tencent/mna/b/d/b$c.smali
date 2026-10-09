.class Lcom/tencent/mna/b/d/b$c;
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
    name = "c"
.end annotation


# instance fields
.field a:Lcom/tencent/mna/base/f/r$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mna/b/d/b$1;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/tencent/mna/b/d/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/tencent/mna/base/f/r$a;
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$c;->a:Lcom/tencent/mna/base/f/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$c;->a:Lcom/tencent/mna/base/f/r$a;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mna/base/f/r$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/tencent/mna/base/f/r$a;-><init>(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/c;->l()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->b:Lcom/tencent/mna/b/d/d$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/d;->a(ILcom/tencent/mna/b/d/d$a;)Z

    move-result v0

    .line 482
    if-nez v0, :cond_0

    .line 483
    const-string v0, "diagnose, RouterMacs switch off"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    :goto_0
    return-void

    .line 488
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->b(Landroid/content/Context;)Lcom/tencent/mna/base/f/r$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$c;->a:Lcom/tencent/mna/base/f/r$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diagnose, getRouterInfo exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 492
    :catch_1
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetRouterInfoTask run exception:"

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
