.class Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;
.super Ljava/lang/Object;
.source "TangoCameraPreview.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/TangoCameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainRenderer"
.end annotation


# instance fields
.field private final fss:Ljava/lang/String;

.field private mProgram:I

.field private mTexCoord:Ljava/nio/FloatBuffer;

.field private mTextures:[I

.field private mUpdateST:Z

.field private mVertex:Ljava/nio/FloatBuffer;

.field private mView:Lcom/google/atap/tangoservice/TangoCameraPreview;

.field final synthetic this$0:Lcom/google/atap/tangoservice/TangoCameraPreview;

.field private final vss:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/TangoCameraPreview;Lcom/google/atap/tangoservice/TangoCameraPreview;)V
    .locals 6
    .param p2, "view"    # Lcom/google/atap/tangoservice/TangoCameraPreview;

    .prologue
    const/16 v5, 0x20

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->this$0:Lcom/google/atap/tangoservice/TangoCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v2, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4(vPosition.x, vPosition.y, 0.0, 1.0);\n}"

    iput-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->vss:Ljava/lang/String;

    .line 56
    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    iput-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->fss:Ljava/lang/String;

    .line 70
    iput-boolean v4, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mUpdateST:Z

    .line 87
    iput-object p2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mView:Lcom/google/atap/tangoservice/TangoCameraPreview;

    .line 88
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 89
    .local v1, "vtmp":[F
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    .line 90
    .local v0, "ttmp":[F
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mVertex:Ljava/nio/FloatBuffer;

    .line 92
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 93
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 96
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 97
    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    return-void

    .line 88
    nop

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

    .line 89
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

.method private deleteTex()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 161
    return-void
.end method

.method private declared-synchronized initTex()V
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    .line 147
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 148
    const v0, 0x8d65

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    const v0, 0x8d65

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 151
    const v0, 0x8d65

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 153
    const v0, 0x8d65

    const/16 v1, 0x2801

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 155
    const v0, 0x8d65

    const/16 v1, 0x2800

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vss"    # Ljava/lang/String;
    .param p2, "fss"    # Ljava/lang/String;

    .prologue
    const v8, 0x8b81

    const/4 v7, 0x0

    .line 168
    const v4, 0x8b31

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    .line 169
    .local v3, "vshader":I
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 170
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 171
    const/4 v4, 0x1

    new-array v0, v4, [I

    .line 172
    .local v0, "compiled":[I
    invoke-static {v3, v8, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 173
    aget v4, v0, v7

    if-nez v4, :cond_0

    .line 174
    const-string v4, "Shader"

    const-string v5, "Could not compile vshader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "Shader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile vshader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 176
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 178
    const/4 v3, 0x0

    .line 181
    :cond_0
    const v4, 0x8b30

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 182
    .local v1, "fshader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 183
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 184
    invoke-static {v1, v8, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 185
    aget v4, v0, v7

    if-nez v4, :cond_1

    .line 186
    const-string v4, "Shader"

    const-string v5, "Could not compile fshader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "Shader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not compile fshader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 190
    const/4 v1, 0x0

    .line 193
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 194
    .local v2, "program":I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 195
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 196
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 198
    return v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mUpdateST:Z

    .line 108
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->deleteTex()V

    .line 109
    return-void
.end method

.method public declared-synchronized getTextureId()I
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 112
    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mUpdateST:Z

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mView:Lcom/google/atap/tangoservice/TangoCameraPreview;

    invoke-virtual {v5}, Lcom/google/atap/tangoservice/TangoCameraPreview;->updateTexture()V

    .line 117
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mUpdateST:Z

    .line 119
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 123
    iget v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mProgram:I

    const-string/jumbo v6, "vPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "ph":I
    iget v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mProgram:I

    const-string/jumbo v6, "vTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    .line 125
    .local v11, "tch":I
    iget v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mProgram:I

    const-string v6, "sTexture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    .line 127
    .local v12, "th":I
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 128
    const v5, 0x8d65

    iget-object v6, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTextures:[I

    aget v6, v6, v3

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 129
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 131
    iget-object v5, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 132
    iget-object v10, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    move v5, v11

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 135
    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 138
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 139
    return-void

    .line 119
    .end local v0    # "ph":I
    .end local v11    # "tch":I
    .end local v12    # "th":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized onFrameAvailable()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mUpdateST:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 143
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    invoke-direct {p0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->initTex()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v1, v1, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 103
    const-string v0, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4(vPosition.x, vPosition.y, 0.0, 1.0);\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    invoke-direct {p0, v0, v1}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->mProgram:I

    .line 104
    return-void
.end method
