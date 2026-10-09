.class Lcom/tencent/pandora/livepusher/ScreenCapture$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/livepusher/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/livepusher/ScreenCapture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/pandora/livepusher/ScreenCapture;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture$1;->this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture$1;->this$0:Lcom/tencent/pandora/livepusher/ScreenCapture;

    invoke-virtual {v0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->stopCapture()V

    .line 71
    return-void
.end method
