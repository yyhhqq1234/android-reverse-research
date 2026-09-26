.class Lcom/netease/pharos/PharosProxy$1;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$1;->this$0:Lcom/netease/pharos/PharosProxy;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    const/16 v2, 0xb

    .line 217
    .local v2, "result":I
    const/4 v0, 0x0

    .line 218
    .local v0, "DevicesResult":I
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->isStart()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const-string v3, "PharosProxy"

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/pharos/PharosProxy$1;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-static {v4}, Lcom/netease/pharos/PharosProxy;->access$0(Lcom/netease/pharos/PharosProxy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->init(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->start()I

    move-result v0

    .line 224
    :cond_0
    const-string v3, "PharosProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b\uff0c\u7ed3\u679c="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v3, "PharosProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b\uff0c\u8fd4\u56de\u7801="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "LocationResult":I
    invoke-static {}, Lcom/netease/pharos/location/LocationCheckProxy;->getInstances()Lcom/netease/pharos/location/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/location/LocationCheckProxy;->isStart()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    const-string v3, "PharosProxy"

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/netease/pharos/location/LocationCheckProxy;->getInstances()Lcom/netease/pharos/location/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/location/LocationCheckProxy;->start()I

    move-result v1

    .line 233
    :cond_1
    const-string v3, "PharosProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u7ed3\u679c="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "PharosProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u8fd4\u56de\u7801="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 240
    const-string v3, "PharosProxy"

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->start()V

    .line 242
    const-string v3, "PharosProxy"

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b\uff0c\u7ed3\u675f"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    const-string v3, "PharosProxy"

    const-string v4, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    .line 250
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->start()V

    .line 251
    return-void
.end method
