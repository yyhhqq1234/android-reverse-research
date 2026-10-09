.class public final Lcom/tencent/trbt/videosdk/wzry/Net;
.super Lcom/qq/taf/jce/JceStruct;
.source "Net.java"


# instance fields
.field public extNetworkOperator:Ljava/lang/String;

.field public extNetworkType:I

.field public ipType:B

.field public isWap:B

.field public nacMode:I

.field public netType:B

.field public wifiBssid:Ljava/lang/String;

.field public wifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-byte v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    .line 13
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    .line 15
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    .line 21
    iput-byte v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(BIBLjava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "netType"    # B
    .param p2, "nacMode"    # I
    .param p3, "ipType"    # B
    .param p4, "extNetworkOperator"    # Ljava/lang/String;
    .param p5, "extNetworkType"    # I
    .param p6, "isWap"    # B
    .param p7, "wifiSsid"    # Ljava/lang/String;
    .param p8, "wifiBssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-byte v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    .line 13
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    .line 15
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    .line 21
    iput-byte v1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    .line 33
    iput-byte p1, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    .line 34
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    .line 35
    iput-byte p3, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    .line 36
    iput-object p4, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    .line 38
    iput-byte p6, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    .line 39
    iput-object p7, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    .line 68
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    .line 69
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    .line 70
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    .line 72
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    .line 73
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    .line 74
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->netType:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 46
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->nacMode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->ipType:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 48
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkOperator:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 52
    :cond_0
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->extNetworkType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 53
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->isWap:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 54
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiSsid:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/Net;->wifiBssid:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 62
    :cond_2
    return-void
.end method
