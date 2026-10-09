.class Lcom/tencent/liteav/renderer/e$b;
.super Lcom/tencent/liteav/renderer/e$a;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field final synthetic i:Lcom/tencent/liteav/renderer/e;

.field private j:[I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/renderer/e;IIIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1075
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$b;->i:Lcom/tencent/liteav/renderer/e;

    .line 1076
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/renderer/e$a;-><init>(Lcom/tencent/liteav/renderer/e;[I)V

    .line 1084
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e$b;->j:[I

    .line 1085
    iput p2, p0, Lcom/tencent/liteav/renderer/e$b;->c:I

    .line 1086
    iput p3, p0, Lcom/tencent/liteav/renderer/e$b;->d:I

    .line 1087
    iput p4, p0, Lcom/tencent/liteav/renderer/e$b;->e:I

    .line 1088
    iput p5, p0, Lcom/tencent/liteav/renderer/e$b;->f:I

    .line 1089
    iput p6, p0, Lcom/tencent/liteav/renderer/e$b;->g:I

    .line 1090
    iput p7, p0, Lcom/tencent/liteav/renderer/e$b;->h:I

    .line 1091
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$b;->j:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$b;->j:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 1125
    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1096
    array-length v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, p3, v6

    .line 1097
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 1099
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 1101
    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->g:I

    if-lt v8, v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->h:I

    if-lt v0, v1, :cond_0

    .line 1102
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 1104
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 1106
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 1108
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 1110
    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->c:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->d:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->e:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/renderer/e$b;->f:I

    if-ne v0, v1, :cond_0

    .line 1116
    :goto_1
    return-object v3

    .line 1096
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1116
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
