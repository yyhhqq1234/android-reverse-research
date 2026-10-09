.class Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;
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

.field final synthetic val$idDown:I

.field final synthetic val$xDown:F

.field final synthetic val$yDown:F


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    iput p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$idDown:I

    iput p3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$xDown:F

    iput p4, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$yDown:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->access$300(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$idDown:I

    iget v2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$xDown:F

    iget v3, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;->val$yDown:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->handleActionDown(IFF)V

    .line 269
    return-void
.end method
