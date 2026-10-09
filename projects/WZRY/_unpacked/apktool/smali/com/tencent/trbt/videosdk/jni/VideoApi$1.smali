.class Lcom/tencent/trbt/videosdk/jni/VideoApi$1;
.super Ljava/lang/Object;
.source "VideoApi.java"

# interfaces
.implements Lcom/tencent/trbt/videosdk/net/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/trbt/videosdk/jni/VideoApi;->getVideoCfg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/trbt/videosdk/net/NetworkCallback",
        "<",
        "Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/trbt/videosdk/jni/VideoApi;


# direct methods
.method constructor <init>(Lcom/tencent/trbt/videosdk/jni/VideoApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/trbt/videosdk/jni/VideoApi;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;->this$0:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFail(ILcom/qq/taf/jce/JceStruct;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "request"    # Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 62
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseFail() called with: code = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], request = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public bridge synthetic onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 0

    .prologue
    .line 35
    check-cast p2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;->onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;)V

    return-void
.end method

.method public onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;)V
    .locals 7
    .param p1, "request"    # Lcom/qq/taf/jce/JceStruct;
    .param p2, "response"    # Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    .prologue
    const/4 v6, 0x1

    .line 39
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseSuccess() called with: request = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], response = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v3, p2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    if-nez v3, :cond_1

    .line 42
    iget-object v3, p2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "gameSwitchCfg":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "cfg":I
    if-nez v0, :cond_2

    .line 46
    iget-object v3, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;->this$0:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$102(Lcom/tencent/trbt/videosdk/jni/VideoApi;Z)Z

    .line 51
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResponseSuccess()["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "cfg":I
    .end local v2    # "gameSwitchCfg":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v0    # "cfg":I
    .restart local v2    # "gameSwitchCfg":Ljava/lang/String;
    :cond_2
    if-ne v0, v6, :cond_0

    .line 48
    iget-object v3, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;->this$0:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$102(Lcom/tencent/trbt/videosdk/jni/VideoApi;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0    # "cfg":I
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
