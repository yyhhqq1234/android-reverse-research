.class Lcom/netease/dwrg/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final UVS:[F

.field private VERTICE:[F

.field private m_bg_sampler:I

.field private m_pos_attrib:I

.field private m_pos_buffer:Ljava/nio/FloatBuffer;

.field private m_program:I

.field private final m_ps_code:Ljava/lang/String;

.field private m_texture:I

.field private m_uv_attrib:I

.field private m_uv_buffer:Ljava/nio/FloatBuffer;

.field private final m_vs_code:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Launcher;)V
    .locals 1

    .line 317
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 318
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    .line 319
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    .line 320
    const-string p1, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_vs_code:Ljava/lang/String;

    .line 330
    const-string p1, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_ps_code:Ljava/lang/String;

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    return-void

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


# virtual methods
.method public loadShader(ILjava/lang/String;)I
    .locals 0

    .line 349
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 352
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 353
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 461
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v3}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 462
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 463
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 465
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 466
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 467
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 468
    iget v1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 469
    iget v7, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const p1, 0x84c0

    .line 470
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 471
    iget v1, p0, Lcom/netease/dwrg/Launcher$1;->m_texture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 472
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_bg_sampler:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 473
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    .line 428
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/dwrg/Launcher;->access$502(Lcom/netease/dwrg/Launcher;I)I

    .line 429
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/netease/dwrg/Launcher;->access$602(Lcom/netease/dwrg/Launcher;I)I

    const/4 v0, 0x0

    .line 430
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/4 p1, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x4

    if-le p2, p3, :cond_0

    const/high16 v10, 0x3f8e0000    # 1.109375f

    int-to-float p2, p2

    mul-float p2, p2, v10

    const v10, 0x43b08000    # 353.0f

    mul-float p2, p2, v10

    mul-int/lit16 p3, p3, 0x429

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, 0x43b68000    # 365.0f

    sub-float/2addr v8, p2

    mul-float v8, v8, p3

    const p3, 0x44354000    # 725.0f

    div-float/2addr v8, p3

    sub-float/2addr v8, v7

    add-float/2addr p2, v8

    .line 438
    new-array p3, v6, [F

    const v6, -0x40e66666    # -0.6f

    aput v6, p3, v0

    aput v8, p3, v5

    const v5, 0x3f026666

    aput v5, p3, v4

    aput v8, p3, v3

    aput v6, p3, v9

    aput p2, p3, v2

    aput v5, p3, v1

    aput p2, p3, p1

    iput-object p3, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    goto :goto_0

    :cond_0
    const v10, 0x3fb684be

    int-to-float p2, p2

    mul-float p2, p2, v10

    const/high16 v10, 0x437c0000    # 252.0f

    mul-float p2, p2, v10

    mul-int/lit16 p3, p3, 0x302

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x44730000    # 972.0f

    sub-float/2addr v8, p2

    mul-float v8, v8, p3

    const p3, 0x44d08000    # 1668.0f

    div-float/2addr v8, p3

    sub-float/2addr v8, v7

    add-float/2addr p2, v8

    .line 447
    new-array p3, v6, [F

    const v6, -0x40c2d82e

    aput v6, p3, v0

    aput v8, p3, v5

    const v5, 0x3f2fe1aa

    aput v5, p3, v4

    aput v8, p3, v3

    aput v6, p3, v9

    aput p2, p3, v2

    aput v5, p3, v1

    aput p2, p3, p1

    iput-object p3, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    .line 451
    :goto_0
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 452
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 453
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 454
    iget-object p2, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 455
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/16 p1, 0x1f01

    .line 361
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x1f00

    .line 362
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x1f03

    .line 363
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0x1f02

    .line 364
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 365
    const-string p1, "null"

    :cond_0
    move-object v4, p1

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GL_RENDERER   is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeoX"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GL_VENDOR     is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GL_EXTENSIONS is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GL_VERSION    is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object p1

    new-instance p2, Lcom/netease/dwrg/Launcher$1$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/dwrg/Launcher$1$1;-><init>(Lcom/netease/dwrg/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    const p1, 0x8b31

    .line 388
    const-string p2, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    invoke-virtual {p0, p1, p2}, Lcom/netease/dwrg/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p1

    const p2, 0x8b30

    .line 389
    const-string v0, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    invoke-virtual {p0, p2, v0}, Lcom/netease/dwrg/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p2

    .line 390
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    .line 391
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 392
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 393
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 394
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string p2, "pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    .line 395
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string p2, "uv_in"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    .line 396
    iget p1, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string p2, "bg"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/Launcher$1;->m_bg_sampler:I

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 400
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 401
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    .line 403
    iget-object p2, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 404
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 407
    new-array v0, p1, [I

    .line 408
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 409
    aget p1, v0, p2

    iput p1, p0, Lcom/netease/dwrg/Launcher$1;->m_texture:I

    const/16 v0, 0xde1

    .line 410
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v1, 0x2601

    .line 411
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 412
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 413
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 414
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 415
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 416
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 417
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v2

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 418
    invoke-static {v0, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0xbe2

    .line 421
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 422
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method
