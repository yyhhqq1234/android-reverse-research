.class Lcom/netease/epay/sdk/pay/ui/m$2;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "PayPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/m;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/m;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/m$2;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m$2;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/m;->a(Lcom/netease/epay/sdk/pay/ui/m;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m$2;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/m;->a(Lcom/netease/epay/sdk/pay/ui/m;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m$2;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/m;->b(Lcom/netease/epay/sdk/pay/ui/m;)Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m$2;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/m;->b(Lcom/netease/epay/sdk/pay/ui/m;)Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    move-result-object v2

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 99
    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    :cond_1
    return-void

    .line 96
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 100
    :cond_3
    sget v0, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_cleanup:I

    goto :goto_1
.end method
