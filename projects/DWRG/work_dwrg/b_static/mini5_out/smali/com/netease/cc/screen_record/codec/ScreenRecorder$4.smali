.class Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;
.super Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/ScreenRecorder;->prepareAudioEncoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ranIntoError:Z

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;-><init>()V

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->ranIntoError:Z

    return-void
.end method


# virtual methods
.method public onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V
    .locals 1

    const/4 p1, 0x1

    .line 674
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->ranIntoError:Z

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MicRecorder ran into an error! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :try_start_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 679
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$700(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 680
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1600(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 693
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1702(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder;

    .line 694
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$700(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    :cond_0
    const-string p1, "[CCR]"

    const-string p2, "===========open recorder failed======="

    .line 697
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 641
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[CCR]"

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] AudioEncoder output buffer available: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$700(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1, p2, p3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 647
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object p1, p1, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheBuffer:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0, p2, p3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1400(Lcom/netease/cc/screen_record/codec/ScreenRecorder;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 649
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 653
    :try_start_3
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 654
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    :goto_0
    return-void
.end method

.method public onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V
    .locals 2

    .line 664
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getRecLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] AudioEncoder returned new format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1500(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Landroid/media/MediaFormat;)V

    .line 667
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$700(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 668
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$4;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    :cond_1
    return-void
.end method
