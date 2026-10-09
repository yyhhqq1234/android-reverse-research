.class public final Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;
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
    name = "ZipShort"
.end annotation


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    .line 121
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;-><init>([BI)V

    .line 102
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    .line 111
    iget v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 130
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;

    if-nez v1, :cond_1

    .line 133
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    check-cast p1, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 142
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 143
    .local v0, "result":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 144
    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 145
    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->value:I

    return v0
.end method
