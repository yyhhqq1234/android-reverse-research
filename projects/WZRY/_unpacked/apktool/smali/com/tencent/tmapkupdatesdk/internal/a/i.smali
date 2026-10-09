.class public Lcom/tencent/tmapkupdatesdk/internal/a/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Ljava/util/LinkedHashMap;

.field b:Ljava/util/LinkedHashMap;

.field c:Ljava/util/ArrayList;

.field d:Lcom/tencent/tmapkupdatesdk/internal/a/e;

.field e:J

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a:Ljava/util/LinkedHashMap;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->c:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->d:Lcom/tencent/tmapkupdatesdk/internal/a/e;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->e:J

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x400

    const/4 v2, 0x0

    .line 65
    iget-wide v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->e:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->e:J

    .line 66
    :cond_0
    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 68
    iget-wide v6, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->e:J

    sub-long/2addr v6, v0

    long-to-int v3, v6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 69
    long-to-int v3, v0

    invoke-virtual {p1, v4, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 70
    int-to-long v6, v3

    cmp-long v3, v6, v0

    if-eqz v3, :cond_1

    :cond_1
    move v3, v2

    .line 74
    :goto_0
    int-to-long v6, v3

    const-wide/16 v8, 0x4

    sub-long v8, v0, v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_3

    .line 75
    aget-byte v2, v4, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v4, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v4, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v4, v5

    add-int/2addr v2, v5

    .line 76
    const v5, 0x504b0506

    if-ne v2, v5, :cond_2

    .line 78
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v3, 0x4

    int-to-long v8, v7

    sub-long v8, v0, v8

    long-to-int v7, v8

    invoke-direct {v5, v4, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    iget-object v5, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->d:Lcom/tencent/tmapkupdatesdk/internal/a/e;

    invoke-virtual {v5, v2}, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a(Ljava/io/DataInputStream;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 93
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->d:Lcom/tencent/tmapkupdatesdk/internal/a/e;

    iget v0, v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->f:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    .line 96
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 99
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 101
    :sswitch_0
    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    invoke-direct {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/c;-><init>()V

    .line 102
    invoke-virtual {v2, v1}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a(Ljava/io/DataInputStream;)V

    .line 104
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 105
    const-string v4, "META-INF/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :sswitch_1
    const/4 v0, 0x1

    .line 114
    goto :goto_0

    .line 119
    :cond_1
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 124
    :cond_2
    return-void

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x504b0102 -> :sswitch_0
        0x504b0506 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 128
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    const/4 v2, 0x0

    .line 132
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 134
    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_1
    move v2, v0

    .line 166
    goto :goto_0

    .line 136
    :sswitch_0
    new-instance v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;

    invoke-direct {v5}, Lcom/tencent/tmapkupdatesdk/internal/a/h;-><init>()V

    .line 137
    invoke-virtual {v5, v4}, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a(Ljava/io/DataInputStream;)V

    .line 138
    new-instance v6, Ljava/lang/String;

    iget-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->k:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 140
    iget-short v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->j:S

    iput-short v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    .line 141
    iget-short v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    if-lez v0, :cond_0

    .line 142
    iget-object v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->l:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    .line 146
    :cond_0
    iget v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    iput v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->g:I

    .line 147
    iget v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    iput v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->h:I

    .line 148
    iget v0, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    iput v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->f:I

    .line 151
    iget v0, v5, Lcom/tencent/tmapkupdatesdk/internal/a/h;->g:I

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 153
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 154
    goto :goto_1

    .line 156
    :sswitch_1
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    move v0, v2

    .line 157
    goto :goto_1

    :sswitch_2
    move v0, v3

    .line 160
    goto :goto_1

    :sswitch_3
    move v0, v3

    .line 163
    goto :goto_1

    .line 168
    :cond_1
    if-eqz v4, :cond_2

    .line 169
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 172
    :cond_2
    return-void

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x504b0102 -> :sswitch_2
        0x504b0304 -> :sswitch_0
        0x504b0506 -> :sswitch_3
        0x504b0708 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->f:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->e:J

    .line 42
    invoke-direct {p0, v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a(Ljava/io/RandomAccessFile;)V

    .line 45
    :cond_0
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 49
    :cond_1
    const-string v0, "ZipFileParser"

    const-string v1, "readEndOfCentralDirRecord finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->c()V

    .line 52
    const-string v0, "ZipFileParser"

    const-string v1, "readCentralDirFileHeaderList finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a()V

    .line 55
    const-string v0, "ZipFileParser"

    const-string v1, "readLocalFileHeader finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/tmapkupdatesdk/internal/a/c;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    return-object v0
.end method

.method public b()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 185
    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmapkupdatesdk/internal/a/h;

    .line 189
    if-nez v1, :cond_1

    .line 190
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 193
    :cond_1
    iget-short v2, v1, Lcom/tencent/tmapkupdatesdk/internal/a/h;->i:S

    add-int/lit8 v2, v2, 0x1e

    iget-short v1, v1, Lcom/tencent/tmapkupdatesdk/internal/a/h;->j:S

    add-int/2addr v1, v2

    .line 195
    iget v0, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->q:I

    add-int/2addr v0, v1

    return v0
.end method
