.class public Lcom/tencent/mna/b/a/c/f;
.super Lcom/tencent/mna/b/a/c/d;
.source "NetsInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mna/b/a/c/d;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    .line 13
    iput p1, p0, Lcom/tencent/mna/b/a/c/f;->b:I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mna/b/a/c/f;->e:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tencent/mna/b/a/c/f;->e:Z

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/b/a/c/f;->b:I

    if-ge v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/tencent/mna/b/a/c/f;->e:Z

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/b/a/c/f;->b:I

    if-ge v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/tencent/mna/b/a/c/d;->e()V

    .line 52
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    return-void
.end method
