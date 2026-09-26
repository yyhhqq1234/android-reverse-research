.class public Lcom/netease/dwrg/MovieView;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final DOUBLE_TAP_SLOP:I

.field private final DOUBLE_TAP_TIMEOUT:I

.field private m_context:Landroid/app/Activity;

.field private m_control_mode:I

.field private m_dialog:Lcom/netease/dwrg/MovieDialog;

.field private m_need_play:Z

.field private m_player:Landroid/media/MediaPlayer;

.field private m_pos:I

.field private m_prepared:Z

.field private m_prev_down_event:Landroid/view/MotionEvent;

.field private m_prev_up_event:Landroid/view/MotionEvent;

.field private m_view:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    .line 52
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    .line 53
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    .line 54
    iput v0, p0, Lcom/netease/dwrg/MovieView;->m_pos:I

    .line 56
    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_prepared:Z

    .line 57
    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_need_play:Z

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/netease/dwrg/MovieView;->DOUBLE_TAP_TIMEOUT:I

    .line 60
    const/16 v0, 0x2710

    iput v0, p0, Lcom/netease/dwrg/MovieView;->DOUBLE_TAP_SLOP:I

    .line 61
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_prev_down_event:Landroid/view/MotionEvent;

    .line 62
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_prev_up_event:Landroid/view/MotionEvent;

    .line 66
    iput-object p1, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netease/dwrg/MovieView;Lcom/netease/dwrg/MovieDialog;)Lcom/netease/dwrg/MovieDialog;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;
    .param p1, "x1"    # Lcom/netease/dwrg/MovieDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/dwrg/MovieView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/MovieView;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netease/dwrg/MovieView;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;
    .param p1, "x1"    # Landroid/view/SurfaceView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netease/dwrg/MovieView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/dwrg/MovieView;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget v0, p0, Lcom/netease/dwrg/MovieView;->m_pos:I

    return v0
.end method

.method static synthetic access$402(Lcom/netease/dwrg/MovieView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/netease/dwrg/MovieView;->m_pos:I

    return p1
.end method

.method static synthetic access$500(Lcom/netease/dwrg/MovieView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_prepared:Z

    return v0
.end method

.method static synthetic access$600(Lcom/netease/dwrg/MovieView;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 43
    iget v0, p0, Lcom/netease/dwrg/MovieView;->m_control_mode:I

    return v0
.end method


# virtual methods
.method public initialize()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    move-object v1, p0

    .line 78
    .local v1, "movie_view":Lcom/netease/dwrg/MovieView;
    new-instance v0, Lcom/netease/dwrg/MovieView$1;

    invoke-direct {v0, p0, v1}, Lcom/netease/dwrg/MovieView$1;-><init>(Lcom/netease/dwrg/MovieView;Lcom/netease/dwrg/MovieView;)V

    .line 97
    .local v0, "f_runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    .line 99
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 100
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 101
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 102
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 103
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 105
    iget-object v3, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 233
    .local v0, "deltaX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 234
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/MovieView;->stopVideo(Z)V

    .line 198
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_prepared:Z

    .line 182
    iget-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_prepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_need_play:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/netease/dwrg/MovieView;->resumeVideo()V

    .line 186
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 193
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 203
    iget v0, p0, Lcom/netease/dwrg/MovieView;->m_control_mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_prev_up_event:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_prev_down_event:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_prev_down_event:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/netease/dwrg/MovieView;->m_prev_up_event:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0, v1, p2}, Lcom/netease/dwrg/MovieView;->isDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/MovieView;->stopVideo(Z)V

    .line 211
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/MovieView;->m_prev_down_event:Landroid/view/MotionEvent;

    .line 223
    :cond_1
    :goto_0
    return v2

    .line 213
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 215
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/MovieView;->m_prev_up_event:Landroid/view/MotionEvent;

    goto :goto_0

    .line 219
    :cond_3
    iget v0, p0, Lcom/netease/dwrg/MovieView;->m_control_mode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/dwrg/MovieView;->m_control_mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/MovieView;->stopVideo(Z)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 173
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_need_play:Z

    .line 265
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/MovieView$5;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/MovieView$5;-><init>(Lcom/netease/dwrg/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public playVideo(Ljava/lang/String;IIIIIIIZ)V
    .locals 10
    .param p1, "video_path"    # Ljava/lang/String;
    .param p2, "video_mode"    # I
    .param p3, "control_mode"    # I
    .param p4, "scale_mode"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "in_asset"    # Z

    .prologue
    .line 301
    iput p3, p0, Lcom/netease/dwrg/MovieView;->m_control_mode:I

    .line 302
    iget-object v9, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/MovieView$7;

    move-object v1, p0

    move v2, p2

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/netease/dwrg/MovieView$7;-><init>(Lcom/netease/dwrg/MovieView;IIIIIZLjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public resumeVideo()V
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_need_play:Z

    .line 281
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/MovieView$6;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/MovieView$6;-><init>(Lcom/netease/dwrg/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public setBounds(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 153
    move v2, p1

    .line 154
    .local v2, "fx":I
    move v3, p2

    .line 155
    .local v3, "fy":I
    move v4, p3

    .line 156
    .local v4, "fw":I
    move v5, p4

    .line 157
    .local v5, "fh":I
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    if-eqz v0, :cond_0

    .line 159
    iget-object v6, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v0, Lcom/netease/dwrg/MovieView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/dwrg/MovieView$3;-><init>(Lcom/netease/dwrg/MovieView;IIII)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/MovieView$2;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/MovieView$2;-><init>(Lcom/netease/dwrg/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public stopVideo(Z)V
    .locals 2
    .param p1, "need_callback"    # Z

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/MovieView;->m_need_play:Z

    .line 240
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/MovieView$4;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/MovieView$4;-><init>(Lcom/netease/dwrg/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    if-eqz p1, :cond_0

    .line 258
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnStopVideoCallBack()V

    .line 260
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 117
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 112
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 123
    return-void
.end method

.method public uninitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieDialog;->dismiss()V

    .line 131
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_dialog:Lcom/netease/dwrg/MovieDialog;

    .line 134
    :cond_0
    iput-object v1, p0, Lcom/netease/dwrg/MovieView;->m_view:Landroid/view/SurfaceView;

    .line 135
    return-void
.end method
