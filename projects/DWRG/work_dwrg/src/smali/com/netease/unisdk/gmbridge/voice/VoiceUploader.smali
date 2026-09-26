.class public Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;
.super Ljava/lang/Object;
.source "VoiceUploader.java"


# static fields
.field public static final NOS_TOKEN_URL:Ljava/lang/String; = "http://gmsdk.gameyw.netease.com/nos/gen_token"

.field private static final TAG:Ljava/lang/String; = "gm_bridge VoiceUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->callbackOnUIThread(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static callbackOnUIThread(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "listener"    # Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;
    .param p1, "success"    # Z
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;-><init>(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public static upload(Landroid/content/Context;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voiceFilePath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    .prologue
    .line 26
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method
