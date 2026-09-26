.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, "fail"

    const-string v2, "start_play_record"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
