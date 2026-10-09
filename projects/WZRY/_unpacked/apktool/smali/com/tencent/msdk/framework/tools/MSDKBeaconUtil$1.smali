.class final Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;
.super Ljava/lang/Thread;
.source "MSDKBeaconUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->reqMatid(Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    .local v2, "start":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$000()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 48
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got QIMEI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 51
    const-string v1, "matId"

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v1, p0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;->onSuccess(Ljava/lang/String;)V

    .line 66
    :goto_1
    return-void

    .line 55
    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "Get QIMEI timeout(getQIMEI)!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;

    invoke-interface {v1}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;->onTimeout()V

    goto :goto_1
.end method
