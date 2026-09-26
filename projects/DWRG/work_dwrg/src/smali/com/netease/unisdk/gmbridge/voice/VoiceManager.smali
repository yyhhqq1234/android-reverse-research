.class public Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge VoiceManager"

.field private static sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;


# instance fields
.field private mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

.field private mContext:Landroid/content/Context;

.field private mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field private mRecording:Z

.field private mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    .line 94
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .line 96
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->setCallback(Lcom/netease/unisdk/ngvoice/NgVoiceCallback;)V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # F

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getCallbackJsonParams(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startPlay(Ljava/lang/String;)V

    return-void
.end method

.method private getCallbackJsonParams(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 4
    .param p1, "success"    # Z
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;
    .param p5, "duration"    # F

    .prologue
    .line 195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "success"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v2, "token"

    if-eqz p2, :cond_1

    .end local p2    # "token":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v2, "objectName"

    if-eqz p3, :cond_2

    .end local p3    # "objectName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "bucketName"

    if-eqz p4, :cond_3

    .end local p4    # "bucketName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "duration"

    float-to-int v3, p5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_4
    return-object v2

    .line 196
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "objectName":Ljava/lang/String;
    .restart local p4    # "bucketName":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 197
    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 198
    .end local p2    # "token":Ljava/lang/String;
    :cond_2
    const-string p3, ""

    goto :goto_2

    .line 199
    .end local p3    # "objectName":Ljava/lang/String;
    :cond_3
    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 202
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local p4    # "bucketName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    sget-object v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStartPlayback(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, "success"

    const-string v2, "start_play_record"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method


# virtual methods
.method public cancelRecord()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntCancelRecord()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    .line 190
    return-void
.end method

.method public playback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ng_voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    const-string v3, "gm_bridge VoiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voicePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startPlay(Ljava/lang/String;)V

    .line 176
    :goto_1
    return-void

    .line 128
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v3, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public startRecord(Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;)V
    .locals 2
    .param p1, "webViewCallbackListener"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    .line 115
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStartRecord(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStopPlayback()V

    .line 185
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStopRecord()V

    .line 121
    return-void
.end method
