.class Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$4;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$4;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$4;->this$0:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->access$300(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->handleOnPause()V

    .line 214
    return-void
.end method
