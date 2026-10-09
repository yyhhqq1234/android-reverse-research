.class public Lcom/subao/common/d/a;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/subao/common/d/a;->a:[B

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/subao/common/d/a;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/subao/common/d/a;->b:I

    sub-int/2addr v0, v1

    .line 31
    sub-int v0, p2, v0

    .line 32
    if-lez v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/subao/common/d/a;->a:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/subao/common/d/a;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 35
    iget-object v1, p0, Lcom/subao/common/d/a;->a:[B

    iget v2, p0, Lcom/subao/common/d/a;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iput-object v0, p0, Lcom/subao/common/d/a;->a:[B

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/subao/common/d/a;->a:[B

    iget v1, p0, Lcom/subao/common/d/a;->b:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    iget v1, p0, Lcom/subao/common/d/a;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/subao/common/d/a;->b:I

    .line 42
    :cond_1
    return v0
.end method

.method public a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    iget v0, p0, Lcom/subao/common/d/a;->b:I

    new-array v0, v0, [B

    .line 66
    iget v1, p0, Lcom/subao/common/d/a;->b:I

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/subao/common/d/a;->a:[B

    iget v2, p0, Lcom/subao/common/d/a;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :cond_0
    return-object v0
.end method
