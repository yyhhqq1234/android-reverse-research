.class Lcom/netease/dwrg/Client$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->setNetworkChangeCallback()V
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

    .line 837
    iput-object p1, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private OnNetworkChanged()V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getNetworkType()I

    move-result v0

    .line 841
    iget-object v1, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v1}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v1}, Lcom/netease/dwrg/Client;->access$700(Lcom/netease/dwrg/Client;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/netease/neox/NativeInterface;->NativeOnNetworkChanged(II)V

    .line 844
    iget-object v1, p0, Lcom/netease/dwrg/Client$4;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v1, v0}, Lcom/netease/dwrg/Client;->access$702(Lcom/netease/dwrg/Client;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 850
    invoke-direct {p0}, Lcom/netease/dwrg/Client$4;->OnNetworkChanged()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 855
    invoke-direct {p0}, Lcom/netease/dwrg/Client$4;->OnNetworkChanged()V

    return-void
.end method
