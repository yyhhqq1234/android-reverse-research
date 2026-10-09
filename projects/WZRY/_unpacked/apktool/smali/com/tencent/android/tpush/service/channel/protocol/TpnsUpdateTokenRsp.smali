.class public final Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public result:B

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->token:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->token:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    .line 21
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->token:Ljava/lang/String;

    .line 22
    iput-byte p2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->token:Ljava/lang/String;

    .line 35
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    .line 36
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->token:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;->result:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 29
    return-void
.end method
