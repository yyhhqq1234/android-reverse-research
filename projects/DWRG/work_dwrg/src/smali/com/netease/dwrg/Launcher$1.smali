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
    .locals 2
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    const/16 v1, 0x8

    .line 239
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    .line 241
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    .line 242
    const-string v0, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_vs_code:Ljava/lang/String;

    .line 252
    const-string v0, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_ps_code:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    return-void

    .line 240
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

    .line 241
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
    .locals 1
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 274
    .local v0, "shader":I
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 275
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 277
    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v0

    aget v0, v0, v3

    iget-object v4, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v4}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v5

    aget v5, v5, v1

    iget-object v6, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v6}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 378
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 379
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 381
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 382
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 383
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 384
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 385
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 386
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 387
    const/16 v0, 0xde1

    iget v1, p0, Lcom/netease/dwrg/Launcher$1;->m_texture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 388
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_bg_sampler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 389
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 391
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 344
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/netease/dwrg/Launcher;->access$502(Lcom/netease/dwrg/Launcher;I)I

    .line 345
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/netease/dwrg/Launcher;->access$602(Lcom/netease/dwrg/Launcher;I)I

    .line 346
    invoke-interface {p1, v8, v8, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 348
    if-le p2, p3, :cond_0

    .line 350
    const/high16 v2, 0x3f8e0000    # 1.109375f

    .line 351
    .local v2, "logo_w":F
    int-to-float v5, p2

    mul-float/2addr v5, v2

    const v6, 0x43b08000    # 353.0f

    mul-float/2addr v5, v6

    mul-int/lit16 v6, p3, 0x429

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 352
    .local v1, "logo_h":F
    const v3, -0x40e66666    # -0.6f

    .line 353
    .local v3, "logo_x":F
    const v5, 0x43b68000    # 365.0f

    sub-float v6, v9, v1

    mul-float/2addr v5, v6

    const v6, 0x44354000    # 725.0f

    div-float/2addr v5, v6

    sub-float v4, v5, v7

    .line 354
    .local v4, "logo_y":F
    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v3, v5, v8

    aput v4, v5, v10

    add-float v6, v3, v2

    aput v6, v5, v11

    const/4 v6, 0x3

    aput v4, v5, v6

    const/4 v6, 0x4

    aput v3, v5, v6

    const/4 v6, 0x5

    add-float v7, v4, v1

    aput v7, v5, v6

    const/4 v6, 0x6

    add-float v7, v3, v2

    aput v7, v5, v6

    const/4 v6, 0x7

    add-float v7, v4, v1

    aput v7, v5, v6

    iput-object v5, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    .line 367
    :goto_0
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 368
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 370
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 371
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    return-void

    .line 359
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "logo_h":F
    .end local v2    # "logo_w":F
    .end local v3    # "logo_x":F
    .end local v4    # "logo_y":F
    :cond_0
    const v2, 0x3fb684be

    .line 360
    .restart local v2    # "logo_w":F
    int-to-float v5, p2

    mul-float/2addr v5, v2

    const/high16 v6, 0x437c0000    # 252.0f

    mul-float/2addr v5, v6

    mul-int/lit16 v6, p3, 0x302

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 361
    .restart local v1    # "logo_h":F
    const v3, -0x40c2d82e

    .line 362
    .restart local v3    # "logo_x":F
    const/high16 v5, 0x44730000    # 972.0f

    sub-float v6, v9, v1

    mul-float/2addr v5, v6

    const v6, 0x44d08000    # 1668.0f

    div-float/2addr v5, v6

    sub-float v4, v5, v7

    .line 363
    .restart local v4    # "logo_y":F
    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v3, v5, v8

    aput v4, v5, v10

    add-float v6, v3, v2

    aput v6, v5, v11

    const/4 v6, 0x3

    aput v4, v5, v6

    const/4 v6, 0x4

    aput v3, v5, v6

    const/4 v6, 0x5

    add-float v7, v4, v1

    aput v7, v5, v6

    const/4 v6, 0x6

    add-float v7, v3, v2

    aput v7, v5, v6

    const/4 v6, 0x7

    add-float v7, v4, v1

    aput v7, v5, v6

    iput-object v5, p0, Lcom/netease/dwrg/Launcher$1;->VERTICE:[F

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 283
    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "renderer":Ljava/lang/String;
    const/16 v0, 0x1f00

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "vendor":Ljava/lang/String;
    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "extensions":Ljava/lang/String;
    const/16 v0, 0x1f02

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "_version":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v4, "null"

    .line 288
    .local v4, "version":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v13

    new-instance v0, Lcom/netease/dwrg/Launcher$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/dwrg/Launcher$1$1;-><init>(Lcom/netease/dwrg/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/netease/dwrg/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    const v0, 0x8b31

    const-string v1, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    invoke-virtual {p0, v0, v1}, Lcom/netease/dwrg/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result v12

    .line 305
    .local v12, "vs":I
    const v0, 0x8b30

    const-string v1, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    invoke-virtual {p0, v0, v1}, Lcom/netease/dwrg/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 306
    .local v10, "ps":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    .line 307
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 308
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 309
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 310
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string v1, "pos"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_attrib:I

    .line 311
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string v1, "uv_in"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_attrib:I

    .line 312
    iget v0, p0, Lcom/netease/dwrg/Launcher$1;->m_program:I

    const-string v1, "bg"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_bg_sampler:I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 316
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 317
    .local v7, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    .line 319
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$1;->UVS:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 320
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 324
    .local v11, "textureHandle":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 325
    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, p0, Lcom/netease/dwrg/Launcher$1;->m_texture:I

    .line 326
    const/16 v0, 0xde1

    iget v1, p0, Lcom/netease/dwrg/Launcher$1;->m_texture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 327
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v13, 0x2601

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 328
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v13, 0x2601

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 329
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v13, 0x812f

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 330
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v13, 0x812f

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 331
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 333
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$1;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    const-string v13, "init"

    invoke-static {v1, v13}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 334
    .local v8, "bmp":Landroid/graphics/Bitmap;
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v13, 0x0

    invoke-static {v0, v1, v8, v13}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 335
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 338
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 339
    return-void

    .end local v4    # "version":Ljava/lang/String;
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "ps":I
    .end local v11    # "textureHandle":[I
    .end local v12    # "vs":I
    :cond_0
    move-object v4, v6

    .line 287
    goto/16 :goto_0
.end method
