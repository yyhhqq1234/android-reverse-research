.class public Lio/netty/channel/AdaptiveRecvByteBufAllocator;
.super Ljava/lang/Object;
.source "AdaptiveRecvByteBufAllocator.java"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/channel/AdaptiveRecvByteBufAllocator;

.field static final DEFAULT_INITIAL:I = 0x400

.field static final DEFAULT_MAXIMUM:I = 0x10000

.field static final DEFAULT_MINIMUM:I = 0x40

.field private static final INDEX_DECREMENT:I = 0x1

.field private static final INDEX_INCREMENT:I = 0x4

.field private static final SIZE_TABLE:[I


# instance fields
.field private final initial:I

.field private final maxIndex:I

.field private final minIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "sizeTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x200

    if-lt v0, v2, :cond_0

    .line 51
    const/16 v0, 0x200

    :goto_1
    if-gtz v0, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    sput-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    .line 56
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 61
    new-instance v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    invoke-direct {v2}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>()V

    sput-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->DEFAULT:Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    return-void

    .line 48
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_2
    sget-object v3, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 140
    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>(III)V

    .line 141
    return-void
.end method

.method public constructor <init>(III)V
    .locals 5
    .param p1, "minimum"    # I
    .param p2, "initial"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    if-gtz p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "minimum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    if-ge p2, p1, :cond_1

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initial: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_1
    if-ge p3, p2, :cond_2

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "maximum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_2
    invoke-static {p1}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v1

    .line 162
    .local v1, "minIndex":I
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v2, v2, v1

    if-ge v2, p1, :cond_3

    .line 163
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    .line 168
    :goto_0
    invoke-static {p3}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v0

    .line 169
    .local v0, "maxIndex":I
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v2, v2, v0

    if-le v2, p3, :cond_4

    .line 170
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    .line 175
    :goto_1
    iput p2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->initial:I

    .line 176
    return-void

    .line 165
    .end local v0    # "maxIndex":I
    :cond_3
    iput v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    goto :goto_0

    .line 172
    .restart local v0    # "maxIndex":I
    :cond_4
    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    goto :goto_1
.end method

.method static synthetic access$0(I)I
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1()[I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    return-object v0
.end method

.method private static getSizeTableIndex(I)I
    .locals 7
    .param p0, "size"    # I

    .prologue
    .line 64
    const/4 v3, 0x0

    .local v3, "low":I
    sget-object v5, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .line 65
    .local v2, "high":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 82
    .end local v3    # "low":I
    :goto_1
    return v3

    .line 68
    .restart local v3    # "low":I
    :cond_0
    if-ne v2, v3, :cond_1

    move v3, v2

    .line 69
    goto :goto_1

    .line 72
    :cond_1
    add-int v5, v3, v2

    ushr-int/lit8 v4, v5, 0x1

    .line 73
    .local v4, "mid":I
    sget-object v5, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v0, v5, v4

    .line 74
    .local v0, "a":I
    sget-object v5, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    add-int/lit8 v6, v4, 0x1

    aget v1, v5, v6

    .line 75
    .local v1, "b":I
    if-le p0, v1, :cond_2

    .line 76
    add-int/lit8 v3, v4, 0x1

    .line 77
    goto :goto_0

    :cond_2
    if-ge p0, v0, :cond_3

    .line 78
    add-int/lit8 v2, v4, -0x1

    .line 79
    goto :goto_0

    :cond_3
    if-ne p0, v0, :cond_4

    move v3, v4

    .line 80
    goto :goto_1

    .line 82
    :cond_4
    add-int/lit8 v3, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    iget v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    iget v3, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->initial:I

    invoke-direct {v0, v1, v2, v3}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;-><init>(III)V

    return-object v0
.end method
