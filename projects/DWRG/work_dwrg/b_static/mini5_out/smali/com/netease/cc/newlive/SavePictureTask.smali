.class public Lcom/netease/cc/newlive/SavePictureTask;
.super Landroid/os/AsyncTask;
.source "SavePictureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:S

.field private d:Lcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;

.field private e:Ljava/io/File;

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/io/File;ILcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "SavePictureTask"

    .line 17
    iput-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 19
    iput-short v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->c:S

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->g:F

    .line 24
    iput v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->h:F

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->i:I

    .line 26
    iput v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->j:I

    .line 29
    iput-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    .line 30
    iput p2, p0, Lcom/netease/cc/newlive/SavePictureTask;->f:I

    .line 31
    iput-object p3, p0, Lcom/netease/cc/newlive/SavePictureTask;->d:Lcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/SavePictureTask;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 128
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->f:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 130
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->h:F

    iget v1, p0, Lcom/netease/cc/newlive/SavePictureTask;->g:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 134
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->i:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->j:I

    if-lez v0, :cond_1

    int-to-float v0, v3

    int-to-float v1, v4

    div-float v2, v0, v1

    .line 137
    iget v6, p0, Lcom/netease/cc/newlive/SavePictureTask;->i:I

    int-to-float v6, v6

    iget v7, p0, Lcom/netease/cc/newlive/SavePictureTask;->j:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 139
    iget v2, p0, Lcom/netease/cc/newlive/SavePictureTask;->j:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 140
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v1, v1, v6

    sub-float/2addr v0, v1

    float-to-int v2, v0

    const/4 v3, 0x0

    float-to-int v6, v1

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v6

    move v6, v7

    .line 142
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_0
    iget v2, p0, Lcom/netease/cc/newlive/SavePictureTask;->i:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 145
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v0, v6

    sub-float/2addr v1, v0

    float-to-int v2, v1

    const/4 v1, 0x0

    float-to-int v4, v0

    const/4 v6, 0x0

    move-object v0, p1

    .line 147
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    move v3, v1

    .line 180
    :cond_1
    :goto_0
    iget-short v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->c:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    .line 181
    :goto_1
    iget-short v4, p0, Lcom/netease/cc/newlive/SavePictureTask;->c:S

    if-ne v4, v1, :cond_3

    iget-object v1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    move-object v1, p1

    .line 182
    :goto_2
    invoke-static {v0, v1, v2, v3}, Lcom/netease/cc/newlive/utils/CCLiveUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "SavePictureTask"

    const-string v1, "merge bmp fail"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object p1, v0

    :cond_5
    :goto_3
    return-object p1
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->e:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 84
    aget-object p1, p1, v0

    .line 85
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/SavePictureTask;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/cc/newlive/SavePictureTask;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->d:Lcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;->onSaved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/cc/newlive/SavePictureTask;->a([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRotate()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->f:I

    return v0
.end method

.method public gethScale()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->h:F

    return v0
.end method

.method public getvScale()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/netease/cc/newlive/SavePictureTask;->g:F

    return v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/cc/newlive/SavePictureTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public setMergePic(Landroid/graphics/Bitmap;S)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->b:Landroid/graphics/Bitmap;

    .line 65
    iput-short p2, p0, Lcom/netease/cc/newlive/SavePictureTask;->c:S

    return-void
.end method

.method public setRotate(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->f:I

    return-void
.end method

.method public setTargetImageSize(II)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->i:I

    .line 70
    iput p2, p0, Lcom/netease/cc/newlive/SavePictureTask;->j:I

    return-void
.end method

.method public sethScale(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->h:F

    return-void
.end method

.method public setvScale(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/netease/cc/newlive/SavePictureTask;->g:F

    return-void
.end method
