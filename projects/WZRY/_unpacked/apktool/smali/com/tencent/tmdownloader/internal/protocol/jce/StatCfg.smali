.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public internal:I

.field public lineNum:S

.field public netType:B

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    .line 13
    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    .line 15
    iput-short v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    .line 17
    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    .line 21
    return-void
.end method

.method public constructor <init>(BBSI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    .line 13
    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    .line 15
    iput-short v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    .line 17
    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    .line 25
    iput-byte p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    .line 26
    iput-byte p2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    .line 27
    iput-short p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    .line 28
    iput p4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    .line 29
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    .line 43
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    .line 44
    iget-short v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    .line 45
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    .line 46
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->type:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 34
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->netType:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 35
    iget-short v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->lineNum:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 36
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/StatCfg;->internal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 37
    return-void
.end method
