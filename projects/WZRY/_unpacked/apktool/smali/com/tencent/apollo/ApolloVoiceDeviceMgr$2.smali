.class final Lcom/tencent/apollo/ApolloVoiceDeviceMgr$2;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"

# interfaces
.implements Lcom/tencent/apollo/AudioDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStatus(ILjava/lang/String;)V
    .locals 3
    .param p1, "audioStatusEvent"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--mAudioStatusEvent---:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {p1, p2}, Lcom/tencent/apollo/ApolloVoiceEngine;->OnEvent(ILjava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1200()Lcom/tencent/apollo/IGCloudVoiceNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1200()Lcom/tencent/apollo/IGCloudVoiceNotify;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/apollo/IGCloudVoiceNotify;->OnEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :cond_0
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
