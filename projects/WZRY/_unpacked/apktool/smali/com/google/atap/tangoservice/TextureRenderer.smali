.class public Lcom/google/atap/tangoservice/TextureRenderer;
.super Ljava/lang/Thread;
.source "TextureRenderer.java"


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "TextureRenderer"


# instance fields
.field private final fss:Ljava/lang/String;

.field private volatile mDone:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mProgram:I

.field private mSTexture:Landroid/graphics/SurfaceTexture;

.field private mTexCoord:Ljava/nio/FloatBuffer;

.field private mTextures:[I

.field private final mUpdateLock:Ljava/lang/Object;

.field private volatile mUpdateViewPort:Z

.field private mVertex:Ljava/nio/FloatBuffer;

.field private mView:Lcom/google/atap/tangoservice/TangoTextureCameraPreview;

.field private volatile mViewPortHeight:I

.field private volatile mViewPortWidth:I

.field private final vss:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/TangoTextureCameraPreview;)V
    .locals 6
    .param p1, "view"    # Lcom/google/atap/tangoservice/TangoTextureCameraPreview;

    .prologue
    const/16 v5, 0x20

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortHeight:I

    .line 47
    iput v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortWidth:I

    .line 49
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    .line 51
    const-string v2, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4(vPosition.x, vPosition.y, 0.0, 1.0);\n}"

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->vss:Ljava/lang/String;

    .line 60
    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->fss:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mView:Lcom/google/atap/tangoservice/TangoTextureCameraPreview;

    .line 76
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 77
    .local v1, "vtmp":[F
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    .line 78
    .local v0, "ttmp":[F
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mVertex:Ljava/nio/FloatBuffer;

    .line 80
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 81
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 84
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    return-void

    .line 76
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    .line 265
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 268
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 245
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 246
    const-string v1, "TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 252
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 253
    const-string v1, "TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 320
    new-array v5, v4, [I

    .line 321
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 322
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->getConfig()[I

    move-result-object v2

    .line 323
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 325
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 327
    aget-object v0, v3, v6

    .line 329
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private destroyGL()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 259
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 260
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 261
    return-void
.end method

.method private drawQuad()V
    .locals 13

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 148
    iget v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mProgram:I

    const-string/jumbo v6, "vPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "ph":I
    iget v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mProgram:I

    const-string/jumbo v6, "vTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    .line 150
    .local v11, "tch":I
    iget v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mProgram:I

    const-string v6, "sTexture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    .line 152
    .local v12, "th":I
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 153
    const v5, 0x8d65

    iget-object v6, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    aget v6, v6, v3

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 154
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 155
    iget-object v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 156
    iget-object v10, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    move v5, v11

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 158
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 159
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 160
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 161
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private initGL()V
    .locals 7

    .prologue
    .line 274
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 276
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 277
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 278
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 279
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 283
    .local v1, "version":[I
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 285
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 289
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 290
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglConfig not initialized "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/atap/tangoservice/TextureRenderer;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 295
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 297
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_6

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 299
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_5

    .line 300
    const-string v2, "TextureRenderer"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "error":I
    :cond_4
    return-void

    .line 303
    .restart local v0    # "error":I
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    .end local v0    # "error":I
    :cond_6
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 308
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 309
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vss"    # Ljava/lang/String;
    .param p2, "fss"    # Ljava/lang/String;

    .prologue
    const v8, 0x8b81

    const/4 v7, 0x0

    .line 210
    const v4, 0x8b31

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 211
    .local v3, "vshader":I
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 212
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 213
    const/4 v4, 0x1

    new-array v0, v4, [I

    .line 214
    .local v0, "compiled":[I
    invoke-static {v3, v8, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 215
    aget v4, v0, v7

    if-nez v4, :cond_0

    .line 216
    const-string v4, "Shader"

    const-string v5, "Could not compile vshader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v4, "Shader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile vshader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 218
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 220
    const/4 v3, 0x0

    .line 223
    :cond_0
    const v4, 0x8b30

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 224
    .local v1, "fshader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 225
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 226
    invoke-static {v1, v8, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 227
    aget v4, v0, v7

    if-nez v4, :cond_1

    .line 228
    const-string v4, "Shader"

    const-string v5, "Could not compile fshader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v4, "Shader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile fshader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 230
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 232
    const/4 v1, 0x0

    .line 235
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 236
    .local v2, "program":I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 237
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 238
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 240
    return v2
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 314
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 315
    .local v0, "attribList":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 314
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mDone:Z

    .line 351
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getTextureId()I
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, -0x1

    .line 172
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initTexture()I
    .locals 4

    .prologue
    .line 181
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    .line 182
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 183
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->checkGlError()V

    .line 184
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mTextures:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 185
    .local v0, "texture":I
    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->checkGlError()V

    .line 187
    const v1, 0x8d65

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 189
    const v1, 0x8d65

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 191
    const v1, 0x8d65

    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 193
    const v1, 0x8d65

    const/16 v2, 0x2800

    const/16 v3, 0x2600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 195
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->checkEglError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return v0

    .line 181
    .end local v0    # "texture":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onFrameAvailable()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->initGL()V

    .line 117
    const-string v1, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4(vPosition.x, vPosition.y, 0.0, 1.0);\n}"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    invoke-direct {p0, v1, v2}, Lcom/google/atap/tangoservice/TextureRenderer;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mProgram:I

    .line 118
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 119
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->checkGlError()V

    .line 121
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->initTexture()I

    .line 123
    iget-object v2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 126
    :try_start_1
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->checkCurrent()V

    .line 131
    iget-boolean v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateViewPort:Z

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateViewPort:Z

    .line 133
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortWidth:I

    iget v5, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortHeight:I

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 135
    :cond_1
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 136
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mView:Lcom/google/atap/tangoservice/TangoTextureCameraPreview;

    invoke-virtual {v1}, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->updateTexture()V

    .line 137
    iget v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->drawQuad()V

    .line 139
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const-string v1, "TextureRenderer"

    const-string v3, "eglSwapBuffers failed "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TextureRenderer;->destroyGL()V

    .line 145
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    .line 95
    return-void
.end method

.method public setViewport(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mUpdateViewPort:Z

    .line 106
    iput p1, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortWidth:I

    .line 107
    iput p2, p0, Lcom/google/atap/tangoservice/TextureRenderer;->mViewPortHeight:I

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
