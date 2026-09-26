.class Lcom/netease/epay/sdk/card/ui/e$3;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ForgetPwdValidateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/e;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/e;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v1}, Lcom/netease/epay/sdk/card/ui/e;->e(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    .line 186
    invoke-static {v3}, Lcom/netease/epay/sdk/card/ui/e;->f(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v4}, Lcom/netease/epay/sdk/card/ui/e;->c(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    .line 187
    invoke-static {v5}, Lcom/netease/epay/sdk/card/ui/e;->c(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v6}, Lcom/netease/epay/sdk/card/ui/e;->g(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    .line 188
    invoke-static {v7}, Lcom/netease/epay/sdk/card/ui/e;->c(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v8}, Lcom/netease/epay/sdk/card/ui/e;->h(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->attach:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v10, v2

    .line 185
    invoke-static/range {v0 .. v11}, Lcom/netease/epay/sdk/card/ui/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/card/ui/c;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/e;->addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    .line 190
    return-void
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$3;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/e;->d(Lcom/netease/epay/sdk/card/ui/e;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/ui/e$3;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V

    return-void
.end method
