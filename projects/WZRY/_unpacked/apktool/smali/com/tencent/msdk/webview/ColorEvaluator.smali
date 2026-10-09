.class public Lcom/tencent/msdk/webview/ColorEvaluator;
.super Ljava/lang/Object;
.source "ColorEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentAlpha:I

.field private mCurrentBlue:I

.field private mCurrentGreen:I

.field private mCurrentRed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentAlpha:I

    .line 10
    iput v0, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentRed:I

    .line 11
    iput v0, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentGreen:I

    .line 12
    iput v0, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentBlue:I

    return-void
.end method

.method private getCurrentColor(IIF)I
    .locals 3
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I
    .param p3, "fraction"    # F

    .prologue
    .line 41
    if-ge p1, p2, :cond_0

    .line 42
    int-to-float v1, p1

    sub-int v2, p2, p1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 46
    .local v0, "currentColor":I
    :goto_0
    return v0

    .line 44
    .end local v0    # "currentColor":I
    :cond_0
    int-to-float v1, p1

    sub-int v2, p1, p2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .restart local v0    # "currentColor":I
    goto :goto_0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .param p1, "fraction"    # F
    .param p2, "startColor"    # Ljava/lang/Integer;
    .param p3, "endColor"    # Ljava/lang/Integer;

    .prologue
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    ushr-int/lit8 v5, v9, 0x18

    .line 17
    .local v5, "startAlpha":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x10

    .line 18
    .local v8, "startRed":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v7, v9, 0x8

    .line 19
    .local v7, "startGreen":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v6, v9, 0xff

    .line 20
    .local v6, "startBlue":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    ushr-int/lit8 v1, v9, 0x18

    .line 21
    .local v1, "endAlpha":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    shr-int/lit8 v4, v9, 0x10

    .line 22
    .local v4, "endRed":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v3, v9, 0x8

    .line 23
    .local v3, "endGreen":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v2, v9, 0xff

    .line 26
    .local v2, "endBlue":I
    invoke-direct {p0, v5, v1, p1}, Lcom/tencent/msdk/webview/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v9

    iput v9, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentAlpha:I

    .line 27
    invoke-direct {p0, v8, v4, p1}, Lcom/tencent/msdk/webview/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v9

    iput v9, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentRed:I

    .line 28
    invoke-direct {p0, v7, v3, p1}, Lcom/tencent/msdk/webview/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v9

    iput v9, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentGreen:I

    .line 29
    invoke-direct {p0, v6, v2, p1}, Lcom/tencent/msdk/webview/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v9

    iput v9, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentBlue:I

    .line 31
    iget v9, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentAlpha:I

    shl-int/lit8 v9, v9, 0x18

    iget v10, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentRed:I

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentGreen:I

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    iget v10, p0, Lcom/tencent/msdk/webview/ColorEvaluator;->mCurrentBlue:I

    add-int v0, v9, v10

    .line 33
    .local v0, "currentColor":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/msdk/webview/ColorEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
