.class Lcom/netease/epay/sdk/pay/a$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "HomePageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/a;->a(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/pay/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayAmount;)V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p2}, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->initAmountData()V

    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    const-class v1, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto :goto_0
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$2;->b:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p2, Lcom/netease/epay/sdk/pay/model/GetPayAmount;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/a$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayAmount;)V

    return-void
.end method
