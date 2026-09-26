.class Lcom/netease/dwrg/AudioVolumeContentObserver;
.super Landroid/database/ContentObserver;
.source "Client.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public m_pre_ringermode:I

.field public m_pre_volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, -0x1

    .line 109
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 105
    iput v0, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:I

    .line 106
    iput v0, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I

    .line 110
    iput-object p1, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 117
    iget-object v3, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 118
    .local v0, "audio":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 120
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 121
    .local v2, "volume":I
    iget v3, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:I

    if-lez v3, :cond_2

    if-nez v2, :cond_2

    .line 122
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(I)V

    .line 125
    :cond_0
    :goto_0
    iput v2, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:I

    .line 128
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 129
    .local v1, "ringermode":I
    iget v3, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I

    if-eq v1, v3, :cond_1

    .line 130
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 131
    iput v1, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I

    .line 134
    .end local v1    # "ringermode":I
    .end local v2    # "volume":I
    :cond_1
    return-void

    .line 123
    .restart local v2    # "volume":I
    :cond_2
    iget v3, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:I

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 124
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(I)V

    goto :goto_0
.end method
