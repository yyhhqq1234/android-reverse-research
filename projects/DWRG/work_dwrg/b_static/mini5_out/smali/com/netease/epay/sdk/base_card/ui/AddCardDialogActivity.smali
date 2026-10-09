.class public Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;
.super Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;
.source "AddCardDialogActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IAddCardPage;


# static fields
.field private static dialogFragment:Lcom/netease/epay/sdk/base/ui/SdkFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/netease/epay/sdk/base/ui/SdkFragment;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->currentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 3
    :cond_0
    sput-object p1, Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;->dialogFragment:Lcom/netease/epay/sdk/base/ui/SdkFragment;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->fragment_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/netease/epay/sdk/base/ui/SdkFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onDialogBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;->finish()V

    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;->dialogFragment:Lcom/netease/epay/sdk/base/ui/SdkFragment;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroidx/fragment/app/FragmentActivity;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FragmentDialogActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;->dialogFragment:Lcom/netease/epay/sdk/base/ui/SdkFragment;

    return-void
.end method
