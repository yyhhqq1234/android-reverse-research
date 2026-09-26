.class public Lcom/netease/epay/sdk/base/ui/SdkFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SdkFragment.java"


# instance fields
.field private loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-nez v0, :cond_2

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method public dismissLoadingFragment()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkFragment;->loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkFragment;->loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/LoadingFragment;->dismissAllowingStateLoss()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkFragment;->loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    .line 89
    :cond_0
    return-void
.end method

.method hideSoftInput(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move v1, v2

    move v3, v2

    .line 73
    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x5

    if-gt v3, v1, :cond_0

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    instance-of v0, p0, Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/netease/epay/sdk/base/R$style;->epaysdk_full_screen_dialog:I

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->setStyle(II)V

    .line 55
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->setCancelable(Z)V

    .line 56
    return-void

    .line 53
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base/R$style;->epaysdk_dialog:I

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->setStyle(II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->hideSoftInput(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 64
    return-void
.end method

.method public showLoadingFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/netease/epay/sdk/base/ui/LoadingFragment;->getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkFragment;->loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/SdkFragment;->loadingFragment:Lcom/netease/epay/sdk/base/ui/LoadingFragment;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/LoadingFragment;->show(Landroid/support/v4/app/FragmentActivity;)V

    .line 82
    return-void
.end method
