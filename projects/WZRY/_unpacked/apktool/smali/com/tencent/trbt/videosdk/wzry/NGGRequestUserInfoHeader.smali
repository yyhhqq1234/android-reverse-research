.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequestUserInfoHeader.java"


# static fields
.field static cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

.field static cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# instance fields
.field public account:Ljava/lang/String;

.field public aliasName:Ljava/lang/String;

.field public busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

.field public deviceId:Ljava/lang/String;

.field public qua:Ljava/lang/String;

.field public ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/Ticket;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 60
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/Ticket;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->account:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->aliasName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 22
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/trbt/videosdk/wzry/Ticket;Lcom/tencent/trbt/videosdk/wzry/Ticket;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "aliasName"    # Ljava/lang/String;
    .param p4, "qua"    # Ljava/lang/String;
    .param p5, "ticket"    # Lcom/tencent/trbt/videosdk/wzry/Ticket;
    .param p6, "busiContext"    # Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->account:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->aliasName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 22
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 30
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->account:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->aliasName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 35
    iput-object p6, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 36
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->account:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->aliasName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 70
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 71
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->account:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->aliasName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->busiContext:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 52
    :cond_1
    return-void
.end method
