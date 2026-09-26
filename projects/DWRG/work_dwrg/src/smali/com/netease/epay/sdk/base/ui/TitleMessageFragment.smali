.class public Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "TitleMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;
    }
.end annotation


# static fields
.field private static mCallback:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;


# instance fields
.field private btnConfirm:Landroid/widget/Button;

.field private isLinkfyAll:Z

.field private isNeedMovementMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method private exit()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->dismissAllowingStateLoss()V

    .line 104
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->mCallback:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->mCallback:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;->doneClick()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->mCallback:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;

    .line 108
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Landroid/text/SpannableString;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Landroid/text/SpannableString;

    .prologue
    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/CharSequence;ZZLcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/CharSequence;ZZLcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "isNeedMovementMethod"    # Z
    .param p3, "linkfyAll"    # Z
    .param p4, "callback"    # Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;

    .prologue
    .line 46
    new-instance v0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "linkify"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 51
    const-string v2, "isNeedMovement"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    sput-object p4, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->mCallback:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;

    .line 54
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "linkifyAll"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/CharSequence;ZZLcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->btnConfirm:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->exit()V

    .line 92
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_title_msg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 63
    const-string v1, "isNeedMovement"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->isNeedMovementMethod:Z

    .line 64
    const-string v1, "linkify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->isLinkfyAll:Z

    .line 66
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_titlemsg_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    sget v1, Lcom/netease/epay/sdk/base/R$id;->tv_titlemsg_msg:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 69
    sget v2, Lcom/netease/epay/sdk/base/R$id;->btn_titlemsg_confirm_c:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->btnConfirm:Landroid/widget/Button;

    .line 70
    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->isLinkfyAll:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 79
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->isNeedMovementMethod:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    :cond_1
    return-object v3

    .line 74
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onPause()V

    .line 97
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->isNeedMovementMethod:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->exit()V

    .line 100
    :cond_0
    return-void
.end method
