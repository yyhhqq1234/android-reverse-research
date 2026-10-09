.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AddCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    .line 2
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getBankScanJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;)V

    const-string v1, "bankcardScan"

    .line 3
    invoke-static {v1, p1, p2, v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    return-void
.end method
