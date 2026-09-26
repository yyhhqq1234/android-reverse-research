.class public Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "TwoButtonMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
    }
.end annotation


# static fields
.field public static callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;
    .locals 1
    .param p0, "callback"    # Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    .prologue
    .line 34
    sput-object p0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    .line 35
    new-instance v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->dismissAllowingStateLoss()V

    .line 57
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_left:I

    if-ne v0, v1, :cond_1

    .line 61
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;->leftClick()V

    .line 65
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;->rightClick()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_twobtnmsg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 41
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_twobtnmsg_msg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    sget v1, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_left:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    sget v2, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_right:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget-object v4, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    if-eqz v4, :cond_0

    .line 47
    sget-object v4, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    invoke-interface {v4}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;->getLeft()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;->getRight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-object v3
.end method
