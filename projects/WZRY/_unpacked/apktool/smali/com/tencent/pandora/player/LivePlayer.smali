.class public Lcom/tencent/pandora/player/LivePlayer;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/rtmp1/ITXLivePlayListener;


# static fields
.field private static final DEFUALT_HEIGHT:I = 0x2d0

.field private static final DEFUALT_WIDTH:I = 0x500

.field private static final FLV:I = 0x2

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final M3U8:I = 0x3

.field private static final MP4:I = 0x4

.field private static final NET_STATUS_MSG_LOG:I = 0x3e8

.field private static final RTMP:I = 0x1

.field private static s_FboID:I

.field private static s_FboTexID:I

.field private static s_Height:I

.field private static s_LiveConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

.field private static s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

.field private static s_PlayType:I

.field private static s_RecreateTex:Z

.field private static s_STMatirx:[F

.field private static s_Square:Lcom/tencent/pandora/player/Square;

.field private static s_Surface:Landroid/view/Surface;

.field private static s_SurfaceTex:Landroid/graphics/SurfaceTexture;

.field private static s_TextureID:I

.field private static s_UpdateSurface:Z

.field private static s_Url:Ljava/lang/String;

.field private static s_VodConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

.field private static s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

.field private static s_Width:I

.field private static s_this:Lcom/tencent/pandora/player/LivePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    .line 36
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    .line 37
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    .line 38
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LiveConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    .line 41
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    .line 43
    sput v1, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    .line 44
    sput v1, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    .line 45
    sput v1, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    .line 46
    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    .line 47
    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    .line 50
    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    .line 51
    sput-boolean v2, Lcom/tencent/pandora/player/LivePlayer;->s_UpdateSurface:Z

    .line 53
    sput v1, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_STMatirx:[F

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    .line 57
    sput-boolean v2, Lcom/tencent/pandora/player/LivePlayer;->s_RecreateTex:Z

    .line 61
    const-string v0, "LivePlayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativePostEvent(IIILjava/lang/String;)V
.end method

.method public static pandora_create_fbo()V
    .locals 12

    .prologue
    const v11, 0x46180400    # 9729.0f

    const v10, 0x8d40

    const/4 v5, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 167
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    if-lez v2, :cond_0

    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    if-gtz v2, :cond_1

    .line 169
    :cond_0
    const/16 v2, 0x500

    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    .line 170
    const/16 v2, 0x2d0

    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    .line 173
    :cond_1
    const-string v2, "pandora"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pandora_create_fbo ======================= width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-array v9, v5, [I

    .line 176
    .local v9, "temp":[I
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    if-lez v2, :cond_2

    .line 178
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    aput v2, v9, v1

    .line 179
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 181
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    aput v2, v9, v1

    .line 182
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 186
    :cond_2
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    .line 187
    aget v2, v9, v1

    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    .line 189
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 190
    aget v2, v9, v1

    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    .line 192
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    invoke-static {v10, v2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 193
    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 194
    const/16 v2, 0x1907

    sget v3, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    sget v4, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 196
    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 197
    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 198
    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 199
    const/16 v2, 0x2801

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 201
    const v2, 0x8ce0

    sget v3, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    .line 202
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 203
    invoke-static {v10, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 205
    return-void
.end method

.method public static pandora_player_close()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 313
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    if-eqz v1, :cond_1

    .line 315
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V

    .line 316
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXLivePlayer;->stopPlay(Z)I

    .line 327
    :goto_0
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Square:Lcom/tencent/pandora/player/Square;

    invoke-virtual {v1}, Lcom/tencent/pandora/player/Square;->deleteProgram()V

    .line 329
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    .line 330
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    .line 331
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_LiveConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    .line 332
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_VodConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    .line 333
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    .line 334
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_Surface:Landroid/view/Surface;

    .line 335
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_Square:Lcom/tencent/pandora/player/Square;

    .line 336
    sput-object v3, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    .line 337
    sput-boolean v2, Lcom/tencent/pandora/player/LivePlayer;->s_UpdateSurface:Z

    .line 338
    const-string v1, ""

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    .line 339
    sput v5, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    .line 341
    new-array v0, v4, [I

    .line 342
    .local v0, "texs":[I
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    aput v1, v0, v2

    .line 343
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 344
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    aput v1, v0, v2

    .line 345
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 346
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    aput v1, v0, v2

    .line 347
    invoke-static {v4, v0, v2}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    .line 349
    sput v5, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    .line 350
    sput v5, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    .line 351
    sput v5, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    .line 352
    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    .line 353
    sput v2, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    .line 354
    sput-boolean v2, Lcom/tencent/pandora/player/LivePlayer;->s_RecreateTex:Z

    .line 355
    const-string v1, "pandora"

    const-string v2, "pandora_player_close ======================="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    return-void

    .line 318
    .end local v0    # "texs":[I
    :cond_1
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXVodPlayer;->setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V

    .line 321
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXVodPlayer;->stopPlay(Z)I

    goto :goto_0
.end method

.method public static pandora_player_get_texture()I
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_FboTexID:I

    return v0
.end method

.method public static pandora_player_init()V
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x0

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x1

    const v2, 0x8d65

    .line 105
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    if-gtz v1, :cond_1

    .line 162
    .local v0, "texs":[I
    :cond_0
    :goto_0
    return-void

    .line 108
    .end local v0    # "texs":[I
    :cond_1
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    if-nez v1, :cond_0

    .line 112
    new-array v0, v3, [I

    .line 114
    .restart local v0    # "texs":[I
    invoke-static {v3, v0, v5}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 115
    aget v1, v0, v5

    sput v1, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    .line 118
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 119
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 121
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    .line 124
    const/16 v1, 0x2802

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 126
    const/16 v1, 0x2803

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 130
    new-instance v1, Lcom/tencent/pandora/player/LivePlayer;

    invoke-direct {v1}, Lcom/tencent/pandora/player/LivePlayer;-><init>()V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    .line 131
    new-instance v1, Landroid/graphics/SurfaceTexture;

    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    .line 132
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 133
    new-instance v1, Landroid/view/Surface;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Surface:Landroid/view/Surface;

    .line 135
    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 137
    new-instance v1, Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    .line 138
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_Surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 139
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;->setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V

    .line 140
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePlayer;->enableHardwareDecode(Z)Z

    .line 142
    new-instance v1, Lcom/tencent/rtmp1/TXLivePlayConfig;

    invoke-direct {v1}, Lcom/tencent/rtmp1/TXLivePlayConfig;-><init>()V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LiveConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    .line 143
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_LiveConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;->setConfig(Lcom/tencent/rtmp1/TXLivePlayConfig;)V

    .line 158
    :goto_1
    new-instance v1, Lcom/tencent/pandora/player/Square;

    invoke-direct {v1}, Lcom/tencent/pandora/player/Square;-><init>()V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Square:Lcom/tencent/pandora/player/Square;

    goto/16 :goto_0

    .line 148
    :cond_2
    new-instance v1, Lcom/tencent/rtmp1/TXVodPlayer;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/tencent/rtmp1/TXVodPlayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    .line 149
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_Surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXVodPlayer;->setSurface(Landroid/view/Surface;)V

    .line 150
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_this:Lcom/tencent/pandora/player/LivePlayer;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXVodPlayer;->setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V

    .line 151
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXVodPlayer;->enableHardwareDecode(Z)Z

    .line 153
    new-instance v1, Lcom/tencent/rtmp1/TXVodPlayConfig;

    invoke-direct {v1}, Lcom/tencent/rtmp1/TXVodPlayConfig;-><init>()V

    sput-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    .line 154
    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    sget-object v2, Lcom/tencent/pandora/player/LivePlayer;->s_VodConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXVodPlayer;->setConfig(Lcom/tencent/rtmp1/TXVodPlayConfig;)V

    goto :goto_1
.end method

.method public static pandora_player_pause()V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    if-eqz v0, :cond_1

    .line 291
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePlayer;->pause()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXVodPlayer;->pause()V

    goto :goto_0
.end method

.method public static pandora_player_resume()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXLivePlayer;->resume()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/TXVodPlayer;->resume()V

    goto :goto_0
.end method

.method public static pandora_player_seek(I)V
    .locals 1
    .param p0, "seekTime"    # I

    .prologue
    .line 236
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp1/TXLivePlayer;->seek(I)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp1/TXVodPlayer;->seek(I)V

    goto :goto_0
.end method

.method public static pandora_player_set_url(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 70
    sput-object p0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, "rtmp:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    .line 99
    :goto_0
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======================== s_PlayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, ".flv"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    sput v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 82
    const/4 v0, 0x3

    sput v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    goto :goto_0

    .line 84
    :cond_2
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 86
    sput v3, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    goto :goto_0

    .line 88
    :cond_3
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 90
    sput v3, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, -0x1

    sput v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    .line 95
    const-string v0, "pandora"

    const-string/jumbo v1, "url is error, the type only support rtmp, flv, m3u8, mp4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pandora_player_start(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-static {p0}, Lcom/tencent/pandora/player/LivePlayer;->pandora_player_set_url(Ljava/lang/String;)V

    .line 214
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    if-gtz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/tencent/pandora/player/LivePlayer;->pandora_player_init()V

    .line 219
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    if-ne v0, v2, :cond_1

    .line 221
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;->startPlay(Ljava/lang/String;I)I

    goto :goto_0

    .line 223
    :cond_1
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_PlayType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 225
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_LivePlayer:Lcom/tencent/rtmp1/TXLivePlayer;

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/rtmp1/TXLivePlayer;->startPlay(Ljava/lang/String;I)I

    goto :goto_0

    .line 229
    :cond_2
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_VodPlayer:Lcom/tencent/rtmp1/TXVodPlayer;

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_Url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXVodPlayer;->startPlay(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pandora_player_update_textures()V
    .locals 5

    .prologue
    const v4, 0x8d40

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 255
    sget-boolean v0, Lcom/tencent/pandora/player/LivePlayer;->s_UpdateSurface:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 257
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    if-ltz v0, :cond_0

    sget-boolean v0, Lcom/tencent/pandora/player/LivePlayer;->s_RecreateTex:Z

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    invoke-static {}, Lcom/tencent/pandora/player/LivePlayer;->pandora_create_fbo()V

    .line 260
    sput-boolean v3, Lcom/tencent/pandora/player/LivePlayer;->s_RecreateTex:Z

    .line 264
    :cond_1
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 265
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_SurfaceTex:Landroid/graphics/SurfaceTexture;

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_STMatirx:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 267
    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 268
    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 270
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_FboID:I

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    .line 272
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 273
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 274
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 275
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 276
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 277
    sget v0, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    sget v1, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 279
    sget-object v0, Lcom/tencent/pandora/player/LivePlayer;->s_Square:Lcom/tencent/pandora/player/Square;

    sget-object v1, Lcom/tencent/pandora/player/LivePlayer;->s_STMatirx:[F

    sget v2, Lcom/tencent/pandora/player/LivePlayer;->s_TextureID:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/pandora/player/Square;->draw([FI)V

    .line 280
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 281
    invoke-static {v4, v3}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 285
    :cond_2
    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 363
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/pandora/player/LivePlayer;->s_UpdateSurface:Z

    .line 365
    return-void
.end method

.method public onNetStatus(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 369
    const-string v3, "%-14s %-14s %-12s\n%-14s %-14s %-12s\n%-14s %-14s %-12s\n%-14s %-12s %-12s"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPU:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CPU_USAGE"

    .line 370
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RES:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "VIDEO_WIDTH"

    .line 371
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "VIDEO_HEIGHT"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SPD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NET_SPEED"

    .line 372
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JIT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NET_JITTER"

    .line 373
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "VIDEO_FPS"

    .line 374
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ARA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AUDIO_BITRATE"

    .line 375
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QUE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CODEC_CACHE"

    .line 376
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CACHE_SIZE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DRP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CODEC_DROP_CNT"

    .line 377
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DROP_SIZE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VRA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "VIDEO_BITRATE"

    .line 378
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SVR:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SERVER_IP"

    .line 379
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AVRA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SET_VIDEO_BITRATE"

    .line 380
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PLA:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EVT_PLAYABLE_DURATION"

    .line 381
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 369
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "str":Ljava/lang/String;
    const/16 v3, 0x3e8

    invoke-static {v3, v8, v8, v1}, Lcom/tencent/pandora/player/LivePlayer;->nativePostEvent(IIILjava/lang/String;)V

    .line 386
    const-string v3, "VIDEO_WIDTH"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 387
    .local v2, "width":I
    const-string v3, "VIDEO_HEIGHT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, "height":I
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetStatus RESOLUTION================="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v3, 0x7d9

    const-string v4, ""

    invoke-static {v3, v2, v0, v4}, Lcom/tencent/pandora/player/LivePlayer;->nativePostEvent(IIILjava/lang/String;)V

    .line 392
    return-void
.end method

.method public onPlayEvent(ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "event"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 397
    const/16 v6, 0x7d9

    if-ne p1, v6, :cond_5

    .line 399
    const-string v6, "EVT_PARAM1"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 400
    .local v5, "width":I
    const-string v6, "EVT_PARAM2"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "height":I
    const-string v6, "pandora"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPlayEvent PLAY_EVT_CHANGE_RESOLUTION================="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-nez v5, :cond_0

    .line 406
    const/16 v5, 0x500

    .line 408
    :cond_0
    if-nez v0, :cond_1

    .line 409
    const/16 v0, 0x2d0

    .line 412
    :cond_1
    sget v6, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    if-gtz v6, :cond_2

    sget v6, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    if-lez v6, :cond_4

    :cond_2
    sget v6, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    if-ne v6, v5, :cond_3

    sget v6, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    if-eq v6, v0, :cond_4

    .line 414
    :cond_3
    const-string v6, "pandora"

    const-string v7, "onPlayEvent s_RecreateTex = true================="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sput-boolean v9, Lcom/tencent/pandora/player/LivePlayer;->s_RecreateTex:Z

    .line 418
    :cond_4
    sput v5, Lcom/tencent/pandora/player/LivePlayer;->s_Width:I

    .line 419
    sput v0, Lcom/tencent/pandora/player/LivePlayer;->s_Height:I

    .line 421
    const-string v6, "PLAY_EVT_CHANGE_RESOLUTION"

    invoke-static {p1, v5, v0, v6}, Lcom/tencent/pandora/player/LivePlayer;->nativePostEvent(IIILjava/lang/String;)V

    .line 447
    .end local v0    # "height":I
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 423
    :cond_5
    const/16 v6, 0x7d5

    if-ne p1, v6, :cond_6

    .line 426
    const-string v6, "EVT_PLAYABLE_DURATION"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 427
    .local v1, "loadingProgress":I
    const-string v6, "EVT_PLAY_PROGRESS"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 428
    .local v3, "playProgress":I
    const-string v6, "EVT_PLAY_DURATION"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 430
    .local v4, "totalProgress":I
    const-string/jumbo v6, "{\"PLAYABLE_DURATION\":\"%d\",\"EVT_PLAY_PROGRESS\":\"%d\",\"EVT_PLAY_DURATION\":\"%d\"}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 430
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "msg":Ljava/lang/String;
    invoke-static {p1, v10, v10, v2}, Lcom/tencent/pandora/player/LivePlayer;->nativePostEvent(IIILjava/lang/String;)V

    goto :goto_0

    .line 443
    .end local v1    # "loadingProgress":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "playProgress":I
    .end local v4    # "totalProgress":I
    :cond_6
    const-string v6, "EVT_MSG"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2    # "msg":Ljava/lang/String;
    invoke-static {p1, v10, v10, v2}, Lcom/tencent/pandora/player/LivePlayer;->nativePostEvent(IIILjava/lang/String;)V

    goto :goto_0
.end method
