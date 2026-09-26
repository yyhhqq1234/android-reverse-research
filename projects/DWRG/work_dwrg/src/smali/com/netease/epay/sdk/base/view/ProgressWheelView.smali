.class public Lcom/netease/epay/sdk/base/view/ProgressWheelView;
.super Landroid/view/View;
.source "ProgressWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;,
        Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private shouldAnimate:Z

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barLength:I

    .line 50
    const/16 v0, 0x1c

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 51
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 52
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 53
    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    .line 55
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    .line 56
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barGrowingFromFront:Z

    .line 58
    iput-wide v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    .line 60
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    .line 61
    const v0, 0xffffff

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    .line 73
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    .line 76
    iput-wide v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 80
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 81
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 82
    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 104
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setAnimationEnabled()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barLength:I

    .line 50
    const/16 v0, 0x1c

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 51
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 52
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 53
    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    .line 55
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    .line 56
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barGrowingFromFront:Z

    .line 58
    iput-wide v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    .line 60
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    .line 61
    const v0, 0xffffff

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    .line 73
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    .line 76
    iput-wide v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 80
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 81
    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 82
    iput-boolean v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 94
    sget-object v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 96
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setAnimationEnabled()V

    .line 97
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 233
    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 234
    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 235
    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    int-to-float v1, v1

    .line 236
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 238
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_circleRadius:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    int-to-float v1, v1

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 241
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_fillRadius:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    .line 243
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_barWidth:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 245
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_rimWidth:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 247
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_spinSpeed:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    div-float/2addr v1, v3

    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 249
    mul-float/2addr v0, v3

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    .line 251
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_barSpinCycleTime:I

    iget-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    double-to-int v1, v2

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    .line 254
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_barColor:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    .line 256
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_rimColor:I

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    .line 258
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_linearProgress:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->linearProgress:Z

    .line 260
    sget v0, Lcom/netease/epay/sdk/base/R$styleable;->epaysdk_ProgressWheel_epaysdk_progressIndeterminate:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spin()V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    return-void
.end method

.method private runCallback()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 441
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 443
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;->onProgressUpdate(F)V

    .line 445
    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 435
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;->onProgressUpdate(F)V

    .line 438
    :cond_0
    return-void
.end method

.method private setAnimationEnabled()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 119
    :goto_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->shouldAnimate:Z

    .line 120
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupBounds(II)V
    .locals 7
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingTop()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingBottom()I

    move-result v1

    .line 202
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingLeft()I

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingRight()I

    move-result v3

    .line 205
    iget-boolean v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    if-nez v4, :cond_0

    .line 207
    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 210
    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 213
    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 214
    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 216
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    return-void
.end method

.method private updateBarLength(J)V
    .locals 5
    .param p1, "deltaTimeInMilliSeconds"    # J

    .prologue
    .line 367
    const-wide/16 v0, 0x32

    .line 368
    iget-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    .line 369
    iget-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    .line 371
    iget-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 374
    iget-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    .line 376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    .line 378
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barGrowingFromFront:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barGrowingFromFront:Z

    .line 381
    :cond_0
    iget-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->timeStartGrowing:D

    iget-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barSpinCycleTime:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 384
    const/16 v1, 0xea

    int-to-float v1, v1

    .line 386
    iget-boolean v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barGrowingFromFront:Z

    if-eqz v2, :cond_2

    .line 387
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    .line 396
    :goto_1
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 390
    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    iget v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 391
    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    goto :goto_1

    .line 394
    :cond_3
    iget-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->pausedTimeWithoutGrowing:J

    goto :goto_1
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->shouldAnimate:Z

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-eqz v1, :cond_4

    .line 292
    const/4 v6, 0x1

    .line 295
    const-wide/16 v0, 0x14

    .line 296
    long-to-float v2, v0

    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->updateBarLength(J)V

    .line 300
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 301
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 302
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 307
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->runCallback(F)V

    .line 309
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 311
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 312
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barExtraLength:F

    add-float v3, v0, v1

    .line 314
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    const/4 v2, 0x0

    .line 316
    const/high16 v3, 0x43070000    # 135.0f

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 353
    :goto_1
    if-eqz v6, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    goto :goto_0

    .line 321
    :cond_4
    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 323
    iget v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 325
    const/4 v0, 0x1

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 328
    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    mul-float/2addr v2, v3

    .line 330
    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    :cond_5
    move v6, v0

    .line 334
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_6

    .line 335
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->runCallback()V

    .line 338
    :cond_6
    const/4 v1, 0x0

    .line 339
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 340
    iget-boolean v2, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->linearProgress:Z

    if-nez v2, :cond_8

    .line 341
    const/high16 v0, 0x40000000    # 2.0f

    .line 342
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-double v8, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    .line 343
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    move v2, v1

    .line 346
    :goto_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 347
    const/high16 v3, 0x43b40000    # 360.0f

    .line 350
    :goto_3
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    move v3, v0

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 127
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 129
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    .line 130
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 141
    if-ne v4, v6, :cond_2

    .line 153
    :goto_0
    if-eq v5, v6, :cond_0

    if-ne v4, v6, :cond_4

    :cond_0
    move v0, v1

    .line 164
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setMeasuredDimension(II)V

    .line 165
    return-void

    .line 144
    :cond_2
    if-ne v4, v7, :cond_3

    .line 146
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 149
    goto :goto_0

    .line 156
    :cond_4
    if-ne v5, v7, :cond_1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 498
    instance-of v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;

    if-nez v0, :cond_0

    .line 499
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    .end local p1    # "state":Landroid/os/Parcelable;
    :goto_0
    return-void

    .line 503
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    check-cast p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;

    .line 504
    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 506
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 507
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 508
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 509
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    .line 510
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 511
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    .line 512
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 513
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    .line 514
    iget v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 515
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->linearProgress:Z

    .line 516
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->fillRadius:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 482
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mProgress:F

    .line 483
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->mTargetProgress:F

    .line 484
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    iput-boolean v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->isSpinning:Z

    .line 485
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->spinSpeed:F

    .line 486
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barWidth:I

    .line 487
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->barColor:I

    .line 488
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimWidth:I

    .line 489
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->rimColor:I

    .line 490
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    iput v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->circleRadius:I

    .line 491
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->linearProgress:Z

    iput-boolean v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->linearProgress:Z

    .line 492
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->fillRadius:Z

    iput-boolean v0, v1, Lcom/netease/epay/sdk/base/view/ProgressWheelView$WheelSavedState;->fillRadius:Z

    .line 494
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setupBounds(II)V

    .line 176
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setupPaints()V

    .line 177
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 178
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 361
    if-nez p2, :cond_0

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 364
    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 410
    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 411
    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 412
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 413
    return-void
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1, "barColor"    # I

    .prologue
    .line 632
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barColor:I

    .line 633
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setupPaints()V

    .line 634
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 637
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1
    .param p1, "barWidth"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->barWidth:I

    .line 614
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 617
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;)V
    .locals 1
    .param p1, "progressCallback"    # Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->callback:Lcom/netease/epay/sdk/base/view/ProgressWheelView$ProgressCallback;

    .line 271
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->runCallback()V

    .line 274
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1
    .param p1, "circleRadius"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->circleRadius:I

    .line 595
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 598
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 454
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 455
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 459
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 460
    sub-float/2addr p1, v2

    .line 465
    :cond_1
    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 473
    :goto_1
    return-void

    .line 461
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 462
    const/4 p1, 0x0

    goto :goto_0

    .line 469
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 470
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 472
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1
    .param p1, "isLinear"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->linearProgress:Z

    .line 576
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 579
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 541
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 544
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->runCallback()V

    .line 547
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 548
    sub-float/2addr p1, v2

    .line 553
    :cond_1
    :goto_0
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 567
    :goto_1
    return-void

    .line 549
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 550
    const/4 p1, 0x0

    goto :goto_0

    .line 560
    :cond_3
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 564
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 566
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1
    .param p1, "rimColor"    # I

    .prologue
    .line 652
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimColor:I

    .line 653
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->setupPaints()V

    .line 654
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 657
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1
    .param p1, "rimWidth"    # I

    .prologue
    .line 692
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->rimWidth:I

    .line 693
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 696
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1
    .param p1, "spinSpeed"    # F

    .prologue
    .line 676
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->spinSpeed:F

    .line 677
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 429
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->lastTimeAnimated:J

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 431
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 432
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->isSpinning:Z

    .line 420
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mProgress:F

    .line 421
    iput v1, p0, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->mTargetProgress:F

    .line 422
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ProgressWheelView;->invalidate()V

    .line 423
    return-void
.end method
