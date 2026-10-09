.class Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/apkchannel/ApkChannelTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSDKComment"
.end annotation


# static fields
.field private static final protoHead:Lcom/tencent/msdk/apkchannel/ZipShort;


# instance fields
.field otherData:[B

.field p:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/msdk/apkchannel/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->protoHead:Lcom/tencent/msdk/apkchannel/ZipShort;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/apkchannel/ApkChannelTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/apkchannel/ApkChannelTool$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)V
    .locals 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 83
    if-nez p1, :cond_1

    .line 84
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "WARNING:[YYBComment]decode|data=null|exit"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v5, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->protoHead:Lcom/tencent/msdk/apkchannel/ZipShort;

    invoke-virtual {v5}, Lcom/tencent/msdk/apkchannel/ZipShort;->getBytes()[B

    move-result-object v5

    array-length v2, v5

    .line 89
    .local v2, "headLength":I
    new-array v1, v2, [B

    .line 90
    .local v1, "d":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 92
    sget-object v5, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->protoHead:Lcom/tencent/msdk/apkchannel/ZipShort;

    new-instance v6, Lcom/tencent/msdk/apkchannel/ZipShort;

    invoke-direct {v6, v1}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/tencent/msdk/apkchannel/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 93
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ERROR:[YYBComment]decode|unknow protocol|exit"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[YYBComment] unknow protocl ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_2
    array-length v5, p1

    sub-int/2addr v5, v2

    if-gt v5, v7, :cond_3

    .line 97
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ERROR:[YYBComment]decode|data.length - headLength <= 2|1|exit"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    new-array v1, v7, [B

    .line 102
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    new-instance v5, Lcom/tencent/msdk/apkchannel/ZipShort;

    invoke-direct {v5, v1}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>([B)V

    invoke-virtual {v5}, Lcom/tencent/msdk/apkchannel/ZipShort;->getValue()I

    move-result v4

    .line 105
    .local v4, "len":I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ge v5, v4, :cond_4

    .line 106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ERROR:[YYBComment]decode|data.length - headLength <= 2|2|exit"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    new-array v1, v4, [B

    .line 111
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v5, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 114
    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    add-int/lit8 v3, v5, -0x2

    .line 115
    .local v3, "leftLen":I
    if-lez v3, :cond_0

    .line 116
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->otherData:[B

    .line 117
    iget-object v5, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->otherData:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method encode()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->protoHead:Lcom/tencent/msdk/apkchannel/ZipShort;

    invoke-virtual {v4}, Lcom/tencent/msdk/apkchannel/ZipShort;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    const-string v3, ""

    .line 127
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v4}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "k":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "k":Ljava/lang/Object;
    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    .local v0, "bytes":[B
    new-instance v4, Lcom/tencent/msdk/apkchannel/ZipShort;

    array-length v5, v0

    invoke-direct {v4, v5}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>(I)V

    invoke-virtual {v4}, Lcom/tencent/msdk/apkchannel/ZipShort;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    iget-object v4, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->otherData:[B

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->otherData:[B

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 138
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YYBComment [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
