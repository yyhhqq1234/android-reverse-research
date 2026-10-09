.class public Lcom/tencent/msdk/notice/RollTextView;
.super Landroid/widget/TextView;
.source "RollTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/notice/RollTextView$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isStarting:Z

.field private paint:Landroid/graphics/Paint;

.field private step:F

.field private temp_view_plus_text_length:F

.field private temp_view_plus_two_text_length:F

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textLength:F

.field private viewWidth:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/tencent/msdk/notice/RollTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/notice/RollTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    .line 27
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    .line 28
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 29
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->y:F

    .line 30
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_text_length:F

    .line 31
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_two_text_length:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    .line 34
    const-string v0, "#B4B4B4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->textColor:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollTextView;->initView()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    .line 27
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    .line 28
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 29
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->y:F

    .line 30
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_text_length:F

    .line 31
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_two_text_length:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    .line 34
    const-string v0, "#B4B4B4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->textColor:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollTextView;->initView()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    .line 27
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    .line 28
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 29
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->y:F

    .line 30
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_text_length:F

    .line 31
    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_two_text_length:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    .line 34
    const-string v0, "#B4B4B4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->textColor:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollTextView;->initView()V

    .line 48
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p0}, Lcom/tencent/msdk/notice/RollTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public init(Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    .line 63
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    .line 64
    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 66
    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    .line 72
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 73
    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_text_length:F

    .line 74
    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->viewWidth:F

    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_two_text_length:F

    .line 75
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->y:F

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTextSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getPaddingTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->stopScroll()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->startScroll()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollTextView;->text:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_text_length:F

    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->y:F

    iget-object v3, p0, Lcom/tencent/msdk/notice/RollTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    iget-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 161
    iget v0, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    iget v1, p0, Lcom/tencent/msdk/notice/RollTextView;->temp_view_plus_two_text_length:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 162
    iget v0, p0, Lcom/tencent/msdk/notice/RollTextView;->textLength:F

    iput v0, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->invalidate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 95
    instance-of v1, p1, Lcom/tencent/msdk/notice/RollTextView$SavedState;

    if-nez v1, :cond_0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 104
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;

    .line 100
    .local v0, "ss":Lcom/tencent/msdk/notice/RollTextView$SavedState;
    invoke-virtual {v0}, Lcom/tencent/msdk/notice/RollTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 102
    iget v1, v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    iput v1, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    .line 103
    iget-boolean v1, v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    iput-boolean v1, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 83
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;

    invoke-direct {v0, v1}, Lcom/tencent/msdk/notice/RollTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 85
    .local v0, "ss":Lcom/tencent/msdk/notice/RollTextView$SavedState;
    iget v2, p0, Lcom/tencent/msdk/notice/RollTextView;->step:F

    iput v2, v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->step:F

    .line 86
    iget-boolean v2, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    iput-boolean v2, v0, Lcom/tencent/msdk/notice/RollTextView$SavedState;->isStarting:Z

    .line 88
    return-object v0
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    .line 143
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->invalidate()V

    .line 144
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/notice/RollTextView;->isStarting:Z

    .line 150
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollTextView;->invalidate()V

    .line 151
    return-void
.end method
