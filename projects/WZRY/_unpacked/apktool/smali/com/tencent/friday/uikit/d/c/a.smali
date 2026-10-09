.class public Lcom/tencent/friday/uikit/d/c/a;
.super Ljava/lang/Object;
.source "ColorStyle.java"


# direct methods
.method private static a(I)I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xcc

    if-ge p0, v0, :cond_0

    .line 53
    add-int/lit8 v0, p0, 0x32

    .line 55
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I
    .locals 4

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-nez v0, :cond_2

    .line 21
    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method

.method private static a(III)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p0, v0, v6

    aput p1, v0, v7

    aput p2, v0, v8

    const/4 v1, 0x5

    aput p0, v0, v1

    .line 81
    const/4 v1, 0x6

    new-array v1, v1, [[I

    .line 82
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    .line 83
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    .line 84
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    .line 85
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 86
    new-array v2, v5, [I

    const v3, 0x101009d

    aput v3, v2, v4

    aput-object v2, v1, v8

    .line 87
    const/4 v2, 0x5

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 88
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 89
    return-object v2

    .line 82
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 62
    invoke-static {p0}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v1

    .line 63
    invoke-static {p1}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v2

    .line 64
    invoke-static {p2}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v0

    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/tencent/friday/uikit/d/c/a;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v2

    .line 68
    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    .line 71
    :cond_1
    invoke-static {v1, v2, v0}, Lcom/tencent/friday/uikit/d/c/a;->a(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I
    .locals 4

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, -0x1

    .line 48
    :goto_0
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-nez v0, :cond_2

    .line 40
    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->a:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/c/a;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->r:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/d/c/a;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->g:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0
.end method
