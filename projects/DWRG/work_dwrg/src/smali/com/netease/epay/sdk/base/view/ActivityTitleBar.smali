.class public Lcom/netease/epay/sdk/base/view/ActivityTitleBar;
.super Landroid/widget/RelativeLayout;
.source "ActivityTitleBar.java"


# instance fields
.field private backVisibilityStatus:I

.field private closeVisibilityStatus:I

.field private ivBack:Landroid/widget/ImageView;

.field private ivClose:Landroid/widget/ImageView;

.field private tvDone:Landroid/widget/TextView;

.field private tvSubtitle:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->init(Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_titlebar:I

    invoke-static {v0, v1, p0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    sget v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle:[I

    invoke-virtual {v0, p1, v1, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle_epaysdk_main_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    sget v2, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle_epaysdk_isBackShow:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 35
    sget v3, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle_epaysdk_isSubtitleShow:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 36
    sget v4, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle_epaysdk_isDoneShow:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 37
    sget v5, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ActivityTitle_epaysdk_isCloseShow:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_titlebar_title:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvTitle:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvTitle:Landroid/widget/TextView;

    sget v1, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_second_title:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvSubtitle:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvSubtitle:Landroid/widget/TextView;

    sget v1, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setSubtitleShow(Z)V

    .line 48
    sget v0, Lcom/netease/epay/sdk/base/R$id;->ivBack:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_blue_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    sget v1, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 51
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackShow(Z)V

    .line 54
    sget v0, Lcom/netease/epay/sdk/base/R$id;->ivClose:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_ic_close_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    sget v1, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 57
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setCloseShow(Z)V

    .line 60
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_titlebar_done:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvDone:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvDone:Landroid/widget/TextView;

    sget v1, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setDoneShow(Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public getTvDone()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvDone:Landroid/widget/TextView;

    return-object v0
.end method

.method public restoreActionMenuStatus()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->closeVisibilityStatus:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->backVisibilityStatus:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public saveActionMenuStates()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->closeVisibilityStatus:I

    .line 107
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->backVisibilityStatus:I

    .line 108
    return-void
.end method

.method public setBackListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setBackShow(Z)V
    .locals 2
    .param p1, "isShowBack"    # Z

    .prologue
    .line 66
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivBack:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setCloseShow(Z)V
    .locals 2
    .param p1, "isShowClose"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->ivClose:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDoneListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvDone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public setDoneShow(Z)V
    .locals 2
    .param p1, "isDoneShow"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvDone:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    return-void

    .line 90
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitleShow(Z)V
    .locals 2
    .param p1, "isSubtitleShow"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvSubtitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
