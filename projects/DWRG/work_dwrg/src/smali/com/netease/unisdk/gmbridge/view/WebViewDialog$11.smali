.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->registerBatteryReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryChanged(Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)V
    .locals 2
    .param p1, "batteryInfo"    # Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$500(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$500(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$502(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 431
    :cond_0
    const-string v0, "gm_bridge WebViewDialog"

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$602(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    .line 433
    return-void
.end method
