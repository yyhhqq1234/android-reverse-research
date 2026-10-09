.class Lcom/google/atap/tangoservice/Tango$1;
.super Lcom/google/atap/tangoservice/ITangoListener$Stub;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/Tango;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/atap/tangoservice/Tango;


# direct methods
.method constructor <init>(Lcom/google/atap/tangoservice/Tango;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-direct {p0}, Lcom/google/atap/tangoservice/ITangoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoiResponse(Lcom/google/atap/tangoservice/fois/FoiResponse;)V
    .locals 1
    .param p1, "foiResponse"    # Lcom/google/atap/tangoservice/fois/FoiResponse;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 344
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0, p1}, Lcom/google/atap/tangoservice/Tango;->access$200(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/fois/FoiResponse;)V

    .line 345
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 346
    return-void
.end method

.method public onGraphicBufferAvailable(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 328
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onFrameAvailable(I)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 332
    return-void
.end method

.method public onOnlineCalibrationStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 350
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onOnlineCalibrationStatus(I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 354
    return-void
.end method

.method public onPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V
    .locals 1
    .param p1, "pointCloud"    # Lcom/google/atap/tangoservice/TangoPointCloudData;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 336
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 340
    return-void
.end method

.method public onPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V
    .locals 1
    .param p1, "pose"    # Lcom/google/atap/tangoservice/TangoPoseData;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 309
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 313
    return-void
.end method

.method public onTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/atap/tangoservice/TangoEvent;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 320
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;->onTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango$1;->this$0:Lcom/google/atap/tangoservice/Tango;

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 324
    return-void
.end method

.method public onXyzIjAvailable()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method
