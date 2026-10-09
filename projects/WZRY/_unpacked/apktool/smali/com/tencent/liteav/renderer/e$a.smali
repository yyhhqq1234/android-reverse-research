.class abstract Lcom/tencent/liteav/renderer/e$a;
.super Ljava/lang/Object;
.source "TXCGLSurfaceViewBase.java"

# interfaces
.implements Lcom/tencent/liteav/renderer/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/tencent/liteav/renderer/e;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/renderer/e;[I)V
    .locals 1

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$a;->b:Lcom/tencent/liteav/renderer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    invoke-direct {p0, p2}, Lcom/tencent/liteav/renderer/e$a;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e$a;->a:[I

    .line 1246
    return-void
.end method

.method private a([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1280
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$a;->b:Lcom/tencent/liteav/renderer/e;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/e;->h(Lcom/tencent/liteav/renderer/e;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1292
    :goto_0
    return-object p1

    .line 1286
    :cond_0
    array-length v1, p1

    .line 1287
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 1288
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1289
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 1290
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 1291
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 1292
    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1249
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 1250
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$a;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_0
    aget v4, v5, v4

    .line 1257
    if-gtz v4, :cond_1

    .line 1258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1263
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e$a;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/tencent/liteav/renderer/e$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1268
    if-nez v0, :cond_3

    .line 1269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_3
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
