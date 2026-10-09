.class public final Lcom/tencent/trbt/videosdk/wzry/SCTicket;
.super Lcom/qq/taf/jce/JceStruct;
.source "SCTicket.java"


# static fields
.field static cache_type:I

.field static cache_value:[B


# instance fields
.field public type:I

.field public value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    sput v2, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->cache_type:I

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->cache_value:[B

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "__var_5":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->cache_value:[B

    check-cast v1, [B

    aput-byte v0, v1, v2

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->value:[B

    .line 17
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->value:[B

    .line 21
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    .line 22
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->value:[B

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    .line 44
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    .line 45
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->cache_value:[B

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->value:[B

    .line 46
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->type:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;->value:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 29
    return-void
.end method
