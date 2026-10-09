.class public Lcom/tencent/liteav/basic/d/e;
.super Ljava/lang/Object;
.source "TXCOpenGlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/d/e$a;
    }
.end annotation


# static fields
.field public static a:Ljava/nio/FloatBuffer;

.field public static b:Ljava/nio/FloatBuffer;

.field public static c:Ljava/nio/FloatBuffer;

.field public static d:Ljava/nio/FloatBuffer;

.field public static e:Ljava/nio/FloatBuffer;

.field private static f:[F

.field private static g:[F

.field private static h:[F

.field private static i:[F

.field private static j:[F

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->f:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->g:[F

    .line 60
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->h:[F

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->i:[F

    .line 62
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->j:[F

    .line 63
    sget-object v0, Lcom/tencent/liteav/basic/d/e;->f:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/d/e;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->a:Ljava/nio/FloatBuffer;

    .line 64
    sget-object v0, Lcom/tencent/liteav/basic/d/e;->g:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/d/e;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->b:Ljava/nio/FloatBuffer;

    .line 65
    sget-object v0, Lcom/tencent/liteav/basic/d/e;->h:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/d/e;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->c:Ljava/nio/FloatBuffer;

    .line 66
    sget-object v0, Lcom/tencent/liteav/basic/d/e;->i:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/d/e;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->d:Ljava/nio/FloatBuffer;

    .line 67
    sget-object v0, Lcom/tencent/liteav/basic/d/e;->j:[F

    invoke-static {v0}, Lcom/tencent/liteav/basic/d/e;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/d/e;->e:Ljava/nio/FloatBuffer;

    .line 391
    const/4 v0, 0x2

    sput v0, Lcom/tencent/liteav/basic/d/e;->k:I

    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 61
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 62
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final a()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/tencent/liteav/basic/d/e;->k:I

    return v0
.end method

.method public static a(IIII)I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/liteav/basic/d/e;->a(IIIILjava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public static a(IIIILjava/nio/IntBuffer;)I
    .locals 10

    .prologue
    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/tencent/liteav/basic/d/e;->c()I

    move-result v9

    .line 106
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 107
    const/16 v7, 0x1401

    move v2, p2

    move v3, p0

    move v4, p1

    move v5, v1

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 108
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 109
    return v9
.end method

.method public static a(IIII[I)I
    .locals 9

    .prologue
    const v3, 0x812f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 82
    const/4 v2, 0x1

    invoke-static {v2, p4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 84
    aget v2, p4, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 86
    const/16 v2, 0x2802

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    const/16 v2, 0x2803

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 88
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 89
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 90
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v2, p2

    move v3, p0

    move v4, p1

    move v5, v1

    move v6, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 92
    aget v0, p4, v1

    return v0
.end method

.method public static a(II[I)I
    .locals 5

    .prologue
    const v4, 0x88eb

    const/4 v3, 0x0

    .line 167
    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    .line 169
    const/4 v1, 0x1

    invoke-static {v1, p2, v3}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    .line 170
    aget v1, p2, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 171
    const/4 v1, 0x0

    const v2, 0x88e9

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 173
    invoke-static {v4, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 175
    aget v0, p2, v3

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 117
    new-array v0, v6, [I

    .line 118
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 119
    invoke-static {v6, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 120
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 123
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 125
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 127
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 136
    :goto_0
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_0
    aget v0, v0, v2

    return v0

    .line 132
    :cond_1
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    invoke-static {v3, v2, v2, v2, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 134
    aput p1, v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 306
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 307
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 308
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 309
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 310
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 311
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 312
    const-string v2, "Load Shader Failed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compilation\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 322
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 323
    const v1, 0x8b31

    invoke-static {p0, v1}, Lcom/tencent/liteav/basic/d/e;->a(Ljava/lang/String;I)I

    move-result v3

    .line 324
    if-nez v3, :cond_0

    .line 325
    const-string v1, "Load Program"

    const-string v2, "Vertex Shader Failed"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return v0

    .line 328
    :cond_0
    const v1, 0x8b30

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/d/e;->a(Ljava/lang/String;I)I

    move-result v4

    .line 329
    if-nez v4, :cond_1

    .line 330
    const-string v1, "Load Program"

    const-string v2, "Fragment Shader Failed"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 336
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 337
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 339
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 341
    const v5, 0x8b82

    invoke-static {v1, v5, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 342
    aget v2, v2, v0

    if-gtz v2, :cond_2

    .line 343
    const-string v1, "Load Program"

    const-string v2, "Linking Failed"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 347
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    .line 348
    goto :goto_0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 96
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 70
    sput p0, Lcom/tencent/liteav/basic/d/e;->k:I

    .line 71
    return-void
.end method

.method public static b()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 179
    new-array v0, v1, [I

    .line 180
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 183
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 184
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 186
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 188
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 190
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 192
    aget v0, v0, v3

    return v0
.end method

.method public static c()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 206
    new-array v0, v1, [I

    .line 207
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 208
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 209
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 211
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 213
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 215
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 217
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 218
    aget v0, v0, v3

    return v0
.end method
