.class Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;
.super Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$k;
.source "TraeAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;)V
    .locals 0

    .prologue
    .line 3601
    iput-object p1, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    invoke-direct {p0, p1}, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$k;-><init>(Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3605
    .line 3607
    sget-boolean v0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->IsUpdateSceneFlag:Z

    if-eqz v0, :cond_0

    .line 3608
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v2, v2, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->_context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->InternalSetSpeaker(Landroid/content/Context;Z)I

    .line 3610
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->f()V

    .line 3612
    sget-boolean v0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->IsUpdateSceneFlag:Z

    if-nez v0, :cond_4

    .line 3614
    invoke-static {}, Lcom/tencent/rtmp/sharp/jni/QLog;->isColorLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3615
    const-string v0, "TRAE"

    const/4 v1, 0x2

    const-string v2, "connect earphone: do nothing"

    invoke-static {v0, v1, v2}, Lcom/tencent/rtmp/sharp/jni/QLog;->w(Ljava/lang/String;ILjava/lang/String;)V

    .line 3638
    :cond_1
    return-void

    .line 3621
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->b:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3622
    iget-object v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v2, v2, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->_am:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3624
    iget-object v2, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v3, p0, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager$h;->a:Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;

    iget-object v3, v3, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->_context:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/rtmp/sharp/jni/TraeAudioManager;->InternalSetSpeaker(Landroid/content/Context;Z)I

    .line 3631
    :cond_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    const-wide/16 v2, 0x3e8

    :goto_1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3636
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3631
    :cond_3
    const-wide/16 v2, 0xfa0

    goto :goto_1

    .line 3632
    :catch_0
    move-exception v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3643
    const-string v0, "DEVICE_EARPHONE"

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 3650
    return-void
.end method
