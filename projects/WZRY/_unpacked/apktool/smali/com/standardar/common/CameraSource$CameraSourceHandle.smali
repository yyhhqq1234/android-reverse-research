.class Lcom/standardar/common/CameraSource$CameraSourceHandle;
.super Landroid/os/Handler;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSourceHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/standardar/common/CameraSource;


# direct methods
.method public constructor <init>(Lcom/standardar/common/CameraSource;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/standardar/common/CameraSource$CameraSourceHandle;->this$0:Lcom/standardar/common/CameraSource;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 162
    :pswitch_0
    const-string v0, "ARService response time exceed 1000 ms"

    .line 163
    .local v0, "anrMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/standardar/common/CameraSource$CameraSourceHandle;->this$0:Lcom/standardar/common/CameraSource;

    iget-object v1, v1, Lcom/standardar/common/CameraSource;->mImageReaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
