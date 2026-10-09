.class Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocusChangeListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 659
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioStatusEvent focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 662
    :cond_0
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1100()Lcom/tencent/apollo/AudioDeviceListener;

    move-result-object v0

    const/16 v1, 0x32

    const-string v2, "audio interrupt start."

    invoke-interface {v0, v1, v2}, Lcom/tencent/apollo/AudioDeviceListener;->onStatus(ILjava/lang/String;)V

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 664
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    .line 665
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1000()V

    .line 666
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$1100()Lcom/tencent/apollo/AudioDeviceListener;

    move-result-object v0

    const/16 v1, 0x33

    const-string v2, "audio interrupt end."

    invoke-interface {v0, v1, v2}, Lcom/tencent/apollo/AudioDeviceListener;->onStatus(ILjava/lang/String;)V

    goto :goto_0
.end method
