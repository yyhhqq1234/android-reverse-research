.class Lcom/netease/download/downloader/DownloadProxy$1;
.super Ljava/lang/Object;
.source "DownloadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/downloader/DownloadProxy;->asyncDownloadArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloader/DownloadProxy;

.field private final synthetic val$pContext:Landroid/content/Context;

.field private final synthetic val$pListener:Lcom/netease/download/listener/DownloadListener;

.field private final synthetic val$paramsJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/download/downloader/DownloadProxy;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iput-object p2, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pListener:Lcom/netease/download/listener/DownloadListener;

    iput-object p4, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    sput-boolean v4, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 162
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/download/reporter/ReportProxy;->setNeedDeleteFile(Z)V

    .line 163
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadParams [createParamsArray] \u4e0b\u8f7d\u524d\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08\u4e0a\u4e00\u6b21\u9057\u7559\u6587\u4ef6\uff09"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Z)V

    .line 165
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pListener:Lcom/netease/download/listener/DownloadListener;

    invoke-static {v0, v1, v4}, Lcom/netease/download/downloader/DownloadProxy;->access$0(Lcom/netease/download/downloader/DownloadProxy;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V

    .line 168
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->access$1(Lcom/netease/download/downloader/DownloadProxy;)V

    .line 170
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/network/NetworkStatus;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    sput-boolean v5, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 173
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    const/16 v1, 0xb

    const-string v6, "__DOWNLOAD_NETWORK_LOST__"

    const-string v7, "__DOWNLOAD_NETWORK_LOST__"

    const-string v8, "0"

    move-wide v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] no network connected"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    const-string v1, "downloadid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "downloadId":Ljava/lang/String;
    const-string v0, "DownloadProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadProxy [asyncDownloadArray] downloadId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DownloadInitInfo downloadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getmDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$paramsJson:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/netease/download/downloader/DownloadProxy;->access$2(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/downloader/DownloadProxy;->access$3(Lcom/netease/download/downloader/DownloadProxy;Ljava/util/List;)V

    .line 188
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->init()V

    .line 190
    const-string v0, "DownloadProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadProxy [asyncDownloadArray] this is a wifi only task1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "DownloadProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadProxy [asyncDownloadArray] this is a wifi only task2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->ismWifiOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->val$pContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadInitInfo;->ismWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] this is a wifi only task"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->access$4(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->access$4(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 198
    :cond_3
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] mParamsList params error"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/download/reporter/ReportProxy;->setOpen(Z)V

    goto/16 :goto_0

    .line 203
    :cond_4
    const-string v0, "list"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadInitInfo;->getmType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] \u5217\u8868\u6587\u4ef6\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->access$4(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/download/downloader/DownloadParams;

    .line 207
    .local v10, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    if-eqz v10, :cond_0

    .line 208
    invoke-static {}, Lcom/netease/download/config2/PatchListProxy;->getInstances()Lcom/netease/download/config2/PatchListProxy;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10}, Lcom/netease/download/config2/PatchListProxy;->init(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V

    .line 209
    invoke-static {}, Lcom/netease/download/config2/PatchListProxy;->getInstances()Lcom/netease/download/config2/PatchListProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/PatchListProxy;->start()I

    goto/16 :goto_0

    .line 213
    .end local v10    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    :cond_5
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] patch\u6587\u4ef6\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/netease/download/task/Pre;->getInstatnces()Lcom/netease/download/task/Pre;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/task/Pre;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/netease/download/task/Pre;->getInstatnces()Lcom/netease/download/task/Pre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/task/Pre;->start()I

    move-result v11

    .line 217
    .local v11, "preResult":I
    const-string v0, "DownloadProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9884\u5904\u7406\u7ed3\u679c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-nez v11, :cond_6

    .line 220
    const-string v0, "DownloadProxy"

    const-string v1, "\u5f00\u542f\u4e00\u4e2apatch\u7cfb\u5217\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadProxy$1;->this$0:Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {v2}, Lcom/netease/download/downloader/DownloadProxy;->access$4(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/handler/Dispatcher;->startSyn(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_0

    .line 224
    :cond_6
    const-string v0, "DownloadProxy"

    const-string v1, "\u9884\u5904\u7406\u4e0d\u6210\u529f\uff0c\u76f4\u63a5\u4e0a\u4f20\u65e5\u5fd7\u3002"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/reporter/ReportProxy;->close(J)V

    goto/16 :goto_0
.end method
