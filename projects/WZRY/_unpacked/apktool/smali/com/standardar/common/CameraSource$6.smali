.class Lcom/standardar/common/CameraSource$6;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


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
    .line 759
    iput-object p1, p0, Lcom/standardar/common/CameraSource$6;->this$0:Lcom/standardar/common/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/standardar/common/CameraSource$6;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v0}, Lcom/standardar/common/CameraSource;->access$1300(Lcom/standardar/common/CameraSource;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/CameraSource$6;->this$0:Lcom/standardar/common/CameraSource;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/standardar/common/CameraSource;->access$1402(Lcom/standardar/common/CameraSource;Z)Z

    .line 764
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
