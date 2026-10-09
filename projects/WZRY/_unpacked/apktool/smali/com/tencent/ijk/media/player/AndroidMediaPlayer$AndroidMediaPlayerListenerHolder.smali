.class Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/ijk/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/ijk/media/player/AndroidMediaPlayer;Lcom/tencent/ijk/media/player/AndroidMediaPlayer;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    .line 380
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 417
    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p2}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 426
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnCompletion()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 392
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnError(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 385
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 435
    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnPrepared()V

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 408
    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 444
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    .line 449
    if-eqz p2, :cond_1

    .line 450
    new-instance v0, Lcom/tencent/ijk/media/player/IjkTimedText;

    invoke-virtual {p2}, Landroid/media/TimedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnTimedText(Lcom/tencent/ijk/media/player/IjkTimedText;)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 398
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    .line 399
    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Lcom/tencent/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p2, p3, v1, v1}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0
.end method
