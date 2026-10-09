.class public Lcom/subao/common/e/ac;
.super Ljava/lang/Object;
.source "PortalDataEx.java"


# static fields
.field private static final e:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/subao/common/e/ac;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;[B)V
    .locals 8

    .prologue
    .line 71
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/e/ac;-><init>(Ljava/lang/String;JLjava/lang/String;[BZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;[BZ)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    .line 85
    iput-wide p2, p0, Lcom/subao/common/e/ac;->f:J

    .line 86
    iput-object p4, p0, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/subao/common/e/ac;->c:[B

    .line 88
    iput-boolean p6, p0, Lcom/subao/common/e/ac;->d:Z

    .line 89
    return-void
.end method

.method private static a([B)I
    .locals 1

    .prologue
    .line 166
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/subao/common/e/ac;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v9, 0x0

    .line 187
    invoke-static {v2}, Lcom/subao/common/e/ac;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 189
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 192
    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const/high16 v2, 0x2000000

    if-le v1, v2, :cond_2

    .line 193
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid total size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v6, v2, v9, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 199
    add-int/lit8 v0, v1, -0x4

    invoke-static {v0}, Lcom/subao/common/e/ac;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 201
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 203
    :cond_3
    invoke-static {v0}, Lcom/subao/common/e/ac;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0}, Lcom/subao/common/e/ac;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 205
    invoke-static {v0}, Lcom/subao/common/e/ac;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static {v0}, Lcom/subao/common/e/ac;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-lt v7, v8, :cond_4

    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v6, v7, v9, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 210
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC verify failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    const-string v0, "SubaoData"

    const-string v6, "PortalDataEx.deserialize from old version"

    invoke-static {v0, v6}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_5
    new-instance v0, Lcom/subao/common/e/ac;

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/e/ac;-><init>(Ljava/lang/String;JLjava/lang/String;[B)V

    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Lcom/subao/common/e/ac;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_0
    return-object p0

    .line 232
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static a(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 220
    new-array v0, p0, [B

    .line 221
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 222
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 223
    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;[B)V
    .locals 1

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 176
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/nio/ByteBuffer;)J
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private static c(Ljava/nio/ByteBuffer;)[B
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 145
    if-nez v1, :cond_0

    .line 146
    sget-object v0, Lcom/subao/common/e/ac;->e:[B

    .line 153
    :goto_0
    return-object v0

    .line 147
    :cond_0
    if-gez v1, :cond_1

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 150
    new-array v0, v1, [B

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 156
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 329
    iput-wide p1, p0, Lcom/subao/common/e/ac;->f:J

    .line 330
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 298
    iget-object v0, p0, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/subao/common/e/ac;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/subao/common/e/ac;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 301
    invoke-static {v0}, Lcom/subao/common/e/ac;->a([B)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x4

    .line 303
    invoke-static {v1}, Lcom/subao/common/e/ac;->a([B)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/subao/common/e/ac;->c:[B

    .line 304
    invoke-static {v3}, Lcom/subao/common/e/ac;->a([B)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x8

    .line 307
    invoke-static {v2}, Lcom/subao/common/e/ac;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 308
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 309
    invoke-static {v3, v0}, Lcom/subao/common/e/ac;->a(Ljava/nio/ByteBuffer;[B)V

    .line 310
    iget-wide v4, p0, Lcom/subao/common/e/ac;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 311
    invoke-static {v3, v1}, Lcom/subao/common/e/ac;->a(Ljava/nio/ByteBuffer;[B)V

    .line 312
    iget-object v0, p0, Lcom/subao/common/e/ac;->c:[B

    invoke-static {v3, v0}, Lcom/subao/common/e/ac;->a(Ljava/nio/ByteBuffer;[B)V

    .line 315
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 316
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 317
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v0, v6, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 318
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 322
    invoke-static {p1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 323
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/subao/common/e/ac;->c:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/subao/common/e/ac;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/ac;->c:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/subao/common/e/ac;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 243
    goto :goto_0

    .line 245
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/ac;

    if-eqz v2, :cond_0

    .line 248
    check-cast p1, Lcom/subao/common/e/ac;

    .line 249
    iget-boolean v2, p0, Lcom/subao/common/e/ac;->d:Z

    iget-boolean v3, p1, Lcom/subao/common/e/ac;->d:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/subao/common/e/ac;->f:J

    iget-wide v4, p1, Lcom/subao/common/e/ac;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    .line 251
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    .line 252
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/ac;->c:[B

    iget-object v3, p1, Lcom/subao/common/e/ac;->c:[B

    .line 253
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 259
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    const-string v1, "CacheTag"

    iget-object v2, p0, Lcom/subao/common/e/ac;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/subao/common/e/ac;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-string v1, ", Expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/subao/common/e/ac;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 262
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const-string v1, "Version"

    iget-object v2, p0, Lcom/subao/common/e/ac;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/subao/common/e/ac;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v1, "Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    iget-object v1, p0, Lcom/subao/common/e/ac;->c:[B

    if-nez v1, :cond_0

    .line 267
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :goto_0
    const-string v1, ", new-download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/subao/common/e/ac;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 272
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/subao/common/e/ac;->c:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
