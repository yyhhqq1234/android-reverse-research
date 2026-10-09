.class Lcom/tencent/component/plugin/DefendService$1;
.super Landroid/os/Handler;
.source "DefendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/DefendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/DefendService;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/DefendService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/DefendService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/component/plugin/DefendService$1;->this$0:Lcom/tencent/component/plugin/DefendService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const-string v3, "DefendService"

    const-string v4, "receive msg:1"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 75
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v3, "_defend_service_plugin_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "pluginId":Ljava/lang/String;
    const-string v3, "_defend_service_startgame_pkgname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "_defend_service_plugin_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    const-string v3, "_defend_service_startgame_pkgname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/tencent/component/plugin/DefendService$1;->this$0:Lcom/tencent/component/plugin/DefendService;

    iget-object v4, p0, Lcom/tencent/component/plugin/DefendService$1;->this$0:Lcom/tencent/component/plugin/DefendService;

    invoke-static {v4}, Lcom/tencent/component/plugin/DefendService;->access$000(Lcom/tencent/component/plugin/DefendService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4, v0}, Lcom/tencent/component/plugin/DefendService;->access$100(Lcom/tencent/component/plugin/DefendService;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
