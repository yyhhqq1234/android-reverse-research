.class public Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # Lokio/ByteString;

    .prologue
    .line 19
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeString(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWire()Lcom/squareup/wire/Wire;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;->getWire()Lcom/squareup/wire/Wire;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">([B",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public static safeBigLong2Long(Ljava/lang/Long;J)J
    .locals 1
    .param p0, "value"    # Ljava/lang/Long;
    .param p1, "def"    # J

    .prologue
    .line 53
    if-nez p0, :cond_0

    .end local p1    # "def":J
    :goto_0
    return-wide p1

    .restart local p1    # "def":J
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public static safeDecodeUtf8(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "bs"    # Lokio/ByteString;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeDecodeUtf8(Lokio/ByteString;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static safeDecodeUtf8(Lokio/ByteString;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "bs"    # Lokio/ByteString;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .end local p1    # "def":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "def":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static safeEncodeUtf8(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # Lokio/ByteString;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .end local p1    # "def":Lokio/ByteString;
    :goto_0
    return-object p1

    .restart local p1    # "def":Lokio/ByteString;
    :cond_0
    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    goto :goto_0
.end method

.method public static safeInteger2Int(Ljava/lang/Integer;I)I
    .locals 0
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "def"    # I

    .prologue
    .line 49
    if-nez p0, :cond_0

    .end local p1    # "def":I
    :goto_0
    return p1

    .restart local p1    # "def":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method
