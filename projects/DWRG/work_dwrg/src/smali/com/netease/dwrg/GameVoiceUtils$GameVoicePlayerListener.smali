.class public Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/GameVoiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameVoicePlayerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 316
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    .line 317
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    .line 318
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 321
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    .line 322
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method
