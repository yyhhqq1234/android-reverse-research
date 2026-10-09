.class abstract Lcom/subao/common/a/c$ab;
.super Lcom/subao/common/a/c$aa;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/subao/common/a/c$aa",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/a/c;",
            "JTC;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2465
    invoke-direct/range {p0 .. p5}, Lcom/subao/common/a/c$aa;-><init>(Lcom/subao/common/a/c;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 2466
    iput-object p6, p0, Lcom/subao/common/a/c$ab;->a:Ljava/lang/String;

    .line 2467
    iput p7, p0, Lcom/subao/common/a/c$ab;->b:I

    .line 2468
    iput-object p8, p0, Lcom/subao/common/a/c$ab;->c:Ljava/lang/String;

    .line 2469
    iput p7, p0, Lcom/subao/common/a/c$ab;->d:I

    .line 2470
    iput-object p8, p0, Lcom/subao/common/a/c$ab;->e:Ljava/lang/String;

    .line 2471
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/subao/common/a/c$ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/subao/common/a/c;)Z
    .locals 2

    .prologue
    .line 2475
    invoke-virtual {p1}, Lcom/subao/common/a/c;->x()I

    move-result v0

    iput v0, p0, Lcom/subao/common/a/c$ab;->d:I

    .line 2476
    invoke-virtual {p1}, Lcom/subao/common/a/c;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/a/c$ab;->e:Ljava/lang/String;

    .line 2477
    iget v0, p0, Lcom/subao/common/a/c$ab;->d:I

    iget v1, p0, Lcom/subao/common/a/c$ab;->b:I

    if-eq v0, v1, :cond_0

    .line 2478
    iget v0, p0, Lcom/subao/common/a/c$ab;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subao/common/a/c$ab;->f:I

    .line 2480
    :cond_0
    iget-object v0, p0, Lcom/subao/common/a/c$ab;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/subao/common/a/c$ab;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/subao/common/n/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2481
    iget v0, p0, Lcom/subao/common/a/c$ab;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/subao/common/a/c$ab;->f:I

    .line 2483
    :cond_1
    iget v0, p0, Lcom/subao/common/a/c$ab;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 2488
    iget v0, p0, Lcom/subao/common/a/c$ab;->d:I

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/subao/common/a/c$ab;->e:Ljava/lang/String;

    return-object v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 2493
    iget v0, p0, Lcom/subao/common/a/c$ab;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
