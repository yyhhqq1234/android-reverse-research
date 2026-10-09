.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$3;
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netease.epaysdk.addcard.change.recommend.card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "epay_bundle_bank_json"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-class p2, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;

    invoke-static {p1, p2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p2, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->updateRecommendBanks(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
