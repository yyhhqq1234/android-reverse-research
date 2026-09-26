.class public Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "TitleMsg2BtnFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;
    }
.end annotation


# static fields
.field private static callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;
    .locals 1
    .param p0, "callback"    # Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    .prologue
    .line 35
    sput-object p0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    .line 36
    new-instance v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->dismissAllowingStateLoss()V

    .line 66
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_left:I

    if-ne v0, v1, :cond_1

    .line 70
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->leftClick()V

    .line 74
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->rightClick()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_titlemsg2btn:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_titlemsg_msg:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    sget v1, Lcom/netease/epay/sdk/base/R$id;->tv_titlemsg_title:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    sget-object v3, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    if-nez v3, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->dismissAllowingStateLoss()V

    move-object v0, v2

    .line 60
    :goto_0
    return-object v0

    .line 48
    :cond_0
    sget-object v3, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v3}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_1
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_left:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    sget v1, Lcom/netease/epay/sdk/base/R$id;->btn_twobtnmsg_dialog_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget-object v3, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v3}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->getLeft()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->getRight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    .line 60
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment;->callback:Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMsg2BtnFragment$ITitleTwoBtnFragCallback;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
