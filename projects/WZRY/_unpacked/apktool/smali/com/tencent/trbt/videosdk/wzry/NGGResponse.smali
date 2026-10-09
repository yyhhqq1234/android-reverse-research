.class public final Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGResponse.java"


# static fields
.field static cache_body:[B

.field static cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;


# instance fields
.field public body:[B

.field public header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    invoke-direct {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->cache_body:[B

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "__var_18":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->cache_body:[B

    check-cast v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;
    .param p2, "body"    # [B

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    .line 21
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    .line 22
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    .line 48
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->cache_body:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 28
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 32
    :cond_0
    return-void
.end method
