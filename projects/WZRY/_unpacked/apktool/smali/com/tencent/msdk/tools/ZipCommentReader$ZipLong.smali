.class public final Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;
.super Ljava/lang/Object;
.source "ZipCommentReader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/tools/ZipCommentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipLong"
.end annotation


# instance fields
.field private value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;-><init>([BI)V

    .line 21
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    .line 30
    iget-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    .line 31
    iget-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    .line 32
    iget-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

    if-nez v1, :cond_1

    .line 54
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-wide v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    check-cast p1, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 6

    .prologue
    .line 63
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 64
    .local v0, "result":[B
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->value:J

    long-to-int v0, v0

    return v0
.end method
