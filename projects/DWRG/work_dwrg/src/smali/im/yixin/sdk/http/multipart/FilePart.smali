.class public Lim/yixin/sdk/http/multipart/FilePart;
.super Lim/yixin/sdk/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private source:Lim/yixin/sdk/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lim/yixin/sdk/http/multipart/PartSource;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lim/yixin/sdk/http/multipart/PartSource;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0, v0}, Lim/yixin/sdk/http/multipart/FilePart;-><init>(Ljava/lang/String;Lim/yixin/sdk/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lim/yixin/sdk/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lim/yixin/sdk/http/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .end local p3    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p4, :cond_1

    const-string p4, "UTF-8"

    .line 67
    .end local p4    # "charset":Ljava/lang/String;
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lim/yixin/sdk/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez p2, :cond_2

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iput-object p2, p0, Lim/yixin/sdk/http/multipart/FilePart;->source:Lim/yixin/sdk/http/multipart/PartSource;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ofile"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lim/yixin/sdk/http/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lim/yixin/sdk/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lim/yixin/sdk/http/multipart/FilePart;-><init>(Ljava/lang/String;Lim/yixin/sdk/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected getSource()Lim/yixin/sdk/http/multipart/PartSource;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/FilePart;->source:Lim/yixin/sdk/http/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/FilePart;->source:Lim/yixin/sdk/http/multipart/PartSource;

    invoke-interface {v0}, Lim/yixin/sdk/http/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/FilePart;->lengthOfData()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 204
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 205
    .local v2, "tmp":[B
    iget-object v3, p0, Lim/yixin/sdk/http/multipart/FilePart;->source:Lim/yixin/sdk/http/multipart/PartSource;

    invoke-interface {v3}, Lim/yixin/sdk/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 208
    .local v0, "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "len":I
    if-gez v1, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 211
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    .line 213
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 214
    throw v3
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lim/yixin/sdk/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 174
    iget-object v1, p0, Lim/yixin/sdk/http/multipart/FilePart;->source:Lim/yixin/sdk/http/multipart/PartSource;

    invoke-interface {v1}, Lim/yixin/sdk/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    sget-object v1, Lim/yixin/sdk/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 177
    sget-object v1, Lim/yixin/sdk/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 178
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 179
    sget-object v1, Lim/yixin/sdk/http/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 181
    :cond_0
    return-void
.end method
