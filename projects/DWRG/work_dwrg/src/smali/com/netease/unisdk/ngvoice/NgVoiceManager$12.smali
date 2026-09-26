.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->uploadVoiceFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-boolean p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$success:Z

    iput-object p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$success:Z

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method
