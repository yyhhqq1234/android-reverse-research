.class Lcom/netease/epay/sdk/pay/ui/card/h$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "OnlyAddCard3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/h;
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
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/h;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/h$2;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/netease/epay/sdk/NetCallback;->onResponseArrived()V

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$2;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h$2;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/card/h;->c(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/base/model/SignCardData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/h;->b(Lcom/netease/epay/sdk/pay/ui/card/h;Lcom/netease/epay/sdk/base/model/SignCardData;)V

    .line 103
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$2;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/h;->b(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/pay/ui/card/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a()V

    .line 104
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    .line 97
    return-void
.end method
