.class public Lcom/tencent/msdk/a/e;
.super Ljava/lang/Object;


# static fields
.field private static k:Ljava/util/Random;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/msdk/a/e;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length must be 16!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/a/e;->i:Z

    iput-object p1, p0, Lcom/tencent/msdk/a/e;->h:[B

    return-void
.end method

.method private a([B)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/a/e;->f1([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/msdk/a/e;->f:I

    :goto_0
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v7, :cond_1

    iget-boolean v0, p0, Lcom/tencent/msdk/a/e;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget v4, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_1
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/msdk/a/e;->c:[B

    iget v4, p0, Lcom/tencent/msdk/a/e;->e:I

    iget v5, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    invoke-direct {p0, v0}, Lcom/tencent/msdk/a/e;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/a/e;->c:[B

    iget v2, p0, Lcom/tencent/msdk/a/e;->d:I

    invoke-static {v0, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, Lcom/tencent/msdk/a/e;->f:I

    :goto_2
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v7, :cond_2

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    iget v1, p0, Lcom/tencent/msdk/a/e;->d:I

    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget v4, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget-object v1, p0, Lcom/tencent/msdk/a/e;->b:[B

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tencent/msdk/a/e;->d:I

    iput v0, p0, Lcom/tencent/msdk/a/e;->e:I

    iget v0, p0, Lcom/tencent/msdk/a/e;->d:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/msdk/a/e;->d:I

    iput v6, p0, Lcom/tencent/msdk/a/e;->f:I

    iput-boolean v6, p0, Lcom/tencent/msdk/a/e;->i:Z

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lcom/tencent/msdk/a/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/a/e;->f4([B)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BI)[B
    .locals 24

    const/16 v8, 0x10

    const/4 v2, 0x4

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v6

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v16

    const-wide/32 v2, -0x1c886470

    const-wide v18, 0xffffffffL

    and-long v2, v2, v18

    const-wide/32 v18, -0x61c88647

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    :goto_0
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_0

    const/4 v8, 0x4

    shl-long v20, v6, v8

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v6, v8

    add-long v22, v22, v16

    xor-long v20, v20, v22

    sub-long v4, v4, v20

    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    const/4 v8, 0x4

    shl-long v20, v4, v8

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v4, v8

    add-long v22, v22, v12

    xor-long v20, v20, v22

    sub-long v6, v6, v20

    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    sub-long v2, v2, v18

    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    move v8, v9

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a([BII)[B
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    new-array v0, v7, [B

    iput-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    new-array v0, v7, [B

    iput-object v0, p0, Lcom/tencent/msdk/a/e;->b:[B

    iput v1, p0, Lcom/tencent/msdk/a/e;->f:I

    iput v4, p0, Lcom/tencent/msdk/a/e;->g:I

    iput v4, p0, Lcom/tencent/msdk/a/e;->e:I

    iput v4, p0, Lcom/tencent/msdk/a/e;->d:I

    iput-boolean v1, p0, Lcom/tencent/msdk/a/e;->i:Z

    add-int/lit8 v0, p3, 0xa

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    rsub-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    :cond_0
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->b()I

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    iget v3, p0, Lcom/tencent/msdk/a/e;->f:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/msdk/a/e;->a:[B

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    move v0, v4

    :goto_1
    if-ge v0, v7, :cond_2

    iget-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/tencent/msdk/a/e;->g:I

    :cond_3
    :goto_2
    iget v0, p0, Lcom/tencent/msdk/a/e;->g:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_5

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v7, :cond_4

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/msdk/a/e;->f:I

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget v0, p0, Lcom/tencent/msdk/a/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->g:I

    :cond_4
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v0, v7, :cond_3

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->a()V

    goto :goto_2

    :cond_5
    move v2, p2

    move v3, p3

    :goto_3
    if-lez v3, :cond_6

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v7, :cond_b

    iget-object v5, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget v6, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v5, v6

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    :goto_4
    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v2, v7, :cond_a

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->a()V

    move v2, v0

    goto :goto_3

    :cond_6
    iput v1, p0, Lcom/tencent/msdk/a/e;->g:I

    :cond_7
    :goto_5
    iget v0, p0, Lcom/tencent/msdk/a/e;->g:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_9

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->a:[B

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/msdk/a/e;->f:I

    aput-byte v4, v0, v1

    iget v0, p0, Lcom/tencent/msdk/a/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->g:I

    :cond_8
    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v0, v7, :cond_7

    invoke-direct {p0}, Lcom/tencent/msdk/a/e;->a()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    return-object v0

    :cond_a
    move v2, v0

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method private b()I
    .locals 1

    sget-object v0, Lcom/tencent/msdk/a/e;->k:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private b([B)[B
    .locals 24

    const/16 v8, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v6

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/a/e;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/tencent/msdk/a/e;->getUnsignedInt([BII)J

    move-result-wide v16

    const-wide/16 v2, 0x0

    const-wide/32 v18, -0x61c88647

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    :goto_0
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_0

    add-long v2, v2, v18

    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    const/4 v8, 0x4

    shl-long v20, v4, v8

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v4, v8

    add-long v22, v22, v12

    xor-long v20, v20, v22

    add-long v6, v6, v20

    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    const/4 v8, 0x4

    shl-long v20, v6, v8

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v6, v8

    add-long v22, v22, v16

    xor-long v20, v20, v22

    add-long v4, v4, v20

    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    move v8, v9

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b([BII)[B
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x8

    iput v5, p0, Lcom/tencent/msdk/a/e;->e:I

    iput v5, p0, Lcom/tencent/msdk/a/e;->d:I

    add-int/lit8 v0, p2, 0x8

    new-array v1, v0, [B

    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    const/16 v0, 0x10

    if-ge p3, v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/a/e;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->b:[B

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->b:[B

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    sub-int v0, p3, v0

    add-int/lit8 v2, v0, -0xa

    if-gez v2, :cond_3

    move-object v0, v4

    goto :goto_0

    :cond_3
    move v0, p2

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    aput-byte v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    iput v5, p0, Lcom/tencent/msdk/a/e;->e:I

    iput v8, p0, Lcom/tencent/msdk/a/e;->d:I

    iput v8, p0, Lcom/tencent/msdk/a/e;->j:I

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/a/e;->f:I

    iput v9, p0, Lcom/tencent/msdk/a/e;->g:I

    move-object v0, v1

    :cond_5
    :goto_2
    iget v1, p0, Lcom/tencent/msdk/a/e;->g:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_7

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v1, v8, :cond_6

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/a/e;->f:I

    iget v1, p0, Lcom/tencent/msdk/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/a/e;->g:I

    :cond_6
    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v1, v8, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/a/e;->c([BII)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, v4

    goto :goto_0

    :cond_7
    move v1, v5

    move-object v3, v0

    :goto_3
    if-eqz v2, :cond_8

    iget v0, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v0, v8, :cond_10

    iget-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    iget v5, p0, Lcom/tencent/msdk/a/e;->e:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v5, v6

    aget-byte v5, v3, v5

    iget-object v6, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget v7, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, -0x1

    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/a/e;->f:I

    move v2, v1

    :goto_4
    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v1, v8, :cond_f

    iget v1, p0, Lcom/tencent/msdk/a/e;->d:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/tencent/msdk/a/e;->e:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/a/e;->c([BII)Z

    move-result v1

    if-nez v1, :cond_e

    move-object v0, v4

    goto/16 :goto_0

    :cond_8
    iput v9, p0, Lcom/tencent/msdk/a/e;->g:I

    move-object v0, v3

    :goto_5
    iget v1, p0, Lcom/tencent/msdk/a/e;->g:I

    if-ge v1, v8, :cond_d

    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ge v1, v8, :cond_a

    iget v1, p0, Lcom/tencent/msdk/a/e;->e:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v1, v2

    aget-byte v1, v0, v1

    iget-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget v3, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    if-eqz v1, :cond_9

    move-object v0, v4

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/a/e;->f:I

    :cond_a
    iget v1, p0, Lcom/tencent/msdk/a/e;->f:I

    if-ne v1, v8, :cond_c

    iget v0, p0, Lcom/tencent/msdk/a/e;->d:I

    iput v0, p0, Lcom/tencent/msdk/a/e;->e:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/a/e;->c([BII)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v0, p1

    :cond_c
    iget v1, p0, Lcom/tencent/msdk/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/a/e;->g:I

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/tencent/msdk/a/e;->c:[B

    goto/16 :goto_0

    :cond_e
    move v1, v0

    move-object v3, p1

    goto :goto_3

    :cond_f
    move v1, v0

    goto :goto_3

    :cond_10
    move v0, v1

    goto :goto_4

    :cond_11
    move-object v0, p1

    goto/16 :goto_2
.end method

.method private c([BII)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/msdk/a/e;->f:I

    :goto_0
    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/tencent/msdk/a/e;->j:I

    iget v3, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget v3, p0, Lcom/tencent/msdk/a/e;->f:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/tencent/msdk/a/e;->d:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lcom/tencent/msdk/a/e;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/msdk/a/e;->f:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    invoke-direct {p0, v2}, Lcom/tencent/msdk/a/e;->c([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    iget-object v2, p0, Lcom/tencent/msdk/a/e;->b:[B

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/tencent/msdk/a/e;->j:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/a/e;->j:I

    iget v2, p0, Lcom/tencent/msdk/a/e;->d:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/msdk/a/e;->d:I

    iput v1, p0, Lcom/tencent/msdk/a/e;->f:I

    goto :goto_1
.end method

.method private c([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/msdk/a/e;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static getUnsignedInt([BII)J
    .locals 7

    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    if-le p2, v6, :cond_0

    add-int/lit8 v0, p1, 0x8

    :goto_0
    if-ge p1, v0, :cond_1

    shl-long/2addr v2, v6

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    goto :goto_0

    :cond_1
    const-wide v0, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public f1([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/msdk/a/e;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public f2(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/a/e;->f4([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f3([B)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/a/e;->f1([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f4([B)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/msdk/a/e;->b([BII)[B

    move-result-object v0

    return-object v0
.end method
