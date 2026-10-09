.class public final Lcom/tencent/component/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x7
.end annotation


# static fields
.field static final PADDING:[B

.field static final S:[[I


# instance fields
.field private buffer:[B

.field private count:[J

.field private digest:[B

.field public digestHexStr:Ljava/lang/String;

.field private state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 20
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/component/utils/MD5;->S:[[I

    .line 24
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tencent/component/utils/MD5;->PADDING:[B

    return-void

    .line 20
    nop

    :array_0
    .array-data 4
        0x7
        0xc
        0x11
        0x16
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x9
        0xe
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x4
        0xb
        0x10
        0x17
    .end array-data

    :array_3
    .array-data 4
        0x6
        0xa
        0xf
        0x15
    .end array-data

    .line 24
    :array_4
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/component/utils/MD5;->state:[J

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tencent/component/utils/MD5;->count:[J

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/component/utils/MD5;->buffer:[B

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/component/utils/MD5;->digest:[B

    .line 69
    invoke-direct {p0}, Lcom/tencent/component/utils/MD5;->md5Init()V

    .line 70
    return-void
.end method

.method private Decode([J[BI)V
    .locals 7
    .param p1, "output"    # [J
    .param p2, "input"    # [B
    .param p3, "len"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 300
    aget-byte v2, p2, v1

    invoke-static {v2}, Lcom/tencent/component/utils/MD5;->b2iu(B)J

    move-result-wide v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/tencent/component/utils/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/tencent/component/utils/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/tencent/component/utils/MD5;->b2iu(B)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private Encode([B[JI)V
    .locals 8
    .param p1, "output"    # [B
    .param p2, "input"    # [J
    .param p3, "len"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 288
    aget-wide v2, p2, v0

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 289
    add-int/lit8 v2, v1, 0x1

    aget-wide v4, p2, v0

    const/16 v3, 0x8

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 290
    add-int/lit8 v2, v1, 0x2

    aget-wide v4, p2, v0

    const/16 v3, 0x10

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 291
    add-int/lit8 v2, v1, 0x3

    aget-wide v4, p2, v0

    const/16 v3, 0x18

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 286
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method private F(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 90
    and-long v0, p1, p3

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v2, p5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private FF(JJJJJJJ)J
    .locals 11
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J
    .param p9, "x"    # J
    .param p11, "s"    # J
    .param p13, "ac"    # J

    .prologue
    .line 111
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/tencent/component/utils/MD5;->F(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 112
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 113
    add-long/2addr p1, p3

    .line 114
    return-wide p1
.end method

.method private G(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 94
    and-long v0, p1, p5

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p5

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private GG(JJJJJJJ)J
    .locals 11
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J
    .param p9, "x"    # J
    .param p11, "s"    # J
    .param p13, "ac"    # J

    .prologue
    .line 119
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/tencent/component/utils/MD5;->G(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 120
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 121
    add-long/2addr p1, p3

    .line 122
    return-wide p1
.end method

.method private H(JJJ)J
    .locals 3
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 98
    xor-long v0, p1, p3

    xor-long/2addr v0, p5

    return-wide v0
.end method

.method private HH(JJJJJJJ)J
    .locals 11
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J
    .param p9, "x"    # J
    .param p11, "s"    # J
    .param p13, "ac"    # J

    .prologue
    .line 127
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/tencent/component/utils/MD5;->H(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 128
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 129
    add-long/2addr p1, p3

    .line 130
    return-wide p1
.end method

.method private I(JJJ)J
    .locals 3
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 102
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p5

    or-long/2addr v0, p1

    xor-long/2addr v0, p3

    return-wide v0
.end method

.method private II(JJJJJJJ)J
    .locals 11
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J
    .param p9, "x"    # J
    .param p11, "s"    # J
    .param p13, "ac"    # J

    .prologue
    .line 135
    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Lcom/tencent/component/utils/MD5;->I(JJJ)J

    move-result-wide v2

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr p1, v2

    .line 136
    long-to-int v2, p1

    move-wide/from16 v0, p11

    long-to-int v3, v0

    shl-int/2addr v2, v3

    long-to-int v3, p1

    const-wide/16 v4, 0x20

    sub-long v4, v4, p11

    long-to-int v4, v4

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-long p1, v2

    .line 137
    add-long/2addr p1, p3

    .line 138
    return-wide p1
.end method

.method public static StrMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x7
    .end annotation

    .prologue
    .line 336
    invoke-static {p0}, Lcom/tencent/component/utils/MD5;->toMD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 337
    .local v0, "dst":[B
    const-string v2, ""

    .line 338
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-static {v4}, Lcom/tencent/component/utils/MD5;->byteHEX(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v2
.end method

.method public static b2iu(B)J
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 308
    if-gez p0, :cond_0

    and-int/lit16 v0, p0, 0xff

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method public static byteHEX(B)Ljava/lang/String;
    .locals 5
    .param p0, "ib"    # B

    .prologue
    .line 315
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 316
    .local v0, "Digit":[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 317
    .local v1, "ob":[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 318
    const/4 v3, 0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 319
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 320
    .local v2, "s":Ljava/lang/String;
    return-object v2

    .line 315
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static md5BytesTOHexStr([B)Ljava/lang/String;
    .locals 6
    .param p0, "md5Bytes"    # [B
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x7
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 346
    if-eqz p0, :cond_0

    array-length v3, p0

    if-ge v3, v5, :cond_2

    .line 347
    :cond_0
    const-string v2, ""

    .line 354
    :cond_1
    return-object v2

    .line 349
    :cond_2
    move-object v0, p0

    .line 350
    .local v0, "dst":[B
    const-string v2, ""

    .line 351
    .local v2, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-static {v4}, Lcom/tencent/component/utils/MD5;->byteHEX(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private md5Final()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 175
    new-array v0, v6, [B

    .line 178
    .local v0, "bits":[B
    iget-object v3, p0, Lcom/tencent/component/utils/MD5;->count:[J

    invoke-direct {p0, v0, v3, v6}, Lcom/tencent/component/utils/MD5;->Encode([B[JI)V

    .line 180
    iget-object v3, p0, Lcom/tencent/component/utils/MD5;->count:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v3, 0x3

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit8 v1, v3, 0x3f

    .line 181
    .local v1, "index":I
    const/16 v3, 0x38

    if-ge v1, v3, :cond_0

    rsub-int/lit8 v2, v1, 0x38

    .line 182
    .local v2, "padLen":I
    :goto_0
    sget-object v3, Lcom/tencent/component/utils/MD5;->PADDING:[B

    invoke-direct {p0, v3, v2}, Lcom/tencent/component/utils/MD5;->md5Update([BI)V

    .line 184
    invoke-direct {p0, v0, v6}, Lcom/tencent/component/utils/MD5;->md5Update([BI)V

    .line 186
    iget-object v3, p0, Lcom/tencent/component/utils/MD5;->digest:[B

    iget-object v4, p0, Lcom/tencent/component/utils/MD5;->state:[J

    const/16 v5, 0x10

    invoke-direct {p0, v3, v4, v5}, Lcom/tencent/component/utils/MD5;->Encode([B[JI)V

    .line 187
    return-void

    .line 181
    .end local v2    # "padLen":I
    :cond_0
    rsub-int/lit8 v2, v1, 0x78

    goto :goto_0
.end method

.method private md5Init()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->count:[J

    aput-wide v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->count:[J

    aput-wide v2, v0, v4

    .line 78
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->state:[J

    const-wide/32 v2, 0x67452301

    aput-wide v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->state:[J

    const-wide v2, 0xefcdab89L

    aput-wide v2, v0, v4

    .line 80
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    .line 82
    return-void
.end method

.method private md5Memcpy([B[BIII)V
    .locals 3
    .param p1, "output"    # [B
    .param p2, "input"    # [B
    .param p3, "outpos"    # I
    .param p4, "inpos"    # I
    .param p5, "len"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 194
    add-int v1, p3, v0

    add-int v2, p4, v0

    aget-byte v2, p2, v2

    aput-byte v2, p1, v1

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method private md5Transform([B)V
    .locals 28
    .param p1, "block"    # [B

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x0

    aget-wide v4, v3, v12

    .local v4, "a":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x1

    aget-wide v6, v3, v12

    .local v6, "b":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x2

    aget-wide v8, v3, v12

    .local v8, "c":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x3

    aget-wide v10, v3, v12

    .line 201
    .local v10, "d":J
    const/16 v3, 0x10

    new-array v2, v3, [J

    .line 203
    .local v2, "x":[J
    const/16 v3, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/tencent/component/utils/MD5;->Decode([J[BI)V

    .line 205
    const/4 v3, 0x0

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x0

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xd76aa478L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 206
    const/4 v3, 0x1

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xe8c7b756L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 207
    const/4 v3, 0x2

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x242070db

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 208
    const/4 v3, 0x3

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xc1bdceeeL

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 209
    const/4 v3, 0x4

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x0

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xf57c0fafL

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 210
    const/4 v3, 0x5

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x4787c62a

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 211
    const/4 v3, 0x6

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xa8304613L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 212
    const/4 v3, 0x7

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfd469501L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 213
    const/16 v3, 0x8

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x0

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x698098d8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 214
    const/16 v3, 0x9

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x8b44f7afL

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 215
    const/16 v3, 0xa

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffff5bb1L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 216
    const/16 v3, 0xb

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x895cd7beL

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 217
    const/16 v3, 0xc

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x0

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x6b901122

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v4

    .line 218
    const/16 v3, 0xd

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfd987193L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v10

    .line 219
    const/16 v3, 0xe

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xa679438eL

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v8

    .line 220
    const/16 v3, 0xf

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x0

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x49b40821

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->FF(JJJJJJJ)J

    move-result-wide v6

    .line 223
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x1

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xf61e2562L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 224
    const/4 v3, 0x6

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xc040b340L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 225
    const/16 v3, 0xb

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x265e5a51

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 226
    const/4 v3, 0x0

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xe9b6c7aaL

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 227
    const/4 v3, 0x5

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x1

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xd62f105dL

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 228
    const/16 v3, 0xa

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x2441453

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 229
    const/16 v3, 0xf

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xd8a1e681L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 230
    const/4 v3, 0x4

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xe7d3fbc8L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 231
    const/16 v3, 0x9

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x1

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x21e1cde6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 232
    const/16 v3, 0xe

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xc33707d6L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 233
    const/4 v3, 0x3

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xf4d50d87L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 234
    const/16 v3, 0x8

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x455a14ed

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 235
    const/16 v3, 0xd

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x1

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xa9e3e905L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v4

    .line 236
    const/4 v3, 0x2

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfcefa3f8L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v10

    .line 237
    const/4 v3, 0x7

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x676f02d9

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v8

    .line 238
    const/16 v3, 0xc

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x1

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x8d2a4c8aL

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->GG(JJJJJJJ)J

    move-result-wide v6

    .line 241
    const/4 v3, 0x5

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x2

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xfffa3942L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 242
    const/16 v3, 0x8

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x8771f681L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 243
    const/16 v3, 0xb

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x6d9d6122

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 244
    const/16 v3, 0xe

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfde5380cL

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 245
    const/4 v3, 0x1

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x2

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xa4beea44L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 246
    const/4 v3, 0x4

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x4bdecfa9

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 247
    const/4 v3, 0x7

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xf6bb4b60L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 248
    const/16 v3, 0xa

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xbebfbc70L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 249
    const/16 v3, 0xd

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x2

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x289b7ec6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 250
    const/4 v3, 0x0

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xeaa127faL

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 251
    const/4 v3, 0x3

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xd4ef3085L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 252
    const/4 v3, 0x6

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x4881d05

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 253
    const/16 v3, 0x9

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x2

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xd9d4d039L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v4

    .line 254
    const/16 v3, 0xc

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xe6db99e5L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v10

    .line 255
    const/16 v3, 0xf

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x1fa27cf8

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v8

    .line 256
    const/4 v3, 0x2

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x2

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xc4ac5665L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->HH(JJJJJJJ)J

    move-result-wide v6

    .line 259
    const/4 v3, 0x0

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x3

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xf4292244L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 260
    const/4 v3, 0x7

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x432aff97

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 261
    const/16 v3, 0xe

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xab9423a7L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 262
    const/4 v3, 0x5

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfc93a039L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 263
    const/16 v3, 0xc

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x3

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x655b59c3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 264
    const/4 v3, 0x3

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x8f0ccc92L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 265
    const/16 v3, 0xa

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xffeff47dL

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 266
    const/4 v3, 0x1

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x85845dd1L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 267
    const/16 v3, 0x8

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x3

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide/32 v16, 0x6fa87e4f

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 268
    const/16 v3, 0xf

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xfe2ce6e0L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 269
    const/4 v3, 0x6

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xa3014314L

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 270
    const/16 v3, 0xd

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x4e0811a1

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 271
    const/4 v3, 0x4

    aget-wide v12, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v14, 0x3

    aget-object v3, v3, v14

    const/4 v14, 0x0

    aget v3, v3, v14

    int-to-long v14, v3

    const-wide v16, 0xf7537e82L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v4

    .line 272
    const/16 v3, 0xb

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xbd3af235L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v10

    .line 273
    const/4 v3, 0x2

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x2

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x2ad7d2bb

    move-object/from16 v13, p0

    move-wide v14, v8

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v8

    .line 274
    const/16 v3, 0x9

    aget-wide v22, v2, v3

    sget-object v3, Lcom/tencent/component/utils/MD5;->S:[[I

    const/4 v12, 0x3

    aget-object v3, v3, v12

    const/4 v12, 0x3

    aget v3, v3, v12

    int-to-long v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0xeb86d391L

    move-object/from16 v13, p0

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v27}, Lcom/tencent/component/utils/MD5;->II(JJJJJJJ)J

    move-result-wide v6

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x0

    aget-wide v14, v3, v12

    add-long/2addr v14, v4

    aput-wide v14, v3, v12

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x1

    aget-wide v14, v3, v12

    add-long/2addr v14, v6

    aput-wide v14, v3, v12

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x2

    aget-wide v14, v3, v12

    add-long/2addr v14, v8

    aput-wide v14, v3, v12

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->state:[J

    const/4 v12, 0x3

    aget-wide v14, v3, v12

    add-long/2addr v14, v10

    aput-wide v14, v3, v12

    .line 280
    return-void
.end method

.method private md5Update([BI)V
    .locals 19
    .param p1, "inbuf"    # [B
    .param p2, "inputLen"    # I

    .prologue
    .line 147
    const/16 v2, 0x40

    new-array v9, v2, [B

    .line 148
    .local v9, "block":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/component/utils/MD5;->count:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v4, 0x3

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit8 v5, v2, 0x3f

    .line 149
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/component/utils/MD5;->count:[J

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    shl-int/lit8 v4, p2, 0x3

    int-to-long v14, v4

    add-long/2addr v10, v14

    aput-wide v10, v2, v3

    shl-int/lit8 v2, p2, 0x3

    int-to-long v2, v2

    cmp-long v2, v10, v2

    if-gez v2, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/component/utils/MD5;->count:[J

    const/4 v3, 0x1

    aget-wide v10, v2, v3

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    aput-wide v10, v2, v3

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/component/utils/MD5;->count:[J

    const/4 v3, 0x1

    aget-wide v10, v2, v3

    ushr-int/lit8 v4, p2, 0x1d

    int-to-long v14, v4

    add-long/2addr v10, v14

    aput-wide v10, v2, v3

    .line 153
    rsub-int/lit8 v7, v5, 0x40

    .line 155
    .local v7, "partLen":I
    move/from16 v0, p2

    if-lt v0, v7, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/component/utils/MD5;->buffer:[B

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/component/utils/MD5;->md5Memcpy([B[BIII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/component/utils/MD5;->buffer:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/component/utils/MD5;->md5Transform([B)V

    .line 159
    move v12, v7

    .local v12, "i":I
    :goto_0
    add-int/lit8 v2, v12, 0x3f

    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    .line 161
    const/4 v11, 0x0

    const/16 v13, 0x40

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/tencent/component/utils/MD5;->md5Memcpy([B[BIII)V

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/component/utils/MD5;->md5Transform([B)V

    .line 159
    add-int/lit8 v12, v12, 0x40

    goto :goto_0

    .line 164
    :cond_1
    const/4 v5, 0x0

    .line 169
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/component/utils/MD5;->buffer:[B

    sub-int v18, p2, v12

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move/from16 v16, v5

    move/from16 v17, v12

    invoke-direct/range {v13 .. v18}, Lcom/tencent/component/utils/MD5;->md5Memcpy([B[BIII)V

    .line 170
    return-void

    .line 167
    .end local v12    # "i":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    goto :goto_1
.end method

.method public static toMD5(Ljava/lang/String;)[B
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x7
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lcom/tencent/component/utils/MD5;

    invoke-direct {v0}, Lcom/tencent/component/utils/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/component/utils/MD5;->getMD5(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toMD5([B)[B
    .locals 2
    .param p0, "src"    # [B
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x7
    .end annotation

    .prologue
    .line 325
    new-instance v0, Lcom/tencent/component/utils/MD5;

    invoke-direct {v0}, Lcom/tencent/component/utils/MD5;-><init>()V

    .line 326
    .local v0, "md5":Lcom/tencent/component/utils/MD5;
    invoke-virtual {v0, p0}, Lcom/tencent/component/utils/MD5;->getMD5([B)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMD5(Ljava/lang/String;)[B
    .locals 4
    .param p1, "inbuf"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tencent/component/utils/MD5;->md5Init()V

    .line 47
    :try_start_0
    const-string v2, "ISO8859_1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 48
    .local v1, "str":[B
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/component/utils/MD5;->md5Update([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "str":[B
    :goto_0
    invoke-direct {p0}, Lcom/tencent/component/utils/MD5;->md5Final()V

    .line 55
    iget-object v2, p0, Lcom/tencent/component/utils/MD5;->digest:[B

    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/component/utils/MD5;->md5Update([BI)V

    goto :goto_0
.end method

.method public getMD5([B)[B
    .locals 1
    .param p1, "inbuf"    # [B

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/component/utils/MD5;->md5Init()V

    .line 61
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/tencent/component/utils/MD5;->md5Update([BI)V

    .line 62
    invoke-direct {p0}, Lcom/tencent/component/utils/MD5;->md5Final()V

    .line 63
    iget-object v0, p0, Lcom/tencent/component/utils/MD5;->digest:[B

    return-object v0
.end method
