.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;
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
    .line 158
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$400(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;)V

    .line 162
    return-void
.end method
