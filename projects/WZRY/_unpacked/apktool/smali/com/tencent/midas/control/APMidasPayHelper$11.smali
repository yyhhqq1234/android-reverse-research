.class Lcom/tencent/midas/control/APMidasPayHelper$11;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->pluginInitErrCallBack(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/control/APMidasPayHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/control/APMidasPayHelper;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$11;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, -0x64

    const/4 v6, 0x0

    .line 1221
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v1

    .line 1222
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.loadapk_error"

    const-string v4, ""

    .line 1225
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->getInitErrorMsg()Ljava/lang/String;

    move-result-object v5

    .line 1221
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$11;->val$activity:Landroid/app/Activity;

    const-string/jumbo v2, "\u817e\u8baf\u652f\u4ed8\u670d\u52a1\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1228
    new-instance v0, Lcom/tencent/midas/api/APMidasResponse;

    invoke-direct {v0}, Lcom/tencent/midas/api/APMidasResponse;-><init>()V

    .line 1229
    .local v0, "responseInfo":Lcom/tencent/midas/api/APMidasResponse;
    iput v7, v0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 1230
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    if-eqz v1, :cond_0

    .line 1231
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-interface {v1, v0}, Lcom/tencent/midas/api/IAPMidasPayCallBack;->MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V

    .line 1232
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 1233
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 1234
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1237
    :cond_0
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    if-eqz v1, :cond_1

    .line 1238
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u817e\u8baf\u652f\u4ed8\u670d\u52a1\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-interface {v1, v2, v7, v3}, Lcom/tencent/midas/api/IAPMidasNetCallBack;->MidasNetError(Ljava/lang/String;ILjava/lang/String;)V

    .line 1239
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 1240
    const-string v1, ""

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 1241
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 1242
    sput-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1244
    :cond_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v1

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 1245
    return-void
.end method
