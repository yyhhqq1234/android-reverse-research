.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field static a:[B


# instance fields
.field public cfg:[B

.field public revision:J

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->cfg:[B

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    .line 19
    return-void
.end method

.method public constructor <init>(B[BJ)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->cfg:[B

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    .line 23
    iput-byte p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    .line 24
    iput-object p2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->cfg:[B

    .line 25
    iput-wide p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    .line 26
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 39
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    .line 40
    sget-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->a:[B

    if-nez v0, :cond_0

    .line 42
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->a:[B

    .line 44
    sget-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->a:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 46
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->a:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->cfg:[B

    .line 47
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->type:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 31
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->cfg:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 32
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/SettingsCfg;->revision:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 33
    return-void
.end method
