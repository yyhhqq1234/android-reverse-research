.class public Lcom/tencent/friday/uikit/d/c/f;
.super Ljava/lang/Object;
.source "ViewStyle.java"


# direct methods
.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->val:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-static {p1}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 6

    .prologue
    .line 32
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V

    .line 33
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 44
    invoke-static {p0, p2}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 45
    invoke-static {p0, p3, p5}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Z)V

    .line 46
    invoke-static {p0, p4}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 47
    return-void
.end method

.method private static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Z)V

    .line 75
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->x:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    .line 86
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->y:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v2

    .line 87
    if-eqz p2, :cond_6

    .line 88
    if-gez v1, :cond_1

    move v1, v0

    .line 89
    :cond_1
    if-gez v2, :cond_4

    .line 91
    :goto_1
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    .line 92
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 94
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    .line 96
    if-eqz p2, :cond_3

    .line 98
    sget v2, Lcom/tencent/friday/uikit/a/e;->b:I

    if-le v0, v2, :cond_2

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "width exceed the screen :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/tencent/friday/uikit/a/e;->b:I

    .line 102
    :cond_2
    sget v2, Lcom/tencent/friday/uikit/a/e;->c:I

    if-le v1, v2, :cond_3

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height exceed the screen :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 104
    sget v1, Lcom/tencent/friday/uikit/a/e;->c:I

    .line 109
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 89
    goto :goto_1

    .line 116
    :cond_5
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 117
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
