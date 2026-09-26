.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->translateFinish(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method
