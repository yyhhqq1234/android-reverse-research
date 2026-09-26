.class public abstract Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "FragmentLayoutActivity.java"


# static fields
.field public static final FRAGMENT_LAYOUT_ID:I


# instance fields
.field private fragments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/netease/epay/sdk/base/R$id;->fragment_content:I

    sput v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->FRAGMENT_LAYOUT_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 33
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 35
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->backKeyAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 43
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 44
    sget v2, Lcom/netease/epay/sdk/base/R$anim;->epaysdk_fade_in:I

    sget v3, Lcom/netease/epay/sdk/base/R$anim;->epaysdk_fade_out:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->interceptExit()V

    goto :goto_0
.end method

.method public exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 0
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 80
    return-void
.end method

.method protected getExitDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "\u662f\u5426\u9000\u51fa"

    return-object v0
.end method

.method public abstract getFirstFragment()Landroid/support/v4/app/Fragment;
.end method

.method public interceptExit()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity$1;-><init>(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "exitConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_actv_full_fragment:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->setContentView(I)V

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getFirstFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    .line 29
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 126
    :cond_0
    return-void
.end method

.method public setContentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->fragments:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 64
    sget v1, Lcom/netease/epay/sdk/base/R$anim;->epaysdk_fade_in:I

    sget v2, Lcom/netease/epay/sdk/base/R$anim;->epaysdk_fade_out:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    sget v1, Lcom/netease/epay/sdk/base/R$id;->fragment_content:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$id;->fragment_content:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
