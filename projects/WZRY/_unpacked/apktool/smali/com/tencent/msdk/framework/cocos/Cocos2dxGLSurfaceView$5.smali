.class Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

.field final synthetic val$idPointerDown:I

.field final synthetic val$xPointerDown:F

.field final synthetic val$yPointerDown:F


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    iput p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$idPointerDown:I

    iput p3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$xPointerDown:F

    iput p4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$yPointerDown:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->access$300(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$idPointerDown:I

    iget v2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$xPointerDown:F

    iget v3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;->val$yPointerDown:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->handleActionDown(IFF)V

    .line 255
    return-void
.end method
