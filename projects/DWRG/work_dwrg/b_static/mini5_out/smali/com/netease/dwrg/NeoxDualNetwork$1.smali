.class Lcom/netease/dwrg/NeoxDualNetwork$1;
.super Ljava/lang/Object;
.source "NeoxDualNetwork.java"

# interfaces
.implements Lcom/netease/qa/dualnetwork/NetworkUtil$NetworkStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/NeoxDualNetwork;->initDualNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/NeoxDualNetwork;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/NeoxDualNetwork;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/dwrg/NeoxDualNetwork$1;->this$0:Lcom/netease/dwrg/NeoxDualNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(II)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork$1;->this$0:Lcom/netease/dwrg/NeoxDualNetwork;

    invoke-static {v0}, Lcom/netease/dwrg/NeoxDualNetwork;->access$000(Lcom/netease/dwrg/NeoxDualNetwork;)Lcom/netease/qa/dualnetwork/NetworkUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnDualNetworkStateChanged(II)V

    :cond_0
    return-void
.end method
