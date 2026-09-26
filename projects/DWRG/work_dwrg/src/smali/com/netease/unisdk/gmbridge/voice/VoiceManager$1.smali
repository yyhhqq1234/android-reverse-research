.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/ngvoice/NgVoiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "voiceFilePath"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public onPlaybackFinish(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 83
    const-string v0, "gm_bridge VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackFinish, success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, ""

    const-string v2, "stop_play_record"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "voiceFilePath"    # Ljava/lang/String;
    .param p3, "duration"    # F
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v0, "gm_bridge VoiceManager"

    const-string v1, "onRecordFinish"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$002(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Z)Z

    .line 39
    if-eqz p1, :cond_1

    .line 41
    const-string v0, "gm_bridge VoiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$100(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;Ljava/lang/String;F)V

    invoke-static {v0, p2, v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "params":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;->callback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPermissions(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "translatedText"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method
