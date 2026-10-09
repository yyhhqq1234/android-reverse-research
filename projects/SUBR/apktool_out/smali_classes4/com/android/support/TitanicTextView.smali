.class public Lcom/android/support/TitanicTextView;
.super Landroid/widget/TextView;
.source "TitanicTextView.java"


# instance fields
.field private animationSetupCallback:Lcom/android/support/AnimationSetupCallback;

.field assetManager:Landroid/content/res/AssetManager;

.field img:Landroid/graphics/drawable/Drawable;

.field private maskX:F

.field private maskY:F

.field private offsetY:F

.field private setUp:Z

.field private shader:Landroid/graphics/BitmapShader;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private sinking:Z

.field private wave:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/support/TitanicTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    move-object v4, v0

    invoke-direct {v4}, Lcom/android/support/TitanicTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    move-object v5, v0

    invoke-direct {v5}, Lcom/android/support/TitanicTextView;->init()V

    return-void
.end method

.method private createShader(Landroid/content/Context;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    iput-object v9, v8, Lcom/android/support/TitanicTextView;->assetManager:Landroid/content/res/AssetManager;

    .line 133
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "dW5pdHl1dGlsLmpy"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/android/support/TitanicTextView;->img:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_0
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 141
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/TitanicTextView;->img:Landroid/graphics/drawable/Drawable;

    iput-object v9, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move v3, v8

    .line 145
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move v4, v8

    .line 147
    move v8, v3

    move v9, v4

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v5, v8

    .line 148
    new-instance v8, Landroid/graphics/Canvas;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v8

    .line 150
    move-object v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/support/TitanicTextView;->getCurrentTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 152
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v3

    move v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    move-object v8, v0

    new-instance v9, Landroid/graphics/BitmapShader;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v5

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v10, v11, v12, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v9, v8, Lcom/android/support/TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    .line 156
    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/support/TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v8

    .line 158
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/support/TitanicTextView;->getHeight()I

    move-result v9

    move v10, v4

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iput v9, v8, Lcom/android/support/TitanicTextView;->offsetY:F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_1
    return-void

    .line 133
    :catch_0
    move-exception v8

    move-object v3, v8

    goto :goto_0

    .line 158
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 160
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Lcom/android/support/TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public getAnimationSetupCallback()Lcom/android/support/AnimationSetupCallback;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/TitanicTextView;->animationSetupCallback:Lcom/android/support/AnimationSetupCallback;

    move-object v0, v2

    return-object v0
.end method

.method public getMaskX()F
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/android/support/TitanicTextView;->maskX:F

    move v0, v2

    return v0
.end method

.method public getMaskY()F
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/android/support/TitanicTextView;->maskY:F

    move v0, v2

    return v0
.end method

.method public isSetUp()Z
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/support/TitanicTextView;->setUp:Z

    move v0, v2

    return v0
.end method

.method public isSinking()Z
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/support/TitanicTextView;->sinking:Z

    move v0, v2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/support/TitanicTextView;->sinking:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_1

    .line 171
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-nez v3, :cond_0

    .line 172
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    .line 177
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    move-object v4, v0

    iget v4, v4, Lcom/android/support/TitanicTextView;->maskX:F

    move-object v5, v0

    iget v5, v5, Lcom/android/support/TitanicTextView;->maskY:F

    move-object v6, v0

    iget v6, v6, Lcom/android/support/TitanicTextView;->offsetY:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 180
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 185
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 182
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 111
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/support/TitanicTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/support/TitanicTextView;->createShader(Landroid/content/Context;)V

    .line 113
    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/support/TitanicTextView;->setUp:Z

    if-nez v6, :cond_0

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/support/TitanicTextView;->setUp:Z

    .line 115
    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/TitanicTextView;->animationSetupCallback:Lcom/android/support/AnimationSetupCallback;

    if-eqz v6, :cond_0

    .line 116
    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/TitanicTextView;->animationSetupCallback:Lcom/android/support/AnimationSetupCallback;

    move-object v7, v0

    invoke-interface {v6, v7}, Lcom/android/support/AnimationSetupCallback;->onSetupAnimation(Lcom/android/support/TitanicTextView;)V

    :cond_0
    return-void
.end method

.method public setAnimationSetupCallback(Lcom/android/support/AnimationSetupCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/AnimationSetupCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/support/TitanicTextView;->animationSetupCallback:Lcom/android/support/AnimationSetupCallback;

    return-void
.end method

.method public setMaskX(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/android/support/TitanicTextView;->maskX:F

    .line 71
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView;->invalidate()V

    return-void
.end method

.method public setMaskY(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/android/support/TitanicTextView;->maskY:F

    .line 80
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView;->invalidate()V

    return-void
.end method

.method public setSinking(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/android/support/TitanicTextView;->sinking:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/support/TitanicTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/support/TitanicTextView;->createShader(Landroid/content/Context;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 104
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/support/TitanicTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/support/TitanicTextView;->createShader(Landroid/content/Context;)V

    return-void
.end method
