.class public Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;
.super Ljava/lang/Object;
.source "WXSdk.java"


# static fields
.field private static final IMG_LIMIT_SIZE:J = 0x300000L

.field private static final IMG_MAX_SIZE:I = 0x989680

.field private static final MINIPROGRAM_SUPPORTED_SDK_VERSION:I = 0x1

.field private static final THUMB_MAX_SIZE:I = 0x7d00

.field private static final THUMB_MINAPP_SIZE:I = 0x2ee

.field private static final THUMB_MINIAPP_MAX_SIZE:I = 0x20000

.field private static final THUMB_SIZE:I = 0xc8

.field private static wxOpenID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->wxOpenID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CompressImage([BI)[B
    .locals 13
    .param p0, "imgData"    # [B
    .param p1, "imgDataLen"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xc8

    const/4 v11, 0x0

    .line 182
    const-string v10, "imgData is large than 32K, it will be compress"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 184
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    invoke-static {p0, v11, p1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 188
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 189
    .local v8, "w":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 190
    .local v2, "h":I
    const/4 v7, 0x0

    .line 191
    .local v7, "thumbBmp":Landroid/graphics/Bitmap;
    if-le v8, v2, :cond_0

    .line 192
    iput v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 193
    mul-int/lit16 v10, v2, 0xc8

    div-int/2addr v10, v8

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 194
    div-int/lit16 v10, v8, 0xc8

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-static {p0, v11, p1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    :goto_0
    if-nez v7, :cond_1

    .line 205
    const-string v10, "imgData decode to thumbBmp error!"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    move-object p0, v9

    .line 230
    .end local p0    # "imgData":[B
    :goto_1
    return-object p0

    .line 198
    .restart local p0    # "imgData":[B
    :cond_0
    iput v12, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 199
    mul-int/lit16 v10, v8, 0xc8

    div-int/2addr v10, v2

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    div-int/lit16 v10, v2, 0xc8

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 202
    invoke-static {p0, v11, p1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 209
    :cond_1
    const/16 v10, 0x8

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 210
    .local v6, "ratio":[I
    const/4 v3, 0x0

    .line 211
    .local v3, "index":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget v11, v6, v3

    invoke-virtual {v7, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move v3, v4

    .line 213
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    const/16 v11, 0x7d00

    if-le v10, v11, :cond_2

    array-length v10, v6

    if-ge v3, v10, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 215
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget v11, v6, v3

    invoke-virtual {v7, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 217
    :cond_2
    array-length v10, v6

    if-lt v3, v10, :cond_3

    .line 218
    const-string v10, "compress image failed!"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    move-object p0, v9

    .line 219
    goto :goto_1

    .line 222
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send imgData length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close byteStream exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 209
    nop

    :array_0
    .array-data 4
        0x5f
        0x5a
        0x50
        0x3c
        0x14
        0x5
        0x2
        0x1
    .end array-data
.end method

.method private static CompressMiniAppImage([B)[B
    .locals 13
    .param p0, "thumbImgData"    # [B

    .prologue
    const/high16 v12, 0x20000

    const/16 v11, 0x2ee

    const/4 v10, 0x1

    const v9, 0x443b8000    # 750.0f

    .line 234
    const/4 v7, 0x0

    array-length v8, p0

    invoke-static {p0, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 236
    const-string v7, "imgData decode to bmp error!"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 237
    const/4 p0, 0x0

    .line 298
    .end local p0    # "thumbImgData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 239
    .restart local p0    # "thumbImgData":[B
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 240
    .local v6, "w":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 241
    .local v3, "h":F
    const/4 v5, 0x0

    .line 242
    .local v5, "thumbBmp":Landroid/graphics/Bitmap;
    cmpl-float v7, v6, v9

    if-gtz v7, :cond_2

    cmpl-float v7, v3, v9

    if-lez v7, :cond_6

    .line 243
    :cond_2
    cmpl-float v7, v6, v3

    if-lez v7, :cond_5

    .line 244
    div-float v7, v3, v6

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-static {v0, v11, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 250
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 252
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmap scaled size :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 255
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v1, 0x0

    .line 266
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    array-length v7, p0

    if-le v7, v12, :cond_8

    .line 267
    const/16 v4, 0x64

    .line 268
    .local v4, "quality":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    array-length v7, p0

    if-le v7, v12, :cond_3

    .line 270
    add-int/lit8 v4, v4, -0x5

    .line 271
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    if-gtz v4, :cond_7

    .line 278
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitmap scale quality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 280
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    const/4 v1, 0x0

    .line 286
    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 287
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    const/4 v5, 0x0

    .line 290
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 247
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "quality":I
    :cond_5
    div-float v7, v6, v3

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-static {v0, v7, v11, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_1

    .line 257
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 262
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    move-object v5, v0

    .line 263
    const-string v7, "bitmap not need scale!"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 275
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "quality":I
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v7, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 276
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_3

    .line 282
    :catch_1
    move-exception v2

    .line 284
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 296
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "quality":I
    :cond_8
    const-string v7, "bitmap not need scale to 32k"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static OpenWXDeeplink(Ljava/lang/String;)V
    .locals 5
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wxsdk OpenWXDeeplink link:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 304
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 308
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v0, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 309
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SendStructMessage(Ljava/lang/String;Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;)Z
    .locals 27
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;

    .prologue
    .line 317
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "wxsdk SendStructMessage openid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";scene: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->scene:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";media_type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";share_from: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->share_from:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";description: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";mediaTagName: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";imagePath: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";messagExt: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messagExt:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";messageAction: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messageAction:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";musicUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";musicLowBandUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";musicDataUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicDataUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";musicLowBandDataUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicLowBandDataUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";videoUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";videoLowBandUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoLowBandUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";videoPath: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";webpageUrl: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->webpageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";url: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";extInfo: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->extInfo:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":userName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->userName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":withShareTicket:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->withShareTicket:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 340
    const/16 v18, 0x0

    .line 342
    .local v18, "thumbbyte":[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 343
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "thumbData not BE NULL and thumbDataLen:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", need generate thumb"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const v25, 0x989680

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 346
    const-string/jumbo v24, "thumbData too big, it should be less than 10M"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 349
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 350
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 351
    const-string/jumbo v24, "thumbData decode to bmp error!"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 352
    const/4 v9, 0x0

    .line 534
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return v9

    .line 355
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 356
    .local v20, "w":F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v8, v0

    .line 358
    .local v8, "h":F
    const/16 v17, 0x0

    .line 359
    .local v17, "thumbBmp":Landroid/graphics/Bitmap;
    cmpl-float v24, v20, v8

    if-lez v24, :cond_7

    .line 360
    const/16 v24, 0xc8

    const/high16 v25, 0x43480000    # 200.0f

    div-float v26, v8, v20

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 366
    :goto_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 367
    .local v6, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x5a

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 368
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 369
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 375
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "h":F
    .end local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v20    # "w":F
    :cond_2
    :goto_2
    new-instance v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v14}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 376
    .local v14, "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 378
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    .line 379
    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 380
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messagExt:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    .line 381
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->messageAction:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageAction:Ljava/lang/String;

    .line 386
    const-string v16, "appdata"

    .line 388
    .local v16, "req_transaction":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 389
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x20000

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 390
    const-string v24, "imgData too big, it should be less than 128K"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 392
    :cond_3
    new-instance v12, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;

    invoke-direct {v12}, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;-><init>()V

    .line 393
    .local v12, "miniProgram":Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->webpageUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v12, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->userName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v12, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 395
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v12, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 396
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->withShareTicket:Z

    move/from16 v24, v0

    move/from16 v0, v24

    iput-boolean v0, v12, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->withShareTicket:Z

    .line 397
    iput-object v12, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 509
    .end local v12    # "miniProgram":Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;
    :cond_4
    :goto_3
    iget-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 510
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WXMediaMessage thumbData\'s length is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 516
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->share_from:I

    move/from16 v24, v0

    sget-object v25, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->Share_From_Game:Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;

    invoke-virtual/range {v25 .. v25}, Lcom/tencent/msdk/sdkwrapper/wx/eShareFrom;->val()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 517
    const-string v16, "msdkwebpage"

    .line 520
    :cond_5
    new-instance v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v15}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 523
    .local v15, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    if-eqz p0, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_6

    .line 524
    move-object/from16 v0, p0

    iput-object v0, v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->openId:Ljava/lang/String;

    .line 526
    :cond_6
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 527
    iput-object v14, v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 528
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->scene:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 530
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WGSendToWinxinsendReq with openid  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->openId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v9

    .line 532
    .local v9, "isSendReqSucc":Z
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WGSendToWeixin isSendReqSucc: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v9    # "isSendReqSucc":Z
    .end local v14    # "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .end local v15    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    .end local v16    # "req_transaction":Ljava/lang/String;
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "h":F
    .restart local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .restart local v20    # "w":F
    :cond_7
    const/high16 v24, 0x43480000    # 200.0f

    div-float v25, v20, v8

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0xc8

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_1

    .line 370
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "h":F
    .end local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v20    # "w":F
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->CompressMiniAppImage([B)[B

    move-result-object v18

    goto/16 :goto_2

    .line 399
    .restart local v14    # "msg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .restart local v16    # "req_transaction":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 401
    const/4 v13, 0x0

    .line 402
    .local v13, "mm_thumb":[B
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "imgData: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7d00

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 404
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->CompressImage([BI)[B

    move-result-object v13

    .line 405
    if-nez v13, :cond_b

    .line 406
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 409
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->thumbData:[B

    .line 411
    :cond_b
    iput-object v13, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 413
    new-instance v4, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 415
    .local v4, "appData":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_c

    .line 416
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->mediaTagName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 420
    :goto_5
    iput-object v4, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 421
    const-string v16, "appdata"

    .line 422
    goto/16 :goto_3

    .line 418
    :cond_c
    const-string/jumbo v24, "wgEmptyMediaTagName"

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    goto :goto_5

    .line 423
    .end local v4    # "appData":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    .end local v13    # "mm_thumb":[B
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 425
    new-instance v21, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct/range {v21 .. v21}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 426
    .local v21, "webpage":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->webpageUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 427
    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 428
    const-string/jumbo v16, "webpage"

    .line 429
    goto/16 :goto_3

    .line 430
    .end local v21    # "webpage":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 432
    new-instance v19, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;-><init>()V

    .line 433
    .local v19, "video":Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoLowBandUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->videoUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    .line 436
    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 437
    const-string v16, "appdata"

    .line 438
    goto/16 :goto_3

    .line 439
    .end local v19    # "video":Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 441
    new-instance v22, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct/range {v22 .. v22}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 442
    .local v22, "wechatMusicObject":Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 443
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->musicDataUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 444
    move-object/from16 v0, v22

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 445
    const-string v16, "music"

    .line 446
    goto/16 :goto_3

    .line 447
    .end local v22    # "wechatMusicObject":Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->media_type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 449
    const/16 v23, 0x0

    .line 450
    .local v23, "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    const/4 v5, 0x0

    .line 451
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_14

    .line 452
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_11

    .line 454
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not exist!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 455
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 457
    :cond_11
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 458
    .local v10, "imgSize":J
    const-wide/32 v24, 0x300000

    cmp-long v24, v10, v24

    if-lez v24, :cond_12

    .line 459
    const-string v24, "image should be smaller than 3M!"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 461
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 462
    if-nez v5, :cond_13

    .line 463
    const-string v24, "imagePath decode to bmp error!"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 464
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 466
    :cond_13
    new-instance v23, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    .end local v23    # "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    invoke-direct/range {v23 .. v23}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 467
    .restart local v23    # "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imagePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 487
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "imgSize":J
    :goto_6
    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 488
    const-string v16, "img"

    .line 491
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 492
    .restart local v20    # "w":F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v8, v0

    .line 494
    .restart local v8    # "h":F
    const/16 v17, 0x0

    .line 495
    .restart local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    cmpl-float v24, v20, v8

    if-lez v24, :cond_19

    .line 496
    const/16 v24, 0xc8

    const/high16 v25, 0x43480000    # 200.0f

    div-float v26, v8, v20

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 502
    :goto_7
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    .restart local v6    # "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x5a

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 504
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 505
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 469
    .end local v6    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "h":F
    .end local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v20    # "w":F
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 470
    :cond_15
    const-string v24, "imgData should NOT BE NULL and imgDataLen !== 0"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 471
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 474
    :cond_16
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "imgDataLength: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const v25, 0x989680

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_17

    .line 476
    const-string v24, "imgData too big, it should be less than 10M"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 479
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/msdk/sdkwrapper/wx/ShareInfoForWX;->imageData:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 480
    if-nez v5, :cond_18

    .line 481
    const-string v24, "imgData decode to bmp error!"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 482
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 484
    :cond_18
    new-instance v23, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    .end local v23    # "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v23    # "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    goto/16 :goto_6

    .line 499
    .restart local v8    # "h":F
    .restart local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .restart local v20    # "w":F
    :cond_19
    const/high16 v24, 0x43480000    # 200.0f

    div-float v25, v20, v8

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0xc8

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_7

    .line 512
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "h":F
    .end local v17    # "thumbBmp":Landroid/graphics/Bitmap;
    .end local v20    # "w":F
    .end local v23    # "wxImg":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    :cond_1a
    const-string v24, "WXMediaMessage thumbData is null"

    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static SetLoginState(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "openID"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expired"    # J

    .prologue
    .line 633
    sput-object p0, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->wxOpenID:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public static ShareToWXGameline([BLjava/lang/String;)V
    .locals 9
    .param p0, "data"    # [B
    .param p1, "gameExtra"    # Ljava/lang/String;

    .prologue
    .line 563
    if-nez p0, :cond_1

    .line 564
    const-string v7, "picture is null!"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    array-length v7, p0

    const/high16 v8, 0x80000

    if-le v7, v8, :cond_2

    .line 568
    const-string v7, "picture is too large!"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 570
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk$1;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk$1;-><init>()V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    const-string v8, "msdk_wxgameline"

    invoke-static {v7, v8}, Lcom/tencent/msdk/tools/Tools;->getMsdkProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "url":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 581
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {p1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "extra":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?gameextra="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 587
    .end local v2    # "extra":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 588
    const-string v7, "get wxgameline url is empty"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 592
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    const/4 v4, 0x0

    .line 593
    .local v4, "fout":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    .line 594
    .local v3, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "wxgameline"

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 596
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    if-eqz v5, :cond_7

    .line 603
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 609
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 610
    invoke-static {v6}, Lcom/tencent/msdk/api/WGPlatform;->WGOpenUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 605
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 606
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 598
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 599
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 601
    if-eqz v4, :cond_5

    .line 603
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 604
    :catch_3
    move-exception v1

    .line 605
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 601
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_6

    .line 603
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 606
    :cond_6
    :goto_5
    throw v7

    .line 604
    :catch_4
    move-exception v1

    .line 605
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 601
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 598
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static addCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "cardId"    # Ljava/lang/String;
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{\"code\":\"\",\"openid\":\"\",\"timestamp\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"signature\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "cardExtMsg":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;>;"
    new-instance v1, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;-><init>()V

    .line 619
    .local v1, "cardItem":Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;
    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;->cardId:Ljava/lang/String;

    .line 620
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$WXCardItem;->cardExtMsg:Ljava/lang/String;

    .line 621
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v4, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;-><init>()V

    .line 624
    .local v4, "req":Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;
    iput-object v2, v4, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;->cardArrary:Ljava/util/List;

    .line 625
    const-string/jumbo v5, "wechatAddCardToWXCardPackage"

    iput-object v5, v4, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;->transaction:Ljava/lang/String;

    .line 626
    sget-object v5, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->wxOpenID:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/opensdk/modelbiz/AddCardToWXCardPackage$Req;->openId:Ljava/lang/String;

    .line 627
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v5, v4}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v3

    .line 628
    .local v3, "isSendReqSucc":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCardToWXCardPackage isSendReqSucc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 629
    return v3
.end method

.method public static createWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "unionId"    # Ljava/lang/String;
    .param p1, "unionName"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;-><init>()V

    .line 540
    .local v1, "req":Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;
    const-string v2, "create_room"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;->transaction:Ljava/lang/String;

    .line 541
    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;->groupId:Ljava/lang/String;

    .line 542
    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;->chatroomName:Ljava/lang/String;

    .line 543
    iput-object p2, v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;->chatroomNickName:Ljava/lang/String;

    .line 544
    sget-object v2, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->wxOpenID:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/CreateChatroom$Req;->openId:Ljava/lang/String;

    .line 545
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v0

    .line 546
    .local v0, "isSendReqSucc":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWXGroup isSendReqSucc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public static native firstLogin(Ljava/lang/String;)V
.end method

.method public static getWXAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 166
    :goto_0
    return-object v2

    .line 158
    :cond_0
    const-string v2, "PackageInfo is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 159
    const-string v2, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto :goto_0

    .line 164
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 166
    const-string v2, ""

    goto :goto_0
.end method

.method public static getWXFunctionVersion(I)I
    .locals 1
    .param p0, "WXFunctionVersion"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 146
    const v0, 0x25000001

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getWXSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "android 5.0.8"

    return-object v0
.end method

.method public static getWXSupportAPi()I
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    return v0
.end method

.method public static handelIntent(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 637
    if-nez p0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const-string v2, "fromShemeActivity"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    const-string/jumbo v2, "wx_event_type"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 645
    .local v1, "eventType":I
    if-eqz v1, :cond_0

    .line 647
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 648
    const-string v2, "handle WeiXin req"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 649
    const-string/jumbo v2, "wx_event_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "eventData":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->platformReqEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v0    # "eventData":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 652
    const-string v2, "handle WeiXin resp"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 653
    const-string/jumbo v2, "wx_event_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .restart local v0    # "eventData":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->platformRespEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    .end local v0    # "eventData":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Intent from WeiXin, but unknown event type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isWXInstalled()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public static isWXSupportApi()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    return v0
.end method

.method public static joinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "unionId"    # Ljava/lang/String;
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v1, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;-><init>()V

    .line 552
    .local v1, "req":Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;
    const-string v2, "join_room"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->transaction:Ljava/lang/String;

    .line 553
    iput-object p0, v1, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->groupId:Ljava/lang/String;

    .line 554
    iput-object p1, v1, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->chatroomNickName:Ljava/lang/String;

    .line 555
    sget-object v2, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->wxOpenID:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelbiz/JoinChatroom$Req;->openId:Ljava/lang/String;

    .line 556
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v0

    .line 557
    .local v0, "isSendReqSucc":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "joinWXGroup isSendReqSucc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public static native loginFail(ILjava/lang/String;)V
.end method

.method public static onGetQrSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "nonceStr"    # Ljava/lang/String;
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "useMSDKLayout"    # Z

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetQrSignature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->getInstance()Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->onGetQrSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public static native platformReqEvent(Ljava/lang/String;)V
.end method

.method public static native platformRespEvent(Ljava/lang/String;)V
.end method

.method public static wxLogin()V
    .locals 9

    .prologue
    const/16 v8, 0x7d4

    .line 84
    const-string v5, "Launch Weixin Login"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v5, :cond_0

    .line 86
    const-string v5, "MSDK have not be init!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "flag"

    const-string v6, "2002"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v5, "code"

    const-string v6, "2002"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v5, "msg"

    const-string/jumbo v6, "wxapi is null"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "WGLogin_lauchWXPlatForm"

    invoke-virtual {v5, v6, v7, v1}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 94
    const-string v5, "MSDK have not be init!"

    invoke-static {v8, v5}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 97
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    .line 98
    .local v2, "req":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;
    const-string v4, "snsapi_userinfo,snsapi_friend,snsapi_message"

    .line 99
    .local v4, "scope":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/msdk/config/ConfigManager;->getWXScope(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "extScope":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extScope:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 102
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scope:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 109
    :cond_1
    iput-object v4, v2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 111
    const-string v5, "none"

    iput-object v5, v2, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v5, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v3

    .line 114
    .local v3, "ret":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "flag"

    const-string v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "code"

    const-string v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "msg"

    const-string v6, "send to wx"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v5

    const-string v6, "WGLogin_lauchWXPlatForm"

    invoke-virtual {v5, v3, v6, v1}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 120
    if-eqz v3, :cond_3

    .line 121
    const-string v5, "WeiXin sendReq succeed"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "ret":Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 123
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "ret":Z
    :cond_3
    const-string v5, "WeiXin sendReq faild"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v5, "wxsdk send login Req fail!"

    invoke-static {v8, v5}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
