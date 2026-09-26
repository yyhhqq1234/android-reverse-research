.class Lcom/netease/dwrg/Client$3;
.super Landroid/telephony/PhoneStateListener;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/netease/dwrg/Client$3;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 474
    if-ne v3, p1, :cond_0

    .line 476
    const-string v0, "NeoX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RINGING, number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/netease/dwrg/Client$3;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0, v3}, Lcom/netease/dwrg/Client;->moveTaskToBack(Z)Z

    .line 479
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 462
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 464
    const/4 p2, -0x1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$3;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$600(Lcom/netease/dwrg/Client;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/netease/dwrg/Client$3;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$600(Lcom/netease/dwrg/Client;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/netease/neox/NativeInterface;->NativeOnNetworkChanged(II)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Client$3;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0, p2}, Lcom/netease/dwrg/Client;->access$602(Lcom/netease/dwrg/Client;I)I

    .line 471
    return-void
.end method
