.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequest;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequest.java"


# static fields
.field static cache_body:[B

.field static cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;


# instance fields
.field public body:[B

.field public header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    invoke-direct {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->cache_body:[B

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "__var_12":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->cache_body:[B

    check-cast v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 14
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;
    .param p2, "body"    # [B

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 14
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    .line 22
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 23
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    .line 24
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->cache_header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 49
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->cache_body:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    .line 50
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 29
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 33
    :cond_0
    return-void
.end method
