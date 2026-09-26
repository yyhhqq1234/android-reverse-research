.class public Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "ImageMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "imgResId"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "sdk_img_msg_frag_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "sdk_img_msg_frag_desc"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "sdk_img_msg_frag_img_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->iv_frag_close_c:I

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;->dismissAllowingStateLoss()V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v1, "sdk_img_msg_frag_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v1, "sdk_img_msg_frag_desc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    const-string v1, "sdk_img_msg_frag_img_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 37
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_img_msg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 38
    sget v0, Lcom/netease/epay/sdk/base/R$id;->ftb:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 39
    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v1, Lcom/netease/epay/sdk/base/R$id;->iv_picmsg_pic:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 41
    sget v2, Lcom/netease/epay/sdk/base/R$id;->tv_picmsg_desc:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    return-object v6
.end method
