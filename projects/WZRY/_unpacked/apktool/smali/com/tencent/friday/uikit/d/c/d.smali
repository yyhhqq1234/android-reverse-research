.class public Lcom/tencent/friday/uikit/d/c/d;
.super Ljava/lang/Object;
.source "SelectorStyle.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;->getNormalImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 22
    invoke-static {p0, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;->getDisabledImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    move-object v0, v1

    .line 29
    :cond_0
    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 31
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 33
    new-array v4, v7, [I

    const v5, 0x101009e

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    new-array v1, v7, [I

    const v4, 0x101009d

    aput v4, v1, v6

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    new-array v0, v6, [I

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object v0, v2

    .line 42
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method
