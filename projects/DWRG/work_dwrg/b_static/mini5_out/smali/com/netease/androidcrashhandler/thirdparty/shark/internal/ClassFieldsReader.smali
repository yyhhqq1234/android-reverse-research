.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;
.super Ljava/lang/Object;
.source "ClassFieldsReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0003H\u0002J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0003H\u0002J\u0008\u0010!\u001a\u00020\u0003H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0003H\u0002J\u0008\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;",
        "",
        "identifierByteSize",
        "",
        "classFieldBytes",
        "",
        "(I[B)V",
        "position",
        "classDumpFields",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "indexedClass",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;",
        "classDumpHasReferenceFields",
        "",
        "classDumpStaticFields",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "readBoolean",
        "readByte",
        "",
        "readChar",
        "",
        "readDouble",
        "",
        "readFloat",
        "",
        "readId",
        "",
        "readInt",
        "readLong",
        "readShort",
        "",
        "readUnsignedByte",
        "readUnsignedShort",
        "readValue",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;",
        "type",
        "skipStaticFields",
        "",
        "Companion",
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


# static fields
.field private static final BOOLEAN_TYPE:I

.field private static final BYTE_TYPE:I

.field private static final CHAR_TYPE:I

.field public static final Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader$Companion;

.field private static final DOUBLE_TYPE:I

.field private static final FLOAT_TYPE:I

.field private static final INT_TYPE:I

.field private static final LONG_TYPE:I

.field private static final SHORT_TYPE:I


# instance fields
.field private final classFieldBytes:[B

.field private final identifierByteSize:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader$Companion;

    .line 171
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->BOOLEAN:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->BOOLEAN_TYPE:I

    .line 172
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->CHAR:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->CHAR_TYPE:I

    .line 173
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->FLOAT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->FLOAT_TYPE:I

    .line 174
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->DOUBLE:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->DOUBLE_TYPE:I

    .line 175
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->BYTE:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->BYTE_TYPE:I

    .line 176
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->SHORT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->SHORT_TYPE:I

    .line 177
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->INT_TYPE:I

    .line 178
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->LONG:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->LONG_TYPE:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->identifierByteSize:I

    .line 28
    iput-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->classFieldBytes:[B

    return-void
.end method

.method private final readBoolean()Z
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final readByte()B
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->classFieldBytes:[B

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final readChar()C
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private final readDouble()D
    .locals 2

    .line 167
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private final readFloat()F
    .locals 1

    .line 163
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private final readId()J
    .locals 2

    .line 144
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->identifierByteSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readLong()J

    move-result-wide v0

    goto :goto_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readInt()I

    move-result v0

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readShort()S

    move-result v0

    goto :goto_0

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readByte()B

    move-result v0

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0
.end method

.method private final readInt()I
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->classFieldBytes:[B

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    .line 113
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 114
    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 115
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private final readLong()J
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->classFieldBytes:[B

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    .line 120
    iput v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    .line 121
    iput v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    .line 122
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    .line 123
    iput v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    .line 124
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    .line 125
    iput v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    .line 126
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method private final readShort()S
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->classFieldBytes:[B

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    .line 131
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private final readUnsignedByte()I
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final readUnsignedShort()I
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private final readValue(I)Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 94
    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;-><init>(J)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto/16 :goto_0

    .line 95
    :cond_0
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->BOOLEAN_TYPE:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$BooleanHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readBoolean()Z

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$BooleanHolder;-><init>(Z)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto/16 :goto_0

    .line 96
    :cond_1
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->CHAR_TYPE:I

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$CharHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readChar()C

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$CharHolder;-><init>(C)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 97
    :cond_2
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->FLOAT_TYPE:I

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$FloatHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readFloat()F

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$FloatHolder;-><init>(F)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 98
    :cond_3
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->DOUBLE_TYPE:I

    if-ne p1, v0, :cond_4

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$DoubleHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readDouble()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$DoubleHolder;-><init>(D)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 99
    :cond_4
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->BYTE_TYPE:I

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ByteHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readByte()B

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ByteHolder;-><init>(B)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 100
    :cond_5
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->SHORT_TYPE:I

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ShortHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readShort()S

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ShortHolder;-><init>(S)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 101
    :cond_6
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->INT_TYPE:I

    if-ne p1, v0, :cond_7

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$IntHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readInt()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$IntHolder;-><init>(I)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    goto :goto_0

    .line 102
    :cond_7
    sget v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->LONG_TYPE:I

    if-ne p1, v0, :cond_8

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$LongHolder;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$LongHolder;-><init>(J)V

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    :goto_0
    return-object p1

    .line 103
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final skipStaticFields()V
    .locals 5

    .line 80
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 82
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    iget v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->identifierByteSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    .line 83
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedByte()I

    move-result v2

    .line 84
    iget v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 85
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->identifierByteSize:I

    goto :goto_1

    .line 87
    :cond_0
    sget-object v4, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    .line 84
    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final classDumpFields(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    .line 55
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->skipStaticFields()V

    .line 57
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedShort()I

    move-result p1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 60
    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readId()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedByte()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;-><init>(JI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final classDumpHasReferenceFields(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;)Z
    .locals 4

    .line 66
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    .line 67
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->skipStaticFields()V

    .line 68
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedShort()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 70
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    iget v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->identifierByteSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    .line 71
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final classDumpStaticFields(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;->getFieldsIndex()I

    move-result p1

    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->position:I

    .line 35
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedShort()I

    move-result p1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readId()J

    move-result-wide v2

    .line 39
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readUnsignedByte()I

    move-result v4

    .line 40
    invoke-direct {p0, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;->readValue(I)Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    move-result-object v5

    .line 42
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;-><init>(JILcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;)V

    .line 41
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
