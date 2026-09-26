.class public Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final DEFAULT_DECODE_MEMORY_LIMIT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "gm_bridge BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 47
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 49
    .local v4, "width":I
    const/4 v3, 0x1

    .line 50
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 51
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 52
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 55
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 57
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 60
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgParam"    # Ljava/lang/Object;

    .prologue
    const/high16 v12, 0x200000

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v5, 0x0

    .line 99
    :goto_0
    return-object v5

    .line 68
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    instance-of v5, p1, Landroid/net/Uri;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 72
    check-cast v5, Landroid/net/Uri;

    invoke-static {p0, v5, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    :cond_1
    :goto_1
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    const-string v5, "gm_bridge BitmapUtil"

    const-string v6, "JustDecodeBounds : [%d,%d]"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_2

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v5, :cond_4

    .line 82
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 73
    :cond_3
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 75
    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 85
    :cond_4
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v5, v6

    .line 86
    .local v2, "originalSize":I
    const-string v5, "gm_bridge BitmapUtil"

    const-string v6, "original bitmap size = %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-le v2, v12, :cond_6

    .line 89
    div-int v4, v2, v12

    .line 90
    .local v4, "scale":I
    const/4 v3, 0x1

    .line 91
    .local v3, "sample":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 92
    mul-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 94
    :cond_5
    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 95
    .local v0, "inSampleSize":I
    const-string v5, "gm_bridge BitmapUtil"

    const-string v6, "scale = %d,inSampleSize = %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/netease/unisdk/gmbridge/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    .end local v0    # "inSampleSize":I
    .end local v3    # "sample":I
    .end local v4    # "scale":I
    :cond_6
    invoke-static {p0, p1, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 30
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 31
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    invoke-static {v0, p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 113
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgParam"    # Ljava/lang/Object;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 103
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "imgParam":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    .restart local p1    # "imgParam":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    check-cast p1, Ljava/lang/String;

    .end local p1    # "imgParam":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 108
    .restart local p1    # "imgParam":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "sizeLimit"    # I

    .prologue
    .line 133
    const/16 v5, 0x4b

    .line 134
    .local v5, "quality":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 135
    .local v6, "scale":D
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v4, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v3, p0

    .line 137
    .local v3, "image":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 138
    .local v9, "srcW":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 139
    .local v8, "srcH":I
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 141
    .local v10, "std":I
    const/4 v2, 0x1

    .line 143
    .local v2, "compressResult":Z
    :goto_0
    const-string v12, "gm_bridge BitmapUtil"

    const-string v13, "start compress ..."

    invoke-static {v12, v13}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v12, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v12, v0, :cond_1

    .line 146
    const-string v12, "gm_bridge BitmapUtil"

    const-string v13, "compress finish,size = %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    move-object/from16 v0, p0

    if-eq v3, v0, :cond_0

    .line 148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    :cond_0
    :goto_1
    if-nez v2, :cond_5

    .line 179
    const/4 v12, 0x0

    .line 182
    :goto_2
    return v12

    .line 153
    :cond_1
    int-to-double v12, v10

    mul-double/2addr v12, v6

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    .line 154
    add-int/lit8 v5, v5, -0xf

    .line 155
    const-string v12, "gm_bridge BitmapUtil"

    const-string v13, "reduce quality to %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/16 v12, 0x1e

    if-ge v5, v12, :cond_4

    .line 157
    move-object/from16 v0, p0

    if-eq v3, v0, :cond_2

    .line 158
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_2
    const-string v12, "gm_bridge BitmapUtil"

    const-string v13, "can\'t reduce quality any more"

    invoke-static {v12, v13}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_1

    .line 165
    :cond_3
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v12

    .line 166
    const-string v12, "gm_bridge BitmapUtil"

    const-string v13, "scale bitmap to %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    move-object v11, v3

    .line 168
    .local v11, "tmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v6

    double-to-int v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v14, v13

    mul-double/2addr v14, v6

    double-to-int v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 169
    move-object/from16 v0, p0

    if-eq v11, v0, :cond_4

    .line 170
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    .end local v11    # "tmp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0

    .line 182
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->writeFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result v12

    goto :goto_2
.end method
