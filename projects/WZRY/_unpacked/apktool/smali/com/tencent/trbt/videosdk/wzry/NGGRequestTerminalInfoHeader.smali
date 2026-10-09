.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequestTerminalInfoHeader.java"


# static fields
.field static cache_androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

.field static cache_iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

.field static cache_terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;


# instance fields
.field public androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

.field public iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

.field public terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 51
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    .line 55
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 14
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    .line 16
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;)V
    .locals 1
    .param p1, "androidTerminal"    # Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;
    .param p2, "terminalExtra"    # Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;
    .param p3, "iosTerminal"    # Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 14
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    .line 16
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .line 24
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 25
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    .line 26
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .line 27
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x0

    .line 60
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 61
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    .line 62
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->cache_iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    .line 63
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->terminalExtra:Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->iosTerminal:Lcom/tencent/trbt/videosdk/wzry/IOSTerminal;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 43
    :cond_2
    return-void
.end method
