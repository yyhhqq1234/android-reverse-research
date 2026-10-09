.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .param p0, "pAnimationInterval"    # D

    .prologue
    .line 58
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->sAnimationInterval:J

    .line 59
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    .line 142
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    .line 143
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 134
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    .line 135
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    .line 146
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    .line 147
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 138
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    .line 139
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 167
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0
    .param p1, "pKeyCode"    # I

    .prologue
    .line 150
    invoke-static {p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeKeyDown(I)Z

    .line 151
    return-void
.end method

.method public handleOnPause()V
    .locals 0

    .prologue
    .line 154
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeOnPause()V

    .line 155
    return-void
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeOnResume()V

    .line 159
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 114
    sget-wide v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v4, v4

    const-wide v6, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 115
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeRender()V

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 118
    .local v0, "now":J
    iget-wide v4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sget-wide v6, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->sAnimationInterval:J

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 119
    .local v2, "remain":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 121
    const-wide/32 v4, 0xf4240

    :try_start_0
    div-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 129
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pWidth"    # I
    .param p3, "pHeight"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pEGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 100
    iget v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->nativeInit(II)V

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 102
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "pSurfaceWidth"    # I
    .param p2, "pSurfaceHeight"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mScreenWidth:I

    .line 95
    iput p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->mScreenHeight:I

    .line 96
    return-void
.end method
