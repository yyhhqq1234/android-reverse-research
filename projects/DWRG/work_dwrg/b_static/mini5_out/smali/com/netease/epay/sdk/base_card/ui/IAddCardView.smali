.class public interface abstract Lcom/netease/epay/sdk/base_card/ui/IAddCardView;
.super Ljava/lang/Object;
.source "IAddCardView.java"


# virtual methods
.method public abstract addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V
.end method

.method public abstract getActivity()Landroidx/fragment/app/FragmentActivity;
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getInputLayout()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
.end method

.method public abstract getMobilePhone()Ljava/lang/String;
.end method

.method public abstract initBankInputItemView(Z)V
.end method

.method public abstract isInputCardTypeVisible()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setButtonEnable(Z)V
.end method

.method public abstract setReSignCard(Ljava/lang/String;Z)V
.end method

.method public abstract showCardInfo(Ljava/lang/String;)V
.end method

.method public abstract showDiscount(Lcom/netease/epay/sdk/base_card/model/GetDeductionByBankMsg;)V
.end method

.method public abstract showInputAllInfo()V
.end method

.method public abstract showPrefillMobilePhone(Ljava/lang/String;)V
.end method

.method public abstract trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAgreementAndButton(Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V
.end method
