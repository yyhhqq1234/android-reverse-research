.class public Lcom/netease/epay/sdk/base/view/StepIndexShowView;
.super Landroid/view/View;
.source "StepIndexShowView.java"


# static fields
.field private static final COLOR_BBBBBB:I


# instance fields
.field private count:I

.field private index:I

.field private marginSelf_3DP:F

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "#bbbbbb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->COLOR_BBBBBB:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    .line 25
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    .line 25
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    .line 25
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 45
    sget-object v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_StepIndexShowView:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_StepIndexShowView_epaysdk_stepMargin:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    .line 47
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_StepIndexShowView_epaysdk_stepCount:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    .line 48
    sget v1, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_StepIndexShowView_epaysdk_stepIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    .line 49
    iget v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    iget v2, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    if-lt v1, v2, :cond_0

    .line 50
    iget v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->COLOR_BBBBBB:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 62
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->count:I

    if-ge v6, v0, :cond_1

    .line 63
    iget v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->index:I

    if-gt v6, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    :goto_1
    int-to-float v0, v6

    iget v1, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    add-float/2addr v1, v7

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v7

    int-to-float v3, v6

    iget v4, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->marginSelf_3DP:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/netease/epay/sdk/base/view/StepIndexShowView;->COLOR_BBBBBB:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method
