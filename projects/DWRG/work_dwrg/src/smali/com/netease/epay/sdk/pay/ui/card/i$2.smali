.class Lcom/netease/epay/sdk/pay/ui/card/i$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayAddCardSecondPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/i;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/i;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/pay/ui/card/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/ui/card/i;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v6, v6, Lcom/netease/epay/sdk/pay/ui/card/i;->e:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    move/from16 v11, p4

    invoke-static/range {v0 .. v11}, Lcom/netease/epay/sdk/pay/ui/card/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/pay/ui/card/c;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    .line 169
    :cond_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->quickPayId:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->attach:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->chargeId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/b;->a(Z)V

    .line 133
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 142
    const-string v1, "060009"

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0, v3, v3, v3, v0}, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    :goto_0
    return v0

    .line 146
    :cond_0
    const-string v1, "017110"

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "017109"

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "017111"

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/pay/ui/card/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/pay/ui/card/i;Z)Z

    .line 152
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    const-string v2, "send_sign_authcode.htm"

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-static {v3}, Lcom/netease/epay/sdk/pay/ui/card/i;->b(Lcom/netease/epay/sdk/pay/ui/card/i;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/NetCallback;->parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/i$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V

    return-void
.end method
