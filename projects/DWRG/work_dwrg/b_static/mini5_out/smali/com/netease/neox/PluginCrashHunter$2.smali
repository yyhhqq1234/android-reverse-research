.class Lcom/netease/neox/PluginCrashHunter$2;
.super Ljava/lang/Object;
.source "PluginCrashHunter.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginCrashHunter;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginCrashHunter;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginCrashHunter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/netease/neox/PluginCrashHunter$2;->this$0:Lcom/netease/neox/PluginCrashHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prePostHandle()V
    .locals 4

    .line 142
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getUploadFileDir()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeCrash()Z

    move-result v1

    .line 145
    invoke-static {v0, v1}, Lcom/netease/neox/PluginCrashHunter;->access$100(Ljava/lang/String;Z)V

    .line 146
    iget-object v2, p0, Lcom/netease/neox/PluginCrashHunter$2;->this$0:Lcom/netease/neox/PluginCrashHunter;

    invoke-static {v2}, Lcom/netease/neox/PluginCrashHunter;->access$200(Lcom/netease/neox/PluginCrashHunter;)Lcom/netease/neox/PluginCrashHunter$IPrePostListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/netease/neox/PluginCrashHunter$2;->this$0:Lcom/netease/neox/PluginCrashHunter;

    invoke-static {v2}, Lcom/netease/neox/PluginCrashHunter;->access$200(Lcom/netease/neox/PluginCrashHunter;)Lcom/netease/neox/PluginCrashHunter$IPrePostListener;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/neox/PluginCrashHunter$2;->this$0:Lcom/netease/neox/PluginCrashHunter;

    invoke-static {v3}, Lcom/netease/neox/PluginCrashHunter;->access$300(Lcom/netease/neox/PluginCrashHunter;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/netease/neox/PluginCrashHunter$IPrePostListener;->onPrePost(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
