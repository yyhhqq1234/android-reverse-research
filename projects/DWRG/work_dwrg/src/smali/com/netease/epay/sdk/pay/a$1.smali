.class Lcom/netease/epay/sdk/pay/a$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "HomePageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/HomeData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/HomeData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/netease/epay/sdk/pay/model/HomeData;->initHomeData(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;Lcom/netease/epay/sdk/pay/model/HomeData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "new_account_add_new_card"

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/HomeData;->defaultPayMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/16 v2, 0x322

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    .line 78
    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0, v3}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 86
    if-eqz v0, :cond_a

    .line 87
    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/PayController;->d:Z

    .line 89
    :goto_2
    if-eqz v0, :cond_4

    .line 91
    sput-object v3, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    .line 92
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->cardsLength()I

    move-result v0

    if-lez v0, :cond_6

    .line 93
    invoke-static {v1}, Lcom/netease/epay/sdk/base/model/Card;->isSelectedCardUsable(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 94
    const/4 v0, -0x2

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto :goto_1

    .line 96
    :cond_5
    sput v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankQuickPayId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0, v3}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 110
    :goto_3
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->cardsLength()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 111
    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCard(I)Lcom/netease/epay/sdk/base/model/Card;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v3}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/Card;->isUsable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 114
    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 115
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/a;->b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 110
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public onResponseArrived()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/netease/epay/sdk/NetCallback;->onResponseArrived()V

    .line 128
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a$1;->a:Lcom/netease/epay/sdk/pay/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a;->c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netease.epaysdk.pay.start"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 129
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p2, Lcom/netease/epay/sdk/pay/model/HomeData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/a$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/HomeData;)V

    return-void
.end method
