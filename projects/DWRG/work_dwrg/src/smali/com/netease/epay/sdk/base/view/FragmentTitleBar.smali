.class public Lcom/netease/epay/sdk/base/view/FragmentTitleBar;
.super Landroid/widget/RelativeLayout;
.source "FragmentTitleBar.java"


# instance fields
.field private tvSubtitle:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private vBack:Landroid/view/View;

.field private vClose:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->init(Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_title_bar:I

    invoke-static {v0, v2, p0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_FragmentTitle:[I

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    sget v2, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_FragmentTitle_epaysdk_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    sget v3, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_FragmentTitle_epaysdk_isShowBack:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 29
    sget v4, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_FragmentTitle_epaysdk_isShowClose:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 30
    sget v5, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_FragmentTitle_epaysdk_isShowSubtitle:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_frag_title_x:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->tvTitle:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 34
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_second_title:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->tvSubtitle:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, v5}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setSubtitleShow(Z)V

    .line 36
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->tvSubtitle:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    sget v0, Lcom/netease/epay/sdk/base/R$id;->iv_frag_close_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vClose:Landroid/view/View;

    .line 38
    invoke-virtual {p0, v4}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseShow(Z)V

    .line 39
    sget v0, Lcom/netease/epay/sdk/base/R$id;->iv_frag_back_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vBack:Landroid/view/View;

    .line 40
    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackShow(Z)V

    .line 41
    return-void

    .line 36
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public setBackListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vBack:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public setBackShow(Z)V
    .locals 2
    .param p1, "isShowBack"    # Z

    .prologue
    .line 47
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vBack:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vClose:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public setCloseShow(Z)V
    .locals 2
    .param p1, "isShowClose"    # Z

    .prologue
    .line 44
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->vClose:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitleShow(Z)V
    .locals 2
    .param p1, "isSubtitleShow"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->tvSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
