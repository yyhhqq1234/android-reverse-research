.class public Lcom/tencent/midas/control/APCallBackResultReceiver;
.super Landroid/os/ResultReceiver;
.source "APCallBackResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;
    }
.end annotation


# instance fields
.field private mReceiver:Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const-string v0, "APCallBackResultReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveResult resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/control/APCallBackResultReceiver;->mReceiver:Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/tencent/midas/control/APCallBackResultReceiver;->mReceiver:Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/midas/control/APCallBackResultReceiver;->mReceiver:Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;

    invoke-interface {v0, p1, p2}, Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/midas/control/APCallBackResultReceiver;->mReceiver:Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;

    .line 24
    return-void
.end method
