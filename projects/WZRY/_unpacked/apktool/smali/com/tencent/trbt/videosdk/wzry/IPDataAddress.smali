.class public final Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;
.super Lcom/qq/taf/jce/JceStruct;
.source "IPDataAddress.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public port:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->ip:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;S)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # S

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->ip:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    .line 21
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->ip:Ljava/lang/String;

    .line 22
    iput-short p2, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v1, 0x1

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->ip:Ljava/lang/String;

    .line 35
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    .line 36
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->ip:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;->port:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 29
    return-void
.end method
