.class public Lcom/tencent/liteav/beauty/b/v;
.super Lcom/tencent/liteav/basic/d/c;
.source "TXCGPUWatermarkFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/beauty/b/v$a;
    }
.end annotation


# static fields
.field private static final w:[S

.field private static final x:[F

.field private static final y:[F


# instance fields
.field private A:Ljava/lang/String;

.field private r:[Lcom/tencent/liteav/beauty/b/v$a;

.field private s:Lcom/tencent/liteav/beauty/b/v$a;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/liteav/beauty/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:I

.field private z:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/beauty/b/v;->w:[S

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/liteav/beauty/b/v;->x:[F

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/liteav/beauty/b/v;->y:[F

    return-void

    .line 35
    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x0s
        0x2s
        0x0s
        0x3s
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 37
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/tencent/liteav/basic/d/c;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->s:Lcom/tencent/liteav/beauty/b/v$a;

    .line 26
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->t:Ljava/util/List;

    .line 27
    iput-boolean v2, p0, Lcom/tencent/liteav/beauty/b/v;->u:Z

    .line 28
    iput v3, p0, Lcom/tencent/liteav/beauty/b/v;->v:I

    .line 39
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->z:Ljava/nio/ShortBuffer;

    .line 40
    const-string v0, "GPUWatermark"

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->A:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/tencent/liteav/beauty/b/v;->w:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->z:Ljava/nio/ShortBuffer;

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->z:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/tencent/liteav/beauty/b/v;->w:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->z:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    iput-boolean v3, p0, Lcom/tencent/liteav/beauty/b/v;->o:Z

    .line 57
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    if-eqz v0, :cond_2

    move v0, v1

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v2, v2, v0

    iput-object v4, v2, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    .line 210
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v2, v2, v0

    iput-object v4, v2, Lcom/tencent/liteav/beauty/b/v$a;->c:Landroid/graphics/Bitmap;

    .line 211
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aput-object v4, v2, v0

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    iput-object v4, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    .line 216
    return-void
.end method


# virtual methods
.method public a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    .line 221
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 222
    invoke-virtual {p0}, Lcom/tencent/liteav/beauty/b/v;->k()V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 225
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 229
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 230
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 231
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 232
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 233
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 234
    invoke-virtual {p0}, Lcom/tencent/liteav/beauty/b/v;->i()V

    .line 235
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 237
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 238
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 239
    iget-boolean v0, p0, Lcom/tencent/liteav/beauty/b/v;->u:Z

    if-eqz v0, :cond_3

    .line 240
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 241
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 242
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 244
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, v6

    if-eqz v0, :cond_1

    .line 246
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 247
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 248
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/tencent/liteav/beauty/b/v$a;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 249
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 250
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/tencent/liteav/beauty/b/v$a;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 251
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 252
    const/4 v0, 0x4

    sget-object v1, Lcom/tencent/liteav/beauty/b/v;->w:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/v;->z:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 253
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 254
    iget v0, p0, Lcom/tencent/liteav/beauty/b/v;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 244
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 257
    :cond_2
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 259
    :cond_3
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 260
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;FFF)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/liteav/beauty/b/v$a;

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, v5

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    new-instance v1, Lcom/tencent/liteav/beauty/b/v$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/liteav/beauty/b/v$a;-><init>(Lcom/tencent/liteav/beauty/b/v;Lcom/tencent/liteav/beauty/b/v$1;)V

    aput-object v1, v0, v5

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/beauty/b/v;->a(Landroid/graphics/Bitmap;FFFI)V

    .line 162
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->s:Lcom/tencent/liteav/beauty/b/v$a;

    .line 163
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;FFFI)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v7, 0xde1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 83
    if-nez p1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " water mark!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/liteav/beauty/b/v$a;->c:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    const/4 v1, 0x0

    aput-object v1, v0, p5

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v3, v3, p5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    array-length v3, v3

    if-lt p5, v3, :cond_4

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->A:Ljava/lang/String;

    const-string v1, "index is too large for mSzWaterMark!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_4
    sget-object v3, Lcom/tencent/liteav/beauty/b/v;->x:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v4, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v4, v4, p5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v4, Lcom/tencent/liteav/beauty/b/v$a;->a:Ljava/nio/FloatBuffer;

    .line 101
    sget-object v3, Lcom/tencent/liteav/beauty/b/v;->x:[F

    array-length v3, v3

    new-array v3, v3, [F

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 105
    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/tencent/liteav/beauty/b/v;->e:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/tencent/liteav/beauty/b/v;->f:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 106
    cmpg-float v5, p2, v0

    if-gez v5, :cond_7

    move p2, v0

    .line 107
    :cond_5
    :goto_1
    cmpg-float v5, p3, v0

    if-gez v5, :cond_8

    move p3, v0

    .line 108
    :cond_6
    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    sub-float/2addr v0, v1

    aput v0, v3, v6

    .line 109
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p3

    sub-float v0, v1, v0

    aput v0, v3, v2

    .line 111
    const/4 v0, 0x2

    aget v1, v3, v6

    aput v1, v3, v0

    .line 112
    const/4 v0, 0x3

    aget v1, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v3, v0

    .line 114
    const/4 v0, 0x4

    aget v1, v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p4

    add-float/2addr v1, v4

    aput v1, v3, v0

    .line 115
    const/4 v0, 0x5

    const/4 v1, 0x3

    aget v1, v3, v1

    aput v1, v3, v0

    .line 117
    const/4 v0, 0x6

    const/4 v1, 0x4

    aget v1, v3, v1

    aput v1, v3, v0

    .line 118
    const/4 v0, 0x7

    aget v1, v3, v2

    aput v1, v3, v0

    move v0, v2

    .line 120
    :goto_3
    const/4 v1, 0x7

    if-gt v0, v1, :cond_9

    .line 121
    aget v1, v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v1, v4

    aput v1, v3, v0

    .line 120
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 106
    :cond_7
    cmpl-float v5, p2, v1

    if-lez v5, :cond_5

    move p2, v1

    goto :goto_1

    .line 107
    :cond_8
    cmpl-float v0, p3, v1

    if-lez v0, :cond_6

    move p3, v1

    goto :goto_2

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    sget-object v0, Lcom/tencent/liteav/beauty/b/v;->y:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v1, v1, p5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/beauty/b/v$a;->b:Ljava/nio/FloatBuffer;

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->b:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/tencent/liteav/beauty/b/v;->y:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 131
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    if-nez v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    new-array v1, v2, [I

    iput-object v1, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 137
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 139
    const/16 v0, 0x2801

    const v1, 0x46180400    # 9729.0f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 143
    const/16 v0, 0x2803

    const v1, 0x47012f00    # 33071.0f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iget-object v0, v0, Lcom/tencent/liteav/beauty/b/v$a;->d:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    invoke-static {v7, v6, p1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 151
    :cond_c
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/v;->r:[Lcom/tencent/liteav/beauty/b/v$a;

    aget-object v0, v0, p5

    iput-object p1, v0, Lcom/tencent/liteav/beauty/b/v$a;->c:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/tencent/liteav/beauty/b/v;->u:Z

    .line 69
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tencent/liteav/basic/d/c;->d()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/beauty/b/v;->u:Z

    .line 64
    invoke-direct {p0}, Lcom/tencent/liteav/beauty/b/v;->q()V

    .line 65
    return-void
.end method
