.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

.field final synthetic val$duration:F

.field final synthetic val$voiceFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;Ljava/lang/String;F)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$voiceFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$duration:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "success"    # Z
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "oldName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "newName":Ljava/lang/String;
    const-string v0, "gm_bridge VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 54
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    iget v5, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$duration:F

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "params":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;->callback(Ljava/lang/String;)V

    .line 56
    return-void
.end method
