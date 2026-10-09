.class Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 973
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 974
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v6, 0x64

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    .line 978
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 979
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$000(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 980
    :cond_0
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IjkMediaPlayer went away with unhandled events"

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :goto_0
    :sswitch_0
    return-void

    .line 985
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1061
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :sswitch_1
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnPrepared()V

    goto :goto_0

    .line 991
    :sswitch_2
    invoke-static {v0, v8}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$200(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Z)V

    .line 992
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    goto :goto_0

    .line 996
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    .line 997
    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    move-wide v2, v4

    .line 1002
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v8

    .line 1003
    cmp-long v1, v8, v4

    if-lez v1, :cond_6

    .line 1004
    mul-long/2addr v2, v6

    div-long/2addr v2, v8

    .line 1006
    :goto_1
    cmp-long v1, v2, v6

    if-ltz v1, :cond_3

    move-wide v2, v6

    .line 1011
    :cond_3
    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0

    .line 1015
    :sswitch_4
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0

    .line 1019
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$302(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I

    .line 1020
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$402(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I

    .line 1021
    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$300(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$400(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    .line 1022
    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$500(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$600(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v4

    .line 1021
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0

    .line 1026
    :sswitch_6
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnError(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1028
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnCompletion()V

    .line 1030
    :cond_4
    invoke-static {v0, v8}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$200(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    .line 1034
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 1039
    :goto_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnInfo(II)Z

    goto/16 :goto_0

    .line 1036
    :pswitch_0
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n"

    invoke-static {v1, v2}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1043
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5

    .line 1044
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Lcom/tencent/ijk/media/player/IjkTimedText;)V

    goto/16 :goto_0

    .line 1046
    :cond_5
    new-instance v2, Lcom/tencent/ijk/media/player/IjkTimedText;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v8, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/tencent/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v0, v2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnTimedText(Lcom/tencent/ijk/media/player/IjkTimedText;)V

    goto/16 :goto_0

    .line 1054
    :sswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$502(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I

    .line 1055
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$602(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I

    .line 1056
    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$300(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v1

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$400(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    .line 1057
    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$500(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->access$600(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I

    move-result v4

    .line 1056
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto/16 :goto_0

    :cond_6
    move-wide v2, v4

    goto/16 :goto_1

    .line 985
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x2711 -> :sswitch_9
    .end sparse-switch

    .line 1034
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
