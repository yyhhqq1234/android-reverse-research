.class final Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;
.super Ljava/lang/Object;
.source "APMidasPluginDownloadUtils.java"

# interfaces
.implements Lcom/tencent/midas/download/IAPMidasPluginDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->handlePureH5UpdateJsAlertLogic(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;->val$downInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 318
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "PDUtils"

    const-string v1, "Got h5 update alert message! List download success!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;->val$downInfos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->access$000(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 326
    return-void
.end method
