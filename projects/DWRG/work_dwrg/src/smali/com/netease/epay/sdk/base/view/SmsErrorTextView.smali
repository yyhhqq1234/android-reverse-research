.class public Lcom/netease/epay/sdk/base/view/SmsErrorTextView;
.super Landroid/widget/TextView;
.source "SmsErrorTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isBankSend:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->isBankSend:Z

    .line 24
    invoke-virtual {p0, p0}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_0

    .line 34
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->isBankSend:Z

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getInstance(Z)Lcom/netease/epay/sdk/base/ui/NoSmsFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;Z)V

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 36
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->isBankSend:Z

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getInstance(Z)Lcom/netease/epay/sdk/base/ui/NoSmsFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;Z)V

    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "SmsErrorText.getContext is not SDKActivity."

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIsBankSend(Z)V
    .locals 0
    .param p1, "isBankSend"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->isBankSend:Z

    .line 29
    return-void
.end method
