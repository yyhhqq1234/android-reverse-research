.class Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;
.super Ljava/lang/Object;
.source "SDKConfigMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->ensureConfigLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;


# direct methods
.method constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;->this$0:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;->this$0:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-static {v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->access$000(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;->this$0:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;->this$0:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->access$100(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->access$200(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;Landroid/content/Context;)V

    .line 93
    :cond_0
    return-void
.end method
