.class public final Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGSingleCmdResponse.java"


# static fields
.field static cache_body:[B


# instance fields
.field public body:[B

.field public cmdId:I

.field public cmdRequestId:I

.field public ret:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cache_body:[B

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "__var_13":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cache_body:[B

    check-cast v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    .line 13
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    .line 17
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    .line 21
    return-void
.end method

.method public constructor <init>(II[BI)V
    .locals 2
    .param p1, "cmdId"    # I
    .param p2, "cmdRequestId"    # I
    .param p3, "body"    # [B
    .param p4, "ret"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    .line 13
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    .line 17
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    .line 25
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    .line 26
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    .line 27
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    .line 28
    iput p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    .line 29
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    .line 49
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    .line 50
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cache_body:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    .line 51
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    .line 52
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->cmdRequestId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 35
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 36
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->ret:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 37
    return-void
.end method
