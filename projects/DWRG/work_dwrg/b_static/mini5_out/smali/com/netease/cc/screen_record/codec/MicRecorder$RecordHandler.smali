.class Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;
.super Landroid/os/Handler;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field private mCachedInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxingOutputBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPollRate:I

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    .line 225
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    .line 221
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    const p2, 0x1f4000

    .line 222
    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$100(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result p1

    div-int/2addr p2, p1

    iput p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    return-void
.end method

.method private handleGameVoice()V
    .locals 5

    .line 364
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->canReadData()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 366
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->getGameVoicePollRateMs()I

    move-result v0

    .line 367
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInput()I

    move-result v2

    .line 368
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio encoder returned input buffer index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MicRecorder"

    invoke-static {v4, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz v2, :cond_1

    .line 371
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0, v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1700(Lcom/netease/cc/screen_record/codec/MicRecorder;I)V

    .line 372
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    .line 374
    :cond_2
    iget v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    :goto_0
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 378
    :cond_3
    iget v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private handleRecordVoice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInput()I

    move-result v0

    .line 386
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v1

    const-string v2, "MicRecorder"

    if-eqz v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "audio encoder returned input buffer index="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz v0, :cond_1

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1800(Lcom/netease/cc/screen_record/codec/MicRecorder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "handleRecordVoice catch exception."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "try later to poll input buffer"

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_2
    iget v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private offerOutput()V
    .locals 7

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 347
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audio encoder returned output buffer index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicRecorder"

    invoke-static {v3, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v4}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V

    :cond_2
    if-gez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 352
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 353
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private pollInput()I
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method private pollInputIfNeed()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    .line 411
    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "MicRecorder"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 327
    :pswitch_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-ne v1, p1, :cond_8

    .line 328
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 330
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->clearData()V

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1500(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1400(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "set currentSkipEncodeDurationUs "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1600(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1602(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J

    goto/16 :goto_3

    .line 320
    :pswitch_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_8

    .line 321
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1500(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1402(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J

    const-string p1, "Pause mic recording."

    .line 323
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 313
    :pswitch_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 315
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1002(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->release()V

    goto/16 :goto_3

    .line 307
    :pswitch_3
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 308
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->stop()V

    goto/16 :goto_3

    .line 297
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->releaseOutputBuffer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " mic recorder catch exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio encoder released output buffer index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remaining="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    .line 303
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInputIfNeed()V

    goto/16 :goto_3

    .line 292
    :pswitch_5
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->offerOutput()V

    .line 293
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInputIfNeed()V

    goto/16 :goto_3

    .line 234
    :pswitch_6
    :try_start_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-nez p1, :cond_6

    .line 237
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$300(Lcom/netease/cc/screen_record/codec/MicRecorder;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 239
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$400(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$500(Landroid/media/projection/MediaProjection;)Landroid/media/AudioRecord;

    move-result-object p1

    goto :goto_1

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$100(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result v0

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(III)Landroid/media/AudioRecord;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    const-string p1, "create audio record failure"

    .line 248
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V

    goto :goto_3

    .line 252
    :cond_5
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 253
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1002(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 259
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    .line 262
    :cond_6
    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 269
    :pswitch_7
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_8

    .line 270
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 273
    :try_start_3
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->handleGameVoice()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 276
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    goto :goto_3

    .line 282
    :cond_7
    :try_start_4
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->handleRecordVoice()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 285
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_4
    move-exception p1

    .line 265
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
