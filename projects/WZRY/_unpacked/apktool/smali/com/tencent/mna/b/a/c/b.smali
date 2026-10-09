.class public Lcom/tencent/mna/b/a/c/b;
.super Lcom/tencent/mna/b/a/c/d;
.source "CpuMemGpusInfo.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tencent/mna/b/a/c/d;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/a/c/b;->f:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/a/c/b;->g:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/a/c/b;->h:Ljava/util/List;

    .line 23
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->a:J

    .line 24
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->b:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->c:J

    .line 26
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->d:J

    .line 27
    iput p1, p0, Lcom/tencent/mna/b/a/c/b;->i:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mna/b/a/c/b;->e:Z

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/mna/b/a/c/b;->e:Z

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/b/a/c/b;->i:I

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/tencent/mna/b/a/c/b;->e:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/b/a/c/b;->i:I

    if-ge v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/tencent/mna/b/a/c/b;->g:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(IJJIJJ)V
    .locals 3

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tencent/mna/b/a/c/b;->e:Z

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iput-wide p2, p0, Lcom/tencent/mna/b/a/c/b;->a:J

    .line 38
    iput-wide p4, p0, Lcom/tencent/mna/b/a/c/b;->b:J

    .line 39
    iput-wide p7, p0, Lcom/tencent/mna/b/a/c/b;->c:J

    .line 40
    iput-wide p9, p0, Lcom/tencent/mna/b/a/c/b;->d:J

    .line 43
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/mna/b/a/c/b;->i:I

    if-ge v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/tencent/mna/b/a/c/b;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    iget-wide v0, p0, Lcom/tencent/mna/b/a/c/b;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mna/b/a/c/b;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mna/b/a/c/b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mna/b/a/c/b;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
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
    .line 80
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
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
    .line 84
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
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
    .line 88
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    invoke-super {p0}, Lcom/tencent/mna/b/a/c/d;->e()V

    .line 94
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mna/b/a/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->a:J

    .line 98
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->b:J

    .line 99
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->c:J

    .line 100
    iput-wide v2, p0, Lcom/tencent/mna/b/a/c/b;->d:J

    .line 101
    return-void
.end method
