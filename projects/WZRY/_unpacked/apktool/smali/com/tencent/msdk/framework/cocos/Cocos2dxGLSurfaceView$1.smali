.class final Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueAccelerometer(FFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$timestamp:J

.field final synthetic val$x:F

.field final synthetic val$y:F

.field final synthetic val$z:F


# direct methods
.method constructor <init>(FFFJ)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$x:F

    iput p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$y:F

    iput p3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$z:F

    iput-wide p4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    iget v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$x:F

    iget v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$y:F

    iget v2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$z:F

    iget-wide v4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;->val$timestamp:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    .line 88
    return-void
.end method
