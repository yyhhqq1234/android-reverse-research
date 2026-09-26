.class Lcom/netease/epay/sdk/pay/ui/i$6;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/i;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/GetPayAmount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/i;I)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    iput p2, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->a:I

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayAmount;)V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p2}, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->initAmountData()V

    .line 230
    iget v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->a:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->a:I

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 237
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$6;->b:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p2, Lcom/netease/epay/sdk/pay/model/GetPayAmount;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/i$6;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayAmount;)V

    return-void
.end method
