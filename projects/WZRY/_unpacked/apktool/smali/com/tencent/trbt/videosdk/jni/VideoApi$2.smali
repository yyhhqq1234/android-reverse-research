.class Lcom/tencent/trbt/videosdk/jni/VideoApi$2;
.super Ljava/lang/Object;
.source "VideoApi.java"

# interfaces
.implements Lcom/tencent/trbt/videosdk/net/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/trbt/videosdk/jni/VideoApi;->notifyVideoEnd(Ljava/lang/String;[B)V
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
        "Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;",
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
    .line 98
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi$2;->this$0:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFail(ILcom/qq/taf/jce/JceStruct;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "request"    # Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 109
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseFail() called with: code = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], request = []"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public bridge synthetic onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 0

    .prologue
    .line 98
    check-cast p2, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/trbt/videosdk/jni/VideoApi$2;->onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;)V

    return-void
.end method

.method public onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;)V
    .locals 3
    .param p1, "request"    # Lcom/qq/taf/jce/JceStruct;
    .param p2, "response"    # Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;

    .prologue
    .line 102
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseSuccess() called with: request = [], response = ["

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

    .line 104
    return-void
.end method
