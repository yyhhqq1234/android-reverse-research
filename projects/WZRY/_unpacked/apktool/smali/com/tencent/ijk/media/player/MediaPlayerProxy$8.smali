.class Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

.field final synthetic val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;


# direct methods
.method constructor <init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;->this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

    iput-object p2, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;->val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedText(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/ijk/media/player/IjkTimedText;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;->val$finalListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;->this$0:Lcom/tencent/ijk/media/player/MediaPlayerProxy;

    invoke-interface {v0, v1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/ijk/media/player/IjkTimedText;)V

    .line 301
    return-void
.end method
