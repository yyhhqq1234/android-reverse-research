.class Lcom/subao/common/b/a;
.super Ljava/lang/Object;
.source "AuthCache.java"


# instance fields
.field private final a:Lcom/subao/common/f/c;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subao/common/f/c;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/subao/common/b/a;->a:Lcom/subao/common/f/c;

    .line 58
    invoke-static {p1}, Lcom/subao/common/b/a;->a(Lcom/subao/common/f/c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    .line 59
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/subao/common/n/c;->a(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/util/JsonReader;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 119
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v2

    move-object v1, v2

    .line 124
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string/jumbo v5, "user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 128
    :cond_1
    const-string v5, "data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-static {p0}, Lcom/subao/common/b/g;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/g;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 140
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v2, v3

    goto :goto_2
.end method

.method private static a(Lcom/subao/common/f/c;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/f/c;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/subao/common/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 184
    :try_start_0
    invoke-interface {p0}, Lcom/subao/common/f/c;->b()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 185
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 189
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 191
    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/subao/common/b/a;->a([BII)V

    .line 192
    invoke-static {v2}, Lcom/subao/common/b/a;->b([B)Ljava/util/Map;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    invoke-interface {p0}, Lcom/subao/common/f/c;->d()Z

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 189
    :goto_1
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    .line 186
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static a(Lcom/subao/common/f/c;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/f/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/b/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    :cond_1
    invoke-interface {p0}, Lcom/subao/common/f/c;->d()Z

    goto :goto_0

    .line 208
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 209
    new-instance v3, Landroid/util/JsonWriter;

    invoke-direct {v3, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :try_start_1
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 212
    const-string v0, "list"

    invoke-virtual {v3, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 213
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 214
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 216
    const-string/jumbo v1, "user"

    invoke-virtual {v3, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 217
    const-string v1, "data"

    invoke-virtual {v3, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/g;

    invoke-virtual {v0, v3}, Lcom/subao/common/b/g;->serialize(Landroid/util/JsonWriter;)V

    .line 219
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-interface {p0}, Lcom/subao/common/f/c;->d()Z

    goto :goto_0

    .line 221
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 222
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :try_start_4
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 227
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/subao/common/b/a;->a([B)V

    .line 229
    invoke-interface {p0}, Lcom/subao/common/f/c;->c()Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    .line 231
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    :try_start_6
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method static a([B)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/subao/common/b/a;->a([BII)V

    .line 87
    return-void
.end method

.method private static a([BII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {}, Lcom/subao/common/b/a;->a()[B

    move-result-object v3

    .line 102
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 103
    aget-byte v5, p0, p1

    .line 104
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    .line 105
    if-ne v0, v4, :cond_0

    move v0, v1

    .line 108
    :cond_0
    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 102
    add-int/lit8 p1, p1, 0x1

    move v2, v0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private static a()[B
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "SuBao"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "GameMaster"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subao/common/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 151
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 152
    :goto_0
    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v1}, Lcom/subao/common/b/a;->a(Landroid/util/JsonReader;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 166
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 168
    :goto_1
    return-object v0

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 166
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 168
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    .line 166
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/b/g;
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/subao/common/b/a;->a(Ljava/lang/String;J)Lcom/subao/common/b/g;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;J)Lcom/subao/common/b/g;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 289
    :goto_0
    return-object v0

    .line 266
    :cond_0
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 268
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/g;

    .line 271
    if-nez v0, :cond_2

    .line 272
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 274
    :cond_2
    iget-wide v2, v0, Lcom/subao/common/b/g;->b:J

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long v2, v2, p2

    if-lez v2, :cond_4

    .line 275
    const-string v1, "SubaoAuth"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    const-string v1, "SubaoAuth"

    const-string v2, "Cache of \'%s\' found, expire = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Lcom/subao/common/b/g;->b:J

    .line 277
    invoke-static {v6, v7}, Lcom/subao/common/b/a;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 276
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    iget-wide v2, v0, Lcom/subao/common/b/g;->b:J

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/subao/common/b/g;->a(J)Lcom/subao/common/b/g;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 282
    :cond_4
    :try_start_1
    const-string v2, "SubaoAuth"

    invoke-static {v2}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    const-string v2, "SubaoAuth"

    const-string v3, "Cache of \'%s\' found, but expired (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-wide v6, v0, Lcom/subao/common/b/g;->b:J

    .line 284
    invoke-static {v6, v7}, Lcom/subao/common/b/a;->a(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 283
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/subao/common/b/a;->a:Lcom/subao/common/f/c;

    iget-object v2, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/subao/common/b/a;->a(Lcom/subao/common/f/c;Ljava/util/Map;)V

    .line 288
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 289
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/subao/common/b/g;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    if-nez p2, :cond_2

    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 306
    iget-object v2, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 308
    iget-object v1, p0, Lcom/subao/common/b/a;->a:Lcom/subao/common/f/c;

    iget-object v2, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/subao/common/b/a;->a(Lcom/subao/common/f/c;Ljava/util/Map;)V

    .line 311
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    const-string v0, "SubaoAuth"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "SubaoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User info remove from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 318
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/subao/common/b/g;->b:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 319
    invoke-virtual {p2, v2, v3}, Lcom/subao/common/b/g;->a(J)Lcom/subao/common/b/g;

    move-result-object v4

    .line 320
    monitor-enter p0

    .line 321
    :try_start_2
    iget-object v5, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 322
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    .line 324
    :cond_3
    iget-object v5, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v4, p0, Lcom/subao/common/b/a;->a:Lcom/subao/common/f/c;

    iget-object v5, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/subao/common/b/a;->a(Lcom/subao/common/f/c;Ljava/util/Map;)V

    .line 326
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    const-string v4, "SubaoAuth"

    invoke-static {v4}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const-string v4, "SubaoAuth"

    const-string v5, "User info put into cache, \'%s\', cache-expire = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 330
    invoke-static {v2, v3}, Lcom/subao/common/b/a;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 328
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 338
    :cond_0
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 340
    monitor-exit p0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 342
    :cond_1
    const/4 v1, 0x0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 344
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/g;

    .line 346
    if-eqz v0, :cond_4

    .line 347
    iget-object v0, v0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 349
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 352
    goto :goto_1

    .line 353
    :cond_2
    if-eqz v1, :cond_3

    .line 354
    iget-object v0, p0, Lcom/subao/common/b/a;->a:Lcom/subao/common/f/c;

    iget-object v1, p0, Lcom/subao/common/b/a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/subao/common/b/a;->a(Lcom/subao/common/f/c;Ljava/util/Map;)V

    .line 356
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
