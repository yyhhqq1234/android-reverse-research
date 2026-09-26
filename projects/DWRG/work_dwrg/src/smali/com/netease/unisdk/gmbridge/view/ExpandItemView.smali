.class public Lcom/netease/unisdk/gmbridge/view/ExpandItemView;
.super Landroid/widget/LinearLayout;
.source "ExpandItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

.field private mIconIv:Landroid/widget/ImageView;

.field private mNameTv:Landroid/widget/TextView;

.field private mPressTextColor:I

.field private mRedIv:Landroid/widget/ImageView;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btnInfo"    # Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "uni_gm_text_color"

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "uni_gm_text_focus_color"

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mPressTextColor:I

    .line 42
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->setOrientation(I)V

    .line 44
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->initViews()V

    .line 45
    invoke-virtual {p0, p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    return-void
.end method

.method private click()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "close"

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->show()V

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->removeRedMenuIds(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->addView(Landroid/view/View;)V

    .line 52
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    .line 53
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v4, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v1, "iconLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    .line 60
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "uni_gm_f_red"

    invoke-static {v4, v5}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v2, "redParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v3, v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->isRedMenu(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method


# virtual methods
.method public isShowRed()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0xb

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 80
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mPressTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 86
    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->click()V

    .line 91
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->hideExpandLayout()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showRed()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void
.end method
