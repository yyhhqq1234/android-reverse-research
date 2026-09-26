.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$9$1;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;

    iget-object v0, v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onPlaybackFinish(Z)V

    .line 285
    return-void
.end method
