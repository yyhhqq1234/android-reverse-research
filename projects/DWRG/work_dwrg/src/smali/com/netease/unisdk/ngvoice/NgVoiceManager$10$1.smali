.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$10$1;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;

    iget-object v0, v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onPlaybackFinish(Z)V

    .line 298
    return-void
.end method
