.class public Lcom/tencent/mna/base/d/c;
.super Ljava/lang/Object;
.source "PingUploader.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/d/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    iput p1, p0, Lcom/tencent/mna/base/d/c;->d:I

    .line 19
    iput p2, p0, Lcom/tencent/mna/base/d/c;->b:I

    .line 20
    iput p3, p0, Lcom/tencent/mna/base/d/c;->c:I

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p2}, Lcom/tencent/mna/base/f/f;->i(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/mna/base/d/c;-><init>(III)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/mna/base/d/c;->d:I

    iget v1, p0, Lcom/tencent/mna/base/d/c;->b:I

    iget v2, p0, Lcom/tencent/mna/base/d/c;->c:I

    iget-object v3, p0, Lcom/tencent/mna/base/d/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(IIIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tencent/mna/base/d/c;->d:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/base/d/c;->d:I

    .line 30
    return-void
.end method
