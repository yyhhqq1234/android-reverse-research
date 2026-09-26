.class Lcom/netease/epay/sdk/pay/ui/card/g$3;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardPay3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/g;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$3;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/netease/epay/sdk/NetCallback;->onResponseArrived()V

    .line 201
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$3;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/g;->c(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/pay/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$3;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 202
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$3;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/g;->b(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/pay/ui/card/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a()V

    .line 203
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    .line 196
    return-void
.end method
