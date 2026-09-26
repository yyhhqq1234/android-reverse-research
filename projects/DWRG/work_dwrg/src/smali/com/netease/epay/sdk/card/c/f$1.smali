.class Lcom/netease/epay/sdk/card/c/f$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "OnlyAddCardSecondPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/card/c/f;
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
.field final synthetic a:Lcom/netease/epay/sdk/card/c/f;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/f;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .prologue
    const/4 v0, 0x2

    .line 129
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/ui/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v7

    .line 133
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/c/f;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v6, v6, Lcom/netease/epay/sdk/card/c/f;->e:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v8, p1

    move-object v9, p2

    move v11, p3

    invoke-static/range {v0 .. v11}, Lcom/netease/epay/sdk/card/ui/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/card/ui/c;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/b;->addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->quickPayId:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->attach:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/epay/sdk/card/c/f$1;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/b;->a(Z)V

    .line 112
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v2, 0x0

    .line 121
    const-string v0, "060009"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/netease/epay/sdk/card/c/f$1;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/f$1;->a:Lcom/netease/epay/sdk/card/c/f;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/f;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/f$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V

    return-void
.end method
