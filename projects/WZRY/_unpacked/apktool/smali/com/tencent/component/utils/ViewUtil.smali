.class public Lcom/tencent/component/utils/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/ViewUtil$DecorateContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG_DECORATE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/ViewUtil;->TAG_DECORATE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method private static computeChildIndex(Landroid/view/ViewGroup;Landroid/view/View;)I
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 208
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 218
    :cond_1
    :goto_0
    return v1

    .line 211
    :cond_2
    const/4 v1, 0x0

    .line 212
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 214
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 218
    :cond_3
    if-ltz v1, :cond_4

    if-lt v1, v0, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 213
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static decorate(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p0, "hostView"    # Landroid/view/View;
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    const/4 v3, 0x0

    .line 102
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/tencent/component/utils/ViewUtil;->decorate(Landroid/view/View;Landroid/view/View;IIIII)V

    .line 103
    return-void
.end method

.method public static decorate(Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 10
    .param p0, "hostView"    # Landroid/view/View;
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I
    .param p5, "rightMargin"    # I
    .param p6, "bottomMargin"    # I

    .prologue
    .line 117
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 121
    .local v6, "parent":Landroid/view/ViewParent;
    if-nez v6, :cond_2

    .line 123
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not attached to parent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 127
    :cond_2
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-nez v7, :cond_3

    .line 129
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has invalid parent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 136
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decorate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has already be added to a ViewParent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    :cond_4
    invoke-static {p0}, Lcom/tencent/component/utils/ViewUtil;->generateHostLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "hostLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static/range {p2 .. p6}, Lcom/tencent/component/utils/ViewUtil;->generateDecorLayoutParams(IIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .local v1, "decorLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v6

    .line 145
    check-cast v2, Landroid/view/ViewGroup;

    .line 147
    .local v2, "hostGroup":Landroid/view/ViewGroup;
    instance-of v7, v2, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/tencent/component/utils/ViewUtil;->getTag(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/tencent/component/utils/ViewUtil;->TAG_DECORATE:Ljava/lang/Object;

    if-ne v7, v8, :cond_6

    move-object v0, v2

    .line 148
    check-cast v0, Landroid/widget/FrameLayout;

    .line 165
    .local v0, "decorContainer":Landroid/widget/FrameLayout;
    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 168
    if-eqz v3, :cond_5

    .line 169
    invoke-virtual {v0, p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_5
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "decorContainer":Landroid/widget/FrameLayout;
    :cond_6
    new-instance v0, Lcom/tencent/component/utils/ViewUtil$DecorateContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, p0}, Lcom/tencent/component/utils/ViewUtil$DecorateContainer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 152
    .restart local v0    # "decorContainer":Landroid/widget/FrameLayout;
    invoke-static {v2, p0}, Lcom/tencent/component/utils/ViewUtil;->computeChildIndex(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v4

    .line 153
    .local v4, "index":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 155
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x2

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    const/4 v7, -0x2

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v2, v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    sget-object v7, Lcom/tencent/component/utils/ViewUtil;->TAG_DECORATE:Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/tencent/component/utils/ViewUtil;->setTag(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static generateDecorLayoutParams(IIIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I
    .param p3, "rightMargin"    # I
    .param p4, "bottomMargin"    # I

    .prologue
    const/4 v1, -0x2

    .line 187
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 190
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 191
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 192
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 193
    return-object v0
.end method

.method private static generateHostLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "hostView"    # Landroid/view/View;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/component/utils/ViewUtil;->newLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ViewUtil;->getTagInternal(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/tencent/component/utils/ViewUtil;->getTagInternal(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getTagInternal(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v2

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "viewTag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 90
    check-cast v0, Landroid/util/SparseArray;

    .line 91
    .local v0, "tagArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private getTextHeight(F)I
    .locals 4
    .param p1, "textSize"    # F

    .prologue
    .line 259
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 260
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 262
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private static newLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 200
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p0    # "source":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 203
    .restart local p0    # "source":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static setTag(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/utils/ViewUtil;->setTagInternal(Landroid/view/View;ILjava/lang/Object;Z)V

    .line 48
    return-void
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/tencent/component/utils/ViewUtil;->setTagInternal(Landroid/view/View;ILjava/lang/Object;Z)V

    .line 33
    return-void
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;Z)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;
    .param p3, "ignoreKey"    # Z

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    if-nez p3, :cond_1

    .line 66
    ushr-int/lit8 v2, p1, 0x18

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The key must be an application-specific resource id."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "viewTag":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/util/SparseArray;

    if-nez v2, :cond_3

    .line 74
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "viewTag":Ljava/lang/Object;
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_3
    move-object v0, v1

    .line 76
    check-cast v0, Landroid/util/SparseArray;

    .line 77
    .local v0, "tagArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public setLineSpacing(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "lineSpacing"    # F

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v0, "density":F
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    div-float v5, v6, v0

    .line 244
    .local v5, "textSizeDp":F
    add-float v3, v5, p3

    .line 245
    .local v3, "lineHeight":F
    invoke-direct {p0, v5}, Lcom/tencent/component/utils/ViewUtil;->getTextHeight(F)I

    move-result v4

    .line 246
    .local v4, "textHeight":I
    const/4 v1, 0x0

    .line 247
    .local v1, "fAddValue":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 248
    .local v2, "fMulValue":F
    int-to-float v6, v4

    cmpl-float v6, v6, v3

    if-lez v6, :cond_0

    .line 249
    int-to-float v6, v4

    div-float v2, v3, v6

    .line 250
    const/high16 v1, -0x40800000    # -1.0f

    .line 255
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 256
    return-void

    .line 252
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 253
    int-to-float v6, v4

    sub-float v1, v3, v6

    goto :goto_0
.end method
