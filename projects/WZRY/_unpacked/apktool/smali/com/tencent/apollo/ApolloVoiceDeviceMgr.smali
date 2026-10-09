.class public Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;,
        Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;,
        Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final MODE_RESET:I = -0x2

.field private static final MODE_SET_AUTO:I = -0x1

.field private static final SCO_CHECK_INTERL:I = 0x7d0

.field private static final SCO_CHECK_TIME_MAX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "apolloVoice"

.field private static bPermissionOK:Z

.field private static dataPath:Ljava/lang/String;

.field private static mActivity:Landroid/app/Activity;

.field private static mAudioDeviceListener:Lcom/tencent/apollo/AudioDeviceListener;

.field private static mAudioFocusChangeListener:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mAudioStatusEvent:I

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBluetoothSCO:Z

.field private static mBluetoothSCOEnable:Z

.field private static mBluetoothState:I

.field private static mCheckDeviceFlag:Z

.field private static mContext:Landroid/content/Context;

.field private static mCurrVoipState:Z

.field private static mGCloudVoiceNotify:Lcom/tencent/apollo/IGCloudVoiceNotify;

.field private static mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

.field private static mGVoiceThread:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;

.field private static mHeadSetReceiver:Landroid/content/BroadcastReceiver;

.field private static mIsBluetoothConnected:Z

.field private static mIsHeadsetConnected:Z

.field private static mIsMicOpen:Z

.field private static mIsMultiDeviceConnected:Z

.field private static mMode:I

.field private static mSCOReConnecteTimes:I

.field private static mScoThreadRunning:Z

.field protected static mSpeakerphoneOn:Z

.field private static maxVolCall:I

.field private static maxVolMusic:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 31
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    .line 32
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    .line 33
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGCloudVoiceNotify:Lcom/tencent/apollo/IGCloudVoiceNotify;

    .line 35
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    .line 36
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    .line 37
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    .line 38
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCheckDeviceFlag:Z

    .line 39
    sput v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolMusic:I

    .line 40
    sput v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolCall:I

    .line 42
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 43
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    .line 44
    sput v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioStatusEvent:I

    .line 45
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCO:Z

    .line 46
    const/4 v1, -0x1

    sput v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    .line 49
    sput v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    .line 50
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mScoThreadRunning:Z

    .line 51
    const/16 v1, -0x64

    sput v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I

    .line 52
    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->dataPath:Ljava/lang/String;

    .line 53
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    .line 54
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    .line 55
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    .line 61
    :try_start_0
    const-string v1, "apollo_voice"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;

    invoke-direct {v1}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;-><init>()V

    sput-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    new-instance v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$2;

    invoke-direct {v1}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$2;-><init>()V

    sput-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioDeviceListener:Lcom/tencent/apollo/AudioDeviceListener;

    return-void

    .line 62
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "load library failed!!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ApolloVoiceDeviceEnterVoipMode(I)V
    .locals 3
    .param p0, "nMode"    # I

    .prologue
    .line 350
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apolloVoice ApolloVoiceDeviceEnterVoipMode nMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 355
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public static ApolloVoiceDeviceExitVoipMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string v1, "apolloVoice"

    const-string v2, "apolloVoice ApolloVoiceDeviceExitVoipMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    .local v0, "bHeadSet":Z
    :goto_0
    return-void

    .line 162
    .end local v0    # "bHeadSet":Z
    :cond_0
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 163
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->IsHeadSet()Z

    move-result v0

    .line 164
    .restart local v0    # "bHeadSet":Z
    if-eqz v0, :cond_1

    .line 165
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 167
    :cond_1
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public static ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 92
    const-string v5, "apolloVoice"

    const-string v6, "GCloudVoice ApolloVoiceDeviceInit"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->CheckManifestPermission()Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    const-string v3, "apolloVoice"

    const-string v4, "Check the permissions GVoice needed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    sput-object p1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    .line 104
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/gcTestConfig.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->dataPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_3

    .line 116
    :try_start_1
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 117
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 119
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    sput v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolMusic:I

    .line 120
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    sput v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolCall:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :goto_2
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GCloudVoice::max music "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolMusic:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "max call =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->maxVolCall:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->registerHeadsetPlugReceiver()V

    .line 127
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceConfig;->SetContext(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceUDID;->SetContext(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceNetStatus;->SetContext(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->getAudioDeviceConnectionState()I

    move-result v2

    .line 132
    .local v2, "state":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    move v3, v4

    :cond_4
    sput-boolean v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    .line 133
    sget-boolean v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-eqz v3, :cond_5

    .line 134
    invoke-static {v4}, Lcom/tencent/apollo/ApolloVoiceEngine;->SetBluetoothState(Z)V

    .line 136
    :cond_5
    const-string v3, "apolloVoice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apollovoicemanager:: getMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;-><init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V

    sput-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioFocusChangeListener:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    .line 139
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioFocusChangeListener:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$AudioFocusChangeListener;

    invoke-virtual {v3, v5, v8, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 140
    .local v1, "result":I
    if-ne v1, v4, :cond_6

    .line 141
    const-string v3, "apolloVoice"

    const-string v4, "requestAudioFocus successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 110
    .end local v1    # "result":I
    .end local v2    # "state":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get path error,The exception is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init failed!!! The exception is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":I
    .restart local v2    # "state":I
    :cond_6
    const-string v3, "apolloVoice"

    const-string v4, "requestAudioFocus failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static ApolloVoiceDeviceSetMode(I)Z
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 538
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApolloVoiceDeviceSetMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    .line 542
    :cond_0
    sput p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    .line 543
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetDeviceConnection(I)V

    .line 544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ApolloVoiceDeviceUninit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    .line 149
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->unregisterHeadsetPlugReceiver()V

    .line 151
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 152
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 155
    :cond_0
    return-void
.end method

.method public static ApolloVoiceGetCurrMode()I
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static ApolloVoiceSetBluetooth(Z)V
    .locals 5
    .param p0, "bluetoothStart"    # Z

    .prologue
    const/4 v4, 0x3

    .line 173
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    :try_start_0
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApolloVoiceSetBluetooth,bluetoothStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ScoOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBluetoothState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    if-eqz p0, :cond_5

    .line 181
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 182
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 185
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 188
    :cond_3
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 189
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 191
    :cond_4
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 193
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 194
    const/16 v1, 0xa

    sput v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 201
    :cond_6
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 204
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 205
    const/16 v1, 0x14

    sput v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static ApolloVoiceSetDeviceConnection(I)V
    .locals 9
    .param p0, "audioStatusEvent"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 222
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->getAudioDeviceConnectionState()I

    move-result v1

    .line 223
    .local v1, "state":I
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApolloVoiceSetDeviceConnection,mMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " audioStatusEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isMicOpen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " multi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v2, -0x2

    :try_start_0
    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-ne v2, v3, :cond_3

    .line 230
    const/4 v2, -0x1

    sput v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    .line 231
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 234
    :cond_2
    if-ne v1, v7, :cond_3

    .line 235
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sparse-switch p0, :sswitch_data_0

    .line 277
    :cond_4
    :goto_1
    if-nez v1, :cond_d

    .line 278
    :try_start_1
    sget v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-le v2, v6, :cond_a

    .line 279
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-eq v2, v3, :cond_5

    .line 280
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 293
    :cond_5
    :goto_2
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    if-eqz v2, :cond_c

    .line 294
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 297
    :cond_6
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    .line 299
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 336
    :cond_7
    :goto_3
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApolloVoiceSetDeviceConnection after,mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ScoOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " speaker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBluetoothState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :sswitch_0
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    if-eqz v2, :cond_4

    .line 247
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApolloVoiceSetDeviceConnection, headsetConcected mIsMultiDeviceConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 253
    :sswitch_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 257
    :sswitch_2
    if-ne v1, v7, :cond_4

    .line 258
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    if-eqz v2, :cond_8

    .line 259
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 261
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 267
    :sswitch_3
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    if-eqz v2, :cond_9

    .line 268
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 270
    :cond_9
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto/16 :goto_1

    .line 283
    :cond_a
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-eqz v2, :cond_b

    .line 284
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, v8, :cond_5

    .line 285
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_2

    .line 288
    :cond_b
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_5

    .line 289
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_2

    .line 301
    :cond_c
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_3

    .line 304
    :cond_d
    if-ne v1, v5, :cond_11

    .line 305
    sget v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-le v2, v6, :cond_10

    .line 306
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-eq v2, v3, :cond_e

    .line 307
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 314
    :cond_e
    :goto_4
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 315
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 316
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 319
    :cond_f
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    goto/16 :goto_3

    .line 310
    :cond_10
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_e

    .line 311
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_4

    .line 320
    :cond_11
    if-ne v1, v7, :cond_7

    .line 321
    sget v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-le v2, v6, :cond_13

    .line 322
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    if-eq v2, v3, :cond_12

    .line 323
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 333
    :cond_12
    :goto_5
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 334
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    goto/16 :goto_3

    .line 326
    :cond_13
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-eqz v2, :cond_14

    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    if-eqz v2, :cond_14

    .line 327
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto :goto_5

    .line 329
    :cond_14
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 244
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
    .end sparse-switch
.end method

.method public static ApolloVoiceSetMicState(Z)V
    .locals 4
    .param p0, "isMicOpen"    # Z

    .prologue
    .line 548
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    .line 549
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetMicOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-nez p0, :cond_0

    .line 553
    :try_start_0
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    if-eqz v1, :cond_0

    .line 554
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ApolloVoiceSetSpeakerOn(Z)V
    .locals 3
    .param p0, "bSet"    # Z

    .prologue
    .line 525
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apolloVoiceDevice::SetSpeakerOn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->getAudioDeviceConnectionState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 533
    :cond_1
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 534
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    goto :goto_0
.end method

.method public static CheckManifestPermission()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    sget-object v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 87
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v5

    .line 70
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_0
    sget-object v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    sget-object v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1000

    .line 71
    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 73
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 75
    .local v2, "permissions":[Ljava/lang/String;
    array-length v8, v2

    move v7, v5

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 76
    .local v4, "x":Ljava/lang/String;
    const-string v9, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 77
    const-string v5, "apolloVoice"

    const-string v7, "Check permission ok."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    move v5, v6

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    const-string v9, "apolloVoice"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "permissions":[Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "x":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "apolloVoice"

    const-string v7, "getPackageName throw an exception !"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 85
    goto :goto_0
.end method

.method public static CheckPermiss()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 611
    :try_start_0
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 613
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 614
    const/4 v2, 0x1

    .line 619
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v2

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "apolloVoice"

    const-string v4, "CheckPermiss get an exception !"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static HaveMicrophonePermission()Z
    .locals 9

    .prologue
    const/16 v8, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 565
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->bPermissionOK:Z

    if-nez v5, :cond_1

    .line 605
    .local v2, "taragetSdkVersion":I
    :cond_0
    :goto_0
    return v3

    .line 568
    .end local v2    # "taragetSdkVersion":I
    :cond_1
    const/16 v2, 0x17

    .line 571
    .restart local v2    # "taragetSdkVersion":I
    :try_start_0
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    .line 572
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 571
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 573
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 574
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "targetSdkVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    if-ge v2, v8, :cond_2

    .line 584
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->CheckPermiss()Z

    move-result v5

    if-nez v5, :cond_2

    .line 585
    const-string v4, "apolloVoice"

    const-string v5, "NO Have microphone permission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v5, "apolloVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_4

    .line 592
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 595
    const-string v5, "apolloVoice"

    const-string v6, "No microphone permission"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v5, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mActivity:Landroid/app/Activity;

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "android.permission.RECORD_AUDIO"

    aput-object v6, v4, v3

    const/16 v6, 0x64

    invoke-static {v5, v4, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 600
    :cond_3
    const-string v3, "apolloVoice"

    const-string v5, "Have microphone permission"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 601
    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 605
    goto/16 :goto_0
.end method

.method private static IsHeadSet()Z
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetBluetoothSCOEnable(Z)V
    .locals 3
    .param p0, "bluetoothSCOEnable"    # Z

    .prologue
    .line 757
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetoothSCOEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    .line 759
    if-nez p0, :cond_0

    .line 760
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    .line 762
    :cond_0
    return-void
.end method

.method public static SetpreVoipMode(I)V
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 388
    if-ne p0, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    .line 389
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    return v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkBluetoothSco()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/tencent/apollo/AudioDeviceListener;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioDeviceListener:Lcom/tencent/apollo/AudioDeviceListener;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/tencent/apollo/IGCloudVoiceNotify;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGCloudVoiceNotify:Lcom/tencent/apollo/IGCloudVoiceNotify;

    return-object v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mScoThreadRunning:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioStatusEvent:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioStatusEvent:I

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCheckDeviceFlag:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCheckDeviceFlag:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    return v0
.end method

.method static synthetic access$600()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 26
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothState:I

    return p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCO:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCO:Z

    return p0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    return p0
.end method

.method public static checkAudioManagerIsInit()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 625
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 626
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 627
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    .line 628
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 629
    const-string v0, "apolloVoice"

    const-string v2, "apolloVoiceDevice::get AudioManager null....\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 638
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 632
    goto :goto_0

    .line 634
    :cond_1
    const-string v0, "apolloVoice"

    const-string v2, "apolloVoiceDevice::context is null....\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 635
    goto :goto_0

    :cond_2
    move v0, v2

    .line 638
    goto :goto_0
.end method

.method private static checkBluetoothSco()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 720
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->getAudioDeviceConnectionState()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 721
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMicOpen:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothSCOEnable:Z

    if-nez v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    sget v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    if-le v0, v1, :cond_2

    .line 725
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetBluetooth(Z)V

    goto :goto_0

    .line 728
    :cond_2
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mScoThreadRunning:Z

    if-nez v0, :cond_0

    .line 731
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBluetoothSco Thread Start! times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    if-nez v0, :cond_3

    .line 733
    new-instance v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    invoke-direct {v0, v3}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;-><init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    .line 735
    :cond_3
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceThread:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;

    if-nez v0, :cond_4

    .line 736
    new-instance v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;

    invoke-direct {v0, v3}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;-><init>(Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;)V

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceThread:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;

    .line 739
    :cond_4
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceHandler:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;

    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGVoiceThread:Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceThread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$GVoiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mScoThreadRunning:Z

    .line 741
    sget v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSCOReConnecteTimes:I

    goto :goto_0
.end method

.method public static getAudioDeviceConnectionState()I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 672
    const/4 v5, 0x0

    .line 673
    .local v5, "state":I
    const/4 v4, 0x0

    .local v4, "isWiredHeadSet":Z
    const/4 v3, 0x0

    .line 674
    .local v3, "isBluebooth":Z
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->checkAudioManagerIsInit()Z

    move-result v6

    if-nez v6, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v5

    .line 678
    :cond_1
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 679
    const/4 v5, 0x1

    .line 680
    const/4 v4, 0x1

    .line 683
    :cond_2
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v6, :cond_3

    .line 684
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    sput-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 685
    :cond_3
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 686
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 687
    .local v0, "a2dp":I
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    .line 688
    .local v1, "headset":I
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 690
    .local v2, "health":I
    if-ne v1, v9, :cond_4

    .line 691
    const/4 v5, 0x2

    .line 692
    const/4 v3, 0x1

    .line 695
    :cond_4
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 696
    sput-boolean v8, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    .line 697
    sget-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-nez v6, :cond_6

    .line 698
    const/4 v5, 0x1

    .line 699
    const-string v6, "apolloVoice"

    const-string v7, "getHeadsetDeviceStatus: wiredheadset actually!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_5
    :goto_1
    const-string v6, "apolloVoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHeadsetDeviceStatus state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " a2dp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " headset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " health:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsHeadsetConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsBluetoothConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 700
    :cond_6
    sget-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsHeadsetConnected:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsBluetoothConnected:Z

    if-eqz v6, :cond_5

    .line 701
    const/4 v5, 0x2

    .line 702
    const-string v6, "apolloVoice"

    const-string v7, "getHeadsetDeviceStatus: bluetooth actually!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 705
    :cond_7
    const/4 v6, 0x0

    sput-boolean v6, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsMultiDeviceConnected:Z

    goto :goto_1
.end method

.method private static registerHeadsetPlugReceiver()V
    .locals 5

    .prologue
    .line 370
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 385
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 373
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v2, "EVA-AL00"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Nexus 6P"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    :cond_2
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registe headset failed!!! The exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setGCloudVoiceNotify(Lcom/tencent/apollo/IGCloudVoiceNotify;)V
    .locals 0
    .param p0, "gCloudVoiceNotify"    # Lcom/tencent/apollo/IGCloudVoiceNotify;

    .prologue
    .line 642
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mGCloudVoiceNotify:Lcom/tencent/apollo/IGCloudVoiceNotify;

    .line 643
    return-void
.end method

.method private static unregisterHeadsetPlugReceiver()V
    .locals 4

    .prologue
    .line 360
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registe headset failed!!! The exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
