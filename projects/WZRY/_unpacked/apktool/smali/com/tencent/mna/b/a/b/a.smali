.class public Lcom/tencent/mna/b/a/b/a;
.super Ljava/lang/Object;
.source "CommonSpeedComparator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/b/b;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/tencent/mna/b/a/b/a;->a:I

    .line 28
    iput p2, p0, Lcom/tencent/mna/b/a/b/a;->b:I

    .line 29
    iput p3, p0, Lcom/tencent/mna/b/a/b/a;->c:I

    .line 30
    iput p4, p0, Lcom/tencent/mna/b/a/b/a;->d:I

    .line 31
    iput p5, p0, Lcom/tencent/mna/b/a/b/a;->e:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonSpeedComparator() called with: diffThreshold = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], forwardAvgMax = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], forwardAvgMin = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], forwardStdMax = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], forwardTimeoutNumMax = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I
    .locals 10

    .prologue
    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    const-string v0, "CommonSpeedComparator compare input is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/c/c;->b()D

    move-result-wide v0

    .line 45
    invoke-virtual {p2}, Lcom/tencent/mna/b/a/c/c;->b()D

    move-result-wide v2

    .line 46
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/c/c;->f()D

    move-result-wide v4

    .line 47
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/c/c;->e()I

    move-result v6

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[N]CommonSpeedComparator compare() forwardAvg = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], directAvg = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mDiffThreshold = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/mna/b/a/b/a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]; mForwardAvgMin = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/mna/b/a/b/a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], forwardAvg = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mForwardAvgMax = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/mna/b/a/b/a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]; forwardStdDeviation = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mForwardStdDeviationMax = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/mna/b/a/b/a;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]; forwardTimeoutCount = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mForwardTimeoutCountMax = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/mna/b/a/b/a;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 54
    sub-double/2addr v2, v0

    iget v7, p0, Lcom/tencent/mna/b/a/b/a;->a:I

    int-to-double v8, v7

    cmpl-double v2, v2, v8

    if-lez v2, :cond_2

    iget v2, p0, Lcom/tencent/mna/b/a/b/a;->c:I

    int-to-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget v2, p0, Lcom/tencent/mna/b/a/b/a;->b:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/tencent/mna/b/a/b/a;->d:I

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/tencent/mna/b/a/b/a;->e:I

    if-ge v6, v0, :cond_2

    .line 58
    const-string v0, "CommonSpeedComparator return 1"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 61
    :cond_2
    const-string v0, "CommonSpeedComparator return -1"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 62
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/tencent/mna/b/a/c/c;

    check-cast p2, Lcom/tencent/mna/b/a/c/c;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/b/a/b/a;->a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I

    move-result v0

    return v0
.end method
