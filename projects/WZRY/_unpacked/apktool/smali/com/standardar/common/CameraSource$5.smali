.class Lcom/standardar/common/CameraSource$5;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/CameraSource;
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
    .line 642
    iput-object p1, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private consumeImage(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 669
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 672
    :cond_0
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 645
    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$400(Lcom/standardar/common/CameraSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    iget-object v2, v2, Lcom/standardar/common/CameraSource;->mImageReaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 646
    :cond_0
    invoke-direct {p0, p1}, Lcom/standardar/common/CameraSource$5;->consumeImage(Landroid/media/ImageReader;)V

    .line 665
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v6

    .line 653
    .local v6, "image":Landroid/media/Image;
    if-eqz v6, :cond_1

    .line 654
    invoke-static {v6}, Lcom/standardar/common/CameraSource;->access$1000(Landroid/media/Image;)[B

    move-result-object v1

    .line 655
    .local v1, "nv21data":[B
    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$1100(Lcom/standardar/common/CameraSource;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 656
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " image timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$1200(Lcom/standardar/common/CameraSource;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/standardar/common/CameraSource$ICameraNotifyCallback;

    .line 658
    .local v0, "callback":Lcom/standardar/common/CameraSource$ICameraNotifyCallback;
    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    .line 659
    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$100(Lcom/standardar/common/CameraSource;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$100(Lcom/standardar/common/CameraSource;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/standardar/common/CameraSource$5;->this$0:Lcom/standardar/common/CameraSource;

    .line 660
    invoke-static {v4}, Lcom/standardar/common/CameraSource;->access$800(Lcom/standardar/common/CameraSource;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    .line 658
    :goto_3
    invoke-interface/range {v0 .. v5}, Lcom/standardar/common/CameraSource$ICameraNotifyCallback;->onCameraNotify([BJJ)V

    goto :goto_1

    .line 662
    .end local v0    # "callback":Lcom/standardar/common/CameraSource$ICameraNotifyCallback;
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 659
    .restart local v0    # "callback":Lcom/standardar/common/CameraSource$ICameraNotifyCallback;
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 660
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    goto :goto_3

    .line 662
    .end local v0    # "callback":Lcom/standardar/common/CameraSource$ICameraNotifyCallback;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    invoke-virtual {v6}, Landroid/media/Image;->close()V

    goto :goto_0
.end method
