.class public Lcom/netease/epay/sdk/base/view/LongCommonButton;
.super Landroid/widget/Button;
.source "LongCommonButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->init()V

    .line 31
    return-void
.end method

.method private getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 80
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 81
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 82
    return-object v0
.end method

.method private getStateColor([I)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "target"    # [I

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    new-array v0, v2, [I

    aget v1, p1, v4

    aput v1, v0, v4

    aget v1, p1, v5

    aput v1, v0, v5

    aget v1, p1, v6

    aput v1, v0, v6

    .line 56
    new-array v1, v2, [[I

    .line 57
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 58
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 59
    new-array v2, v4, [I

    aput-object v2, v1, v6

    .line 60
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getStateDrawable(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10
    .param p1, "list"    # Landroid/content/res/ColorStateList;

    .prologue
    const v9, 0x10100a7

    const v8, 0x101009e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 65
    new-array v1, v7, [I

    aput v9, v1, v6

    .line 66
    new-array v2, v7, [I

    aput v8, v2, v6

    .line 67
    new-array v3, v6, [I

    .line 68
    sget-object v4, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    aget v4, v4, v6

    invoke-virtual {p1, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 69
    sget-object v4, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    aget v4, v4, v7

    invoke-virtual {p1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 70
    sget-object v4, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 72
    new-array v4, v7, [I

    aput v9, v4, v6

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 73
    new-array v1, v7, [I

    aput v8, v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    new-array v1, v6, [I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 75
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x15

    .line 34
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setGravity(I)V

    .line 35
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_bg_main_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_COLOR:[I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getStateColor([I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_2

    .line 40
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 48
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->BTN_TEXT_COLOR:[I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getStateColor([I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnTextColor:Landroid/content/res/ColorStateList;

    .line 51
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    return-void

    .line 41
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_3

    .line 42
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setBackgroundColor(I)V

    .line 43
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 45
    :cond_3
    sget-object v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getStateDrawable(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
