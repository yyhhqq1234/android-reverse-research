.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStartRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$voiceFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;->val$voiceFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;->val$voiceFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$600(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    .line 471
    return-void
.end method
