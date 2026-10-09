.class Lcom/tencent/mna/b/d/b$d;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/tencent/mna/base/f/j$b;

.field c:Lcom/tencent/mna/base/f/j$b;

.field d:Lcom/tencent/mna/base/f/j$b;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Lcom/tencent/mna/base/a/c;->l()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->e:Lcom/tencent/mna/b/d/d$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/d;->a(ILcom/tencent/mna/b/d/d$a;)Z

    move-result v0

    .line 415
    if-nez v0, :cond_0

    .line 416
    const-string v1, "diagnose, NIC switch off"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 418
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "diagnose, enable collect net data"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mna/b/d/b$d;->a:Z

    .line 422
    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$d;->a:Z

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "diagnose, collectPreNetData"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/tencent/mna/base/f/j;->a()Lcom/tencent/mna/base/f/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$d;->b:Lcom/tencent/mna/base/f/j$b;

    .line 429
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$d;->a:Z

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "diagnose, collectPostNetData"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/tencent/mna/base/f/j;->a()Lcom/tencent/mna/base/f/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$d;->c:Lcom/tencent/mna/base/f/j$b;

    .line 436
    :cond_0
    return-void
.end method

.method c()Lcom/tencent/mna/base/f/j$b;
    .locals 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$d;->d:Lcom/tencent/mna/base/f/j$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$d;->b:Lcom/tencent/mna/base/f/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$d;->c:Lcom/tencent/mna/base/f/j$b;

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "diagnose, getDifNetData"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$d;->b:Lcom/tencent/mna/base/f/j$b;

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$d;->c:Lcom/tencent/mna/base/f/j$b;

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/j;->a(Lcom/tencent/mna/base/f/j$b;Lcom/tencent/mna/base/f/j$b;)Lcom/tencent/mna/base/f/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$d;->d:Lcom/tencent/mna/base/f/j$b;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$d;->d:Lcom/tencent/mna/base/f/j$b;

    return-object v0
.end method
