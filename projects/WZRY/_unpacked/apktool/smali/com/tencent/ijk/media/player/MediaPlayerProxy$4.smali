.class Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

.field final synthetic val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# direct methods
.method constructor <init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;->this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

    iput-object p2, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;->val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;->val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;->this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 241
    return-void
.end method
