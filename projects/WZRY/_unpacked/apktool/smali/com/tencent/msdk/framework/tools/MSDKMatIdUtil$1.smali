.class final Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;
.super Ljava/lang/Thread;
.source "MSDKMatIdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->reqMatid(Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27
    .local v2, "start":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$000()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 29
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got reqMatid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 32
    const-string v1, "matId"

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    iget-object v1, p0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;

    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;->onSuccess(Ljava/lang/String;)V

    .line 47
    :goto_1
    return-void

    .line 36
    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 40
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "reqMatid matid timeout!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$1;->val$callback:Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;

    invoke-interface {v1}, Lcom/tencent/msdk/framework/tools/MSDKMatIdUtil$MatIdCallback;->onTimeout()V

    goto :goto_1
.end method
