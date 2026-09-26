.class public Lcom/netease/epay/sdk/base/view/StrokeColorButton;
.super Landroid/widget/Button;
.source "StrokeColorButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setTextColor(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 34
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 35
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 36
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 37
    return-object v0
.end method
