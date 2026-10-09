.class public final Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;
.super Lcom/qq/taf/jce/JceStruct;
.source "TerminalExtra.java"


# instance fields
.field public abiList:Ljava/lang/String;

.field public apiLevel:S

.field public cpuCoresNum:I

.field public cpuMaxFreq:I

.field public cpuMinFreq:I

.field public cpuName:Ljava/lang/String;

.field public fingerprint:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public ramTotalSize:J

.field public romName:Ljava/lang/String;

.field public romVersion:Ljava/lang/String;

.field public storageSpeed:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    .line 13
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    .line 15
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    .line 17
    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    .line 29
    iput-short v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    .line 31
    iput-short v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSLjava/lang/String;)V
    .locals 5
    .param p1, "cpuName"    # Ljava/lang/String;
    .param p2, "cpuCoresNum"    # I
    .param p3, "cpuMaxFreq"    # I
    .param p4, "cpuMinFreq"    # I
    .param p5, "ramTotalSize"    # J
    .param p7, "romName"    # Ljava/lang/String;
    .param p8, "romVersion"    # Ljava/lang/String;
    .param p9, "fingerprint"    # Ljava/lang/String;
    .param p10, "model"    # Ljava/lang/String;
    .param p11, "apiLevel"    # S
    .param p12, "storageSpeed"    # S
    .param p13, "abiList"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    .line 13
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    .line 15
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    .line 17
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    .line 19
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    .line 29
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    .line 31
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    .line 43
    iput p3, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    .line 44
    iput p4, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    .line 45
    iput-wide p5, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    .line 46
    iput-object p7, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    .line 49
    iput-object p10, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    .line 50
    move/from16 v0, p11

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    .line 51
    move/from16 v0, p12

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    .line 52
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    .line 94
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    .line 95
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    .line 96
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    .line 97
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    .line 99
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    .line 100
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    .line 101
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    .line 102
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    .line 103
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 61
    :cond_0
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuCoresNum:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 62
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMaxFreq:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 63
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->cpuMinFreq:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 64
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->ramTotalSize:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 65
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->romVersion:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->fingerprint:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->model:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_4
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->apiLevel:S

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 82
    iget-short v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->storageSpeed:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 83
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/TerminalExtra;->abiList:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 87
    :cond_5
    return-void
.end method
