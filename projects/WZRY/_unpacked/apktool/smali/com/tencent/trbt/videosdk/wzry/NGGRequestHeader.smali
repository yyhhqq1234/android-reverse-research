.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequestHeader.java"


# static fields
.field static cache_keyData:[B


# instance fields
.field public bodyDataFlag:B

.field public checkSum:Ljava/lang/String;

.field public compressVer:I

.field public decompressSize:J

.field public dictVersion:Ljava/lang/String;

.field public encryptVer:I

.field public keyData:[B

.field public requestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->cache_keyData:[B

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "__var_10":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->cache_keyData:[B

    check-cast v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    .line 13
    iput-byte v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    .line 21
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    .line 29
    return-void
.end method

.method public constructor <init>(IBLjava/lang/String;IJILjava/lang/String;[B)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "bodyDataFlag"    # B
    .param p3, "dictVersion"    # Ljava/lang/String;
    .param p4, "compressVer"    # I
    .param p5, "decompressSize"    # J
    .param p7, "encryptVer"    # I
    .param p8, "checkSum"    # Ljava/lang/String;
    .param p9, "keyData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    .line 13
    iput-byte v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    .line 21
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    .line 33
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    .line 34
    iput-byte p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    .line 35
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    .line 37
    iput-wide p5, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    .line 38
    iput p7, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    .line 39
    iput-object p8, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    .line 41
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 73
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    .line 74
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    .line 77
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    .line 78
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    .line 79
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->cache_keyData:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    .line 81
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 47
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->dictVersion:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    :cond_0
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 52
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->decompressSize:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 53
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->encryptVer:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 54
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->checkSum:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->keyData:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 62
    :cond_2
    return-void
.end method
