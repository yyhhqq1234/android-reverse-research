.class public Lcom/tencent/friday/uikit/d/c/b;
.super Ljava/lang/Object;
.source "DrawableStyle.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 79
    if-eqz p1, :cond_2

    .line 80
    invoke-static {p1, p3}, Lcom/tencent/friday/uikit/d/c/b;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP1()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP1()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    .line 86
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP2()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v4

    .line 87
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP2()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v5

    .line 88
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v4, v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/tencent/friday/uikit/a/e/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/friday/uikit/d/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;->getHighlightedImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;->getHighlightedImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;->getNormalImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 120
    const v0, -0x777778

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/tencent/friday/uikit/d/c/b;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image file not found :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 112
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;F)Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;
    .locals 7

    .prologue
    .line 173
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP1()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP1()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    .line 176
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP2()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    .line 177
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->getP2()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v4

    .line 179
    new-instance v5, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    new-instance v6, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {v6, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    invoke-direct {v5, v6, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    invoke-virtual {v0, v5}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->setP1(Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;)V

    .line 180
    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    new-instance v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    new-instance v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;->setP2(Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;)V

    .line 181
    return-object v0
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;IIZ)V
    .locals 5

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0, p3}, Lcom/tencent/friday/uikit/d/c/b;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    int-to-float v1, p1

    sget v2, Lcom/tencent/friday/uikit/a/e;->d:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 155
    int-to-float v2, p2

    sget v3, Lcom/tencent/friday/uikit/a/e;->d:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 158
    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 159
    invoke-static {v0, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->setFilePath(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 162
    invoke-static {v0}, Lcom/tencent/friday/uikit/a/a;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->setData([B)V

    .line 163
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/friday/uikit/d/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;F)Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->setNinePatchConfig(Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;)V

    goto :goto_0
.end method

.method private static b(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/a/a;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/a;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
