.class Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ValidateCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;->a:Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p2, Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;->cardInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;->a:Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;

    iget-object v1, p2, Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;->cardInfos:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/netease/epay/sdk/card/ui/d;->a(Ljava/util/ArrayList;)Lcom/netease/epay/sdk/card/ui/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;->a:Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->a(Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;)V

    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;->a:Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->finish()V

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/QuickpayCardsArray;)V

    return-void
.end method
