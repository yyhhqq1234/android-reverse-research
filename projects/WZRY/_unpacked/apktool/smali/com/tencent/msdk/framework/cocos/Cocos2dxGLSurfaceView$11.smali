.class Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

.field final synthetic val$pKeyCode:I


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    iput p2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;->val$pKeyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->access$300(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;->val$pKeyCode:I

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->handleKeyDown(I)V

    .line 348
    return-void
.end method
