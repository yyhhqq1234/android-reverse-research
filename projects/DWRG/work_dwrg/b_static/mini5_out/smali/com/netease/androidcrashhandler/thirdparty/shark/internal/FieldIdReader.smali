.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;
.super Ljava/lang/Object;
.source "FieldIdReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFieldIdReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FieldIdReader.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader\n*L\n1#1,79:1\n78#1:80\n78#1:81\n78#1:82\n78#1:83\n78#1:84\n78#1:85\n75#1:86\n75#1:87\n75#1:88\n75#1:89\n75#1:90\n75#1:91\n75#1:92\n75#1:93\n*S KotlinDebug\n*F\n+ 1 FieldIdReader.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader\n*L\n44#1:80\n45#1:81\n53#1:82\n54#1:83\n55#1:84\n56#1:85\n64#1:86\n65#1:87\n66#1:88\n67#1:89\n68#1:90\n69#1:91\n70#1:92\n71#1:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0006\u0010\r\u001a\u00020\tJ\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\u0015\u0010\u0014\u001a\u00020\u0005*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0082\u000cJ\u0015\u0010\u0014\u001a\u00020\t*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tH\u0082\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;",
        "",
        "record",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "identifierByteSize",
        "",
        "(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V",
        "position",
        "readByteId",
        "",
        "index",
        "array",
        "",
        "readId",
        "readIntId",
        "readLongId",
        "readShortId",
        "skipBytes",
        "",
        "count",
        "and",
        "",
        "other",
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
.field private final identifierByteSize:I

.field private position:I

.field private final record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    .line 11
    iput p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->identifierByteSize:I

    return-void
.end method

.method private final and(BI)I
    .locals 0

    and-int/2addr p1, p2

    return p1
.end method

.method private final and(BJ)J
    .locals 2

    int-to-long v0, p1

    and-long p1, v0, p2

    return-wide p1
.end method

.method private final readByteId(I[B)J
    .locals 0

    .line 37
    aget-byte p1, p2, p1

    int-to-long p1, p1

    return-wide p1
.end method

.method private final readIntId(I[B)J
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 53
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    .line 54
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 55
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 56
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method private final readLongId(I[B)J
    .locals 7

    add-int/lit8 v0, p1, 0x1

    .line 64
    aget-byte p1, p2, p1

    int-to-long v1, p1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 p1, 0x38

    shl-long/2addr v1, p1

    add-int/lit8 p1, v0, 0x1

    .line 65
    aget-byte v0, p2, v0

    int-to-long v5, v0

    and-long/2addr v5, v3

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long v0, v1, v5

    add-int/lit8 v2, p1, 0x1

    .line 66
    aget-byte p1, p2, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x28

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 67
    aget-byte v2, p2, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 68
    aget-byte p1, p2, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x18

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 69
    aget-byte v2, p2, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 70
    aget-byte p1, p2, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x8

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    .line 71
    aget-byte p1, p2, v2

    int-to-long p1, p1

    and-long/2addr p1, v3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private final readShortId(I[B)J
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 44
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 45
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method


# virtual methods
.method public final readId()J
    .locals 4

    .line 18
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->identifierByteSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 22
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->readLongId(I[B)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->readIntId(I[B)J

    move-result-wide v0

    goto :goto_0

    .line 20
    :cond_2
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->readShortId(I[B)J

    move-result-wide v0

    goto :goto_0

    .line 19
    :cond_3
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->record:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->readByteId(I[B)J

    move-result-wide v0

    .line 25
    :goto_0
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    iget v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->identifierByteSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    return-wide v0
.end method

.method public final skipBytes(I)V
    .locals 1

    .line 30
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->position:I

    return-void
.end method
