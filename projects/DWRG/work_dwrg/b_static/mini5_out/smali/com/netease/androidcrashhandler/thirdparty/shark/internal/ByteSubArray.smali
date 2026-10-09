.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;
.super Ljava/lang/Object;
.source "ByteSubArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteSubArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteSubArray.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray\n+ 2 ByteSubArray.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt\n*L\n1#1,106:1\n103#2:107\n103#2:108\n*S KotlinDebug\n*F\n+ 1 ByteSubArray.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray\n*L\n56#1:107\n59#1:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        "",
        "array",
        "",
        "rangeStart",
        "",
        "size",
        "longIdentifiers",
        "",
        "([BIIZ)V",
        "currentIndex",
        "endInclusive",
        "readByte",
        "",
        "readId",
        "",
        "readInt",
        "readLong",
        "readTruncatedLong",
        "byteCount",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final array:[B

.field private currentIndex:I

.field private final endInclusive:I

.field private final longIdentifiers:Z

.field private final rangeStart:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->array:[B

    .line 8
    iput p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->rangeStart:I

    .line 10
    iput-boolean p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->longIdentifiers:Z

    add-int/lit8 p3, p3, -0x1

    .line 13
    iput p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    return-void
.end method


# virtual methods
.method public final readByte()B
    .locals 3

    .line 18
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    .line 19
    iput v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 20
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->array:[B

    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->rangeStart:I

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    return v0

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readId()J
    .locals 2

    .line 27
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->longIdentifiers:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public final readInt()I
    .locals 3

    .line 35
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    add-int/lit8 v1, v0, 0x4

    .line 36
    iput v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    if-ltz v0, :cond_0

    .line 37
    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    add-int/lit8 v1, v1, -0x3

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->array:[B

    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->rangeStart:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt;->readInt([BI)I

    move-result v0

    return v0

    .line 38
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readLong()J
    .locals 3

    .line 64
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    add-int/lit8 v1, v0, 0x8

    .line 65
    iput v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    if-ltz v0, :cond_0

    .line 66
    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    add-int/lit8 v1, v1, -0x7

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->array:[B

    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->rangeStart:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt;->readLong([BI)J

    move-result-wide v0

    return-wide v0

    .line 67
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readTruncatedLong(I)J
    .locals 10

    .line 44
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    add-int v1, v0, p1

    .line 45
    iput v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->currentIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 46
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 49
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->rangeStart:I

    add-int/2addr v2, v0

    .line 50
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->array:[B

    const-wide/16 v3, 0x0

    sub-int/2addr p1, v1

    const/16 v1, 0x8

    mul-int/lit8 p1, p1, 0x8

    :goto_1
    const-wide/16 v5, 0xff

    if-lt p1, v1, :cond_1

    add-int/lit8 v7, v2, 0x1

    .line 56
    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v5, v8

    shl-long/2addr v5, p1

    or-long/2addr v3, v5

    add-int/lit8 p1, p1, -0x8

    move v2, v7

    goto :goto_1

    .line 59
    :cond_1
    aget-byte p1, v0, v2

    int-to-long v0, p1

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    return-wide v0

    .line 47
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be between 0 and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->endInclusive:I

    sub-int/2addr p1, v1

    sub-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
