.class Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;
.super Ljava/lang/Object;
.source "VoiceUploader.java"

# interfaces
.implements Lcom/netease/cloud/nos/android/core/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

.field final synthetic val$finalBucketName:Ljava/lang/String;

.field final synthetic val$finalObjectName:Ljava/lang/String;

.field final synthetic val$finalToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalObjectName:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalBucketName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 3
    .param p1, "callRet"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onFailure(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 4
    .param p1, "callRet"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string v0, "gm_bridge VoiceUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nos onFailure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, v3, v3}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onProcess(Ljava/lang/Object;JJ)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 69
    return-void
.end method

.method public onSuccess(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 5
    .param p1, "callRet"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    .line 73
    const-string v0, "gm_bridge VoiceUploader"

    const-string v1, "nos onSuccess"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalObjectName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;->val$finalBucketName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method
