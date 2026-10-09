.class public Lcom/tencent/mna/base/d/a;
.super Ljava/lang/Object;
.source "DirectSpeedTester.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:I

.field private d:I

.field private e:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x30d40

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/d/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/d/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    iput p1, p0, Lcom/tencent/mna/base/d/a;->d:I

    .line 29
    invoke-static {p2}, Lcom/tencent/mna/base/f/f;->k(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/base/d/a;->e:[B

    .line 30
    iput p3, p0, Lcom/tencent/mna/base/d/a;->c:I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeedAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/base/d/a;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mna/base/d/a;->e:[B

    if-nez v0, :cond_0

    .line 36
    const/4 v0, -0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mna/base/d/a;->d:I

    iget-object v1, p0, Lcom/tencent/mna/base/d/a;->e:[B

    iget v2, p0, Lcom/tencent/mna/base/d/a;->c:I

    iget-object v3, p0, Lcom/tencent/mna/base/d/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const-string v4, "A"

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(I[BIILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mna/base/d/a;->e:[B

    if-nez v0, :cond_0

    .line 43
    const/4 v0, -0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mna/base/d/a;->d:I

    iget-object v1, p0, Lcom/tencent/mna/base/d/a;->e:[B

    iget v2, p0, Lcom/tencent/mna/base/d/a;->c:I

    iget-object v3, p0, Lcom/tencent/mna/base/d/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->b(I[BIILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/mna/base/d/a;->d:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/base/d/a;->d:I

    .line 56
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/mna/base/d/a;->d:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->b(II)I

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Direct Speed Tester, fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/base/d/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set tos: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method
