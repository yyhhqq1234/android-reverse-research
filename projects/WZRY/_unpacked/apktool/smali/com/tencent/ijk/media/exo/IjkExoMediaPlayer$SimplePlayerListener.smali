.class Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplePlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$1;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;-><init>(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onRenderedFirstFrame()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->access$400(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 410
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 401
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->access$002(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 402
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->access$102(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 403
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p1, p2, v1, v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->access$200(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;IIII)V

    .line 404
    if-lez p3, :cond_0

    .line 405
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;->this$0:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v1, 0x2711

    invoke-static {v0, v1, p3}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->access$300(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 406
    :cond_0
    return-void
.end method
