.class Lcom/netease/dwrg/AudioVolumeContentObserver;
.super Landroid/database/ContentObserver;
.source "Client.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public m_pre_ringermode:I

.field public m_pre_volume:F

.field public m_pre_volumeSlient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 125
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 120
    iput v0, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:F

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 122
    iput v0, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I

    .line 126
    iput-object p1, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    .line 132
    const-string v0, "AudioManager onChange success"

    const-string v1, "NeoX"

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_4

    const/4 v2, 0x3

    .line 139
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 140
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 143
    iget v2, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 145
    iget v4, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v4, v5

    if-nez v6, :cond_1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-ne v5, v2, :cond_2

    cmpl-float v2, v3, v4

    if-eqz v2, :cond_3

    .line 151
    :cond_2
    invoke-static {v5, v3}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(IF)V

    .line 153
    :cond_3
    iput v3, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:F

    .line 154
    iput v5, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volumeSlient:I

    .line 159
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    .line 160
    iget v2, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I

    if-eq p1, v2, :cond_4

    .line 161
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 162
    iput p1, p0, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_ringermode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_4
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 167
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string p1, "AudioManager onChange failed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 170
    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    throw p1
.end method
