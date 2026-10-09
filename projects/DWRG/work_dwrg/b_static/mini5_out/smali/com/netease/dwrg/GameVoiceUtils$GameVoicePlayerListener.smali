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

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 359
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    const/4 p1, 0x3

    .line 360
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 364
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    const/4 p1, 0x3

    .line 365
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
