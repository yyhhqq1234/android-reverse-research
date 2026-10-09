.class public Lcom/tencent/pandora/player/Square;
.super Ljava/lang/Object;
.source "Square.java"


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field static final positionData:[F

.field static final texCoordData:[F


# instance fields
.field color:[F

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mColorHandle:I

.field private mPositionHandle:I

.field private mProgram:I

.field private mSTMatrixHandle:I

.field private mSTextureHandle:I

.field private mTexHandle:I

.field private texCoordBuffer:Ljava/nio/FloatBuffer;

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/pandora/player/Square;->positionData:[F

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/pandora/player/Square;->texCoordData:[F

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v5, "uniform mat4 uSTMatrix;\nattribute vec2 vPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(vPosition, 0, 1);\nvTexCoord = (uSTMatrix * vec4(aTexCoord, 0, 1)).xy;\n}\n"

    iput-object v5, p0, Lcom/tencent/pandora/player/Square;->vertexShaderCode:Ljava/lang/String;

    .line 24
    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    iput-object v5, p0, Lcom/tencent/pandora/player/Square;->fragmentShaderCode:Ljava/lang/String;

    .line 61
    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/tencent/pandora/player/Square;->color:[F

    .line 67
    sget-object v5, Lcom/tencent/pandora/player/Square;->positionData:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/pandora/player/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/tencent/pandora/player/Square;->positionData:[F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    sget-object v5, Lcom/tencent/pandora/player/Square;->texCoordData:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 74
    .local v3, "tcd":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/pandora/player/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 76
    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    sget-object v6, Lcom/tencent/pandora/player/Square;->texCoordData:[F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    const v5, 0x8b31

    const-string/jumbo v6, "uniform mat4 uSTMatrix;\nattribute vec2 vPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(vPosition, 0, 1);\nvTexCoord = (uSTMatrix * vec4(aTexCoord, 0, 1)).xy;\n}\n"

    invoke-virtual {p0, v5, v6}, Lcom/tencent/pandora/player/Square;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 83
    .local v4, "vertexShader":I
    const v5, 0x8b30

    const-string v6, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    invoke-virtual {p0, v5, v6}, Lcom/tencent/pandora/player/Square;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    .line 88
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    invoke-static {v5, v4}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 89
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    invoke-static {v5, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 92
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    invoke-static {v5}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    .line 93
    new-array v2, v8, [I

    .line 94
    .local v2, "status":[I
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    const v6, 0x8b82

    invoke-static {v5, v6, v2, v7}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 96
    aget v5, v2, v7

    if-eq v5, v8, :cond_0

    .line 98
    const-string v5, "pandora"

    const-string v6, "glGetProgramiv is error ===================== "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    const-string/jumbo v6, "vPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/pandora/player/Square;->mPositionHandle:I

    .line 102
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    const-string v6, "aTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/pandora/player/Square;->mTexHandle:I

    .line 104
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    const-string/jumbo v6, "uSTMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/pandora/player/Square;->mSTMatrixHandle:I

    .line 105
    iget v5, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    const-string v6, "sTexture"

    invoke-static {v5, v6}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/pandora/player/Square;->mSTextureHandle:I

    .line 106
    return-void

    .line 61
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35b5b6
        0x3f65e5e6
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "glOperation"    # Ljava/lang/String;

    .prologue
    .line 133
    :goto_0
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 134
    const-string v1, "pandora"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    .line 111
    return-void
.end method

.method public draw([FI)V
    .locals 6
    .param p1, "stMatirx"    # [F
    .param p2, "texId"    # I

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 142
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 145
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 146
    const v0, 0x8d65

    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 148
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mSTextureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 149
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mSTMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p1, v3}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 151
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 152
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 157
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mTexHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 158
    iget v0, p0, Lcom/tencent/pandora/player/Square;->mTexHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/tencent/pandora/player/Square;->texCoordBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 162
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 163
    return-void
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v1

    .line 117
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 118
    const-string v2, "glShaderSource"

    invoke-static {v2}, Lcom/tencent/pandora/player/Square;->checkGlError(Ljava/lang/String;)V

    .line 119
    invoke-static {v1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    .line 120
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 121
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 123
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 125
    const-string v2, "pandora"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compileStatus is error ===================== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const-string v2, "glCompileShader"

    invoke-static {v2}, Lcom/tencent/pandora/player/Square;->checkGlError(Ljava/lang/String;)V

    .line 128
    return v1
.end method
