.class public Lcom/tencent/mna/b/a/a/b;
.super Ljava/lang/Object;
.source "NetworkJumpChecker.java"

# interfaces
.implements Lcom/tencent/mna/b/a/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/tencent/mna/b/a/a/b;->a:I

    .line 12
    iput p2, p0, Lcom/tencent/mna/b/a/a/b;->b:I

    .line 13
    iput p3, p0, Lcom/tencent/mna/b/a/a/b;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 4

    .prologue
    .line 18
    sub-int v1, p1, p2

    .line 19
    iget v0, p0, Lcom/tencent/mna/b/a/a/b;->a:I

    if-le p1, v0, :cond_1

    if-lez p2, :cond_1

    iget v0, p0, Lcom/tencent/mna/b/a/a/b;->b:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/tencent/mna/b/a/a/b;->c:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    .line 22
    :goto_0
    if-eqz v0, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u7f51\u7edc\u8df3\u53d8\uff0c\u5f53\u524d\u5ef6\u8fdf["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] > CurMinDelayStd["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/b/a/a/b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], \u4e0a\u4e00\u6b21\u5ef6\u8fdf0 < ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] < LastMaxDelayStd["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/b/a/a/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], \u4e24\u6b21\u5ef6\u8fdf\u5dee\u503c["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] > JumpDiffValueStd["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/b/a/a/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 27
    :cond_0
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
