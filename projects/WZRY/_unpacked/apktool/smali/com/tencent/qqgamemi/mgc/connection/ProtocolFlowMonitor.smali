.class public Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;
.super Ljava/lang/Object;
.source "ProtocolFlowMonitor.java"

# interfaces
.implements Lcom/tencent/qt/alg/network/NetworkFlowController;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIdentity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "ProtocolFlowMonitor"

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->TAG:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->mIdentity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConnectionFail(ILjava/lang/String;IIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "err"    # I
    .param p5, "isRetry"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onConnectionSuccess(ILjava/lang/String;IIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "elapsed"    # I
    .param p5, "isRetry"    # Z

    .prologue
    .line 37
    return-void
.end method

.method public onHostResloveFailure(ILjava/lang/String;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "error"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHostResloveFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onHostResolveSuccess(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "elapsed"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onPacketReceived(IIIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "len"    # I
    .param p6, "elapsed"    # I

    .prologue
    .line 21
    return-void
.end method

.method public onPacketSended(IIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "len"    # I

    .prologue
    .line 26
    return-void
.end method

.method public onRequestFail(ILjava/lang/String;IIIIIZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "command"    # I
    .param p5, "subcmd"    # I
    .param p6, "seq"    # I
    .param p7, "err"    # I
    .param p8, "isLogined"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;->mIdentity:Ljava/lang/String;

    .line 16
    return-void
.end method
