.class public Lcom/subao/common/n/g;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;
    .locals 1

    .prologue
    .line 48
    if-eqz p2, :cond_1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 52
    :cond_0
    invoke-interface {p2, p0}, Lcom/subao/common/c;->serialize(Landroid/util/JsonWriter;)V

    .line 54
    :cond_1
    return-object p0
.end method

.method public static a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)Landroid/util/JsonWriter;
    .locals 6

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 75
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;
    .locals 1

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 68
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 1

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 61
    :cond_0
    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    .line 96
    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/subao/common/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 27
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 28
    invoke-interface {p0, v1}, Lcom/subao/common/c;->serialize(Landroid/util/JsonWriter;)V

    .line 29
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/subao/common/c;)[B
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 41
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 42
    invoke-interface {p0, v1}, Lcom/subao/common/c;->serialize(Landroid/util/JsonWriter;)V

    .line 43
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
