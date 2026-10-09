.class public final Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGSingleCmdRequest.java"


# static fields
.field static cache_body:[B


# instance fields
.field public body:[B

.field public cmdId:I

.field public cmdRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cache_body:[B

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "__var_6":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cache_body:[B

    check-cast v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    .line 13
    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    .line 19
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "cmdRequestId"    # I
    .param p3, "body"    # [B

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    .line 13
    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    .line 23
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    .line 24
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    .line 25
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    .line 26
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    .line 44
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    .line 45
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    .line 46
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cache_body:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    .line 47
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 30
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 33
    return-void
.end method
