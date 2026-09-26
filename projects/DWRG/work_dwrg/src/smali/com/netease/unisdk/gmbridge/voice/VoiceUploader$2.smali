.class final Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;
.super Ljava/lang/Object;
.source "VoiceUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->callbackOnUIThread(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

.field final synthetic val$objectName:Ljava/lang/String;

.field final synthetic val$success:Z

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$success:Z

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$objectName:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$bucketName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$success:Z

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$objectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$2;->val$bucketName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;->onFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
