.class Lcom/standardar/common/CameraSource$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/standardar/common/CameraSource;->openCamera2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/standardar/common/CameraSource;


# direct methods
.method constructor <init>(Lcom/standardar/common/CameraSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera disconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 374
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/standardar/common/CameraSource;->access$202(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 375
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v0}, Lcom/standardar/common/CameraSource;->access$300(Lcom/standardar/common/CameraSource;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 376
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 382
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/standardar/common/CameraSource;->access$202(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 383
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v0}, Lcom/standardar/common/CameraSource;->access$300(Lcom/standardar/common/CameraSource;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 384
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera open:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v0, p1}, Lcom/standardar/common/CameraSource;->access$202(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 367
    iget-object v0, p0, Lcom/standardar/common/CameraSource$2;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v0}, Lcom/standardar/common/CameraSource;->access$300(Lcom/standardar/common/CameraSource;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 368
    return-void
.end method
