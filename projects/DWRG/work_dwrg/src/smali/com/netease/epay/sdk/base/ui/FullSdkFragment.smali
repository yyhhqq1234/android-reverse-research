.class public Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.super Landroid/support/v4/app/Fragment;
.source "FullSdkFragment.java"


# instance fields
.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-void
.end method

.method private back(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->back(Landroid/view/View;)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V
    .locals 1
    .param p1, "fullSdkFragment"    # Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    .line 82
    :cond_0
    return-void
.end method

.method public backKeyAction()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public findV(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_actv_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 27
    new-instance v1, Lcom/netease/epay/sdk/base/ui/FullSdkFragment$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment$1;-><init>(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 35
    return-void
.end method
