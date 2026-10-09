.class Lcom/standardar/common/CameraSource$4;
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
    .line 625
    iput-object p1, p0, Lcom/standardar/common/CameraSource$4;->this$0:Lcom/standardar/common/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 628
    iget-object v2, p0, Lcom/standardar/common/CameraSource$4;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$400(Lcom/standardar/common/CameraSource;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 632
    .local v0, "image":Landroid/media/Image;
    if-eqz v0, :cond_0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " image timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 634
    invoke-static {v0}, Lcom/standardar/common/CameraSource;->access$1000(Landroid/media/Image;)[B

    move-result-object v1

    .line 635
    .local v1, "nv21data":[B
    iget-object v4, p0, Lcom/standardar/common/CameraSource$4;->this$0:Lcom/standardar/common/CameraSource;

    iget-object v2, p0, Lcom/standardar/common/CameraSource$4;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$800(Lcom/standardar/common/CameraSource;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    :goto_1
    invoke-static {v4, v1, v2, v3}, Lcom/standardar/common/CameraSource;->access$900(Lcom/standardar/common/CameraSource;[BJ)V

    .line 636
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 635
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    goto :goto_1
.end method
