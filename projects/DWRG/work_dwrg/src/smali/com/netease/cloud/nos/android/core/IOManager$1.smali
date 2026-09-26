.class Lcom/netease/cloud/nos/android/core/IOManager$1;
.super Ljava/lang/Object;
.source "IOManager.java"

# interfaces
.implements Lcom/netease/cloud/nos/android/core/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cloud/nos/android/core/IOManager;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic val$result:[Lcom/netease/cloud/nos/android/http/HttpResult;


# direct methods
.method constructor <init>([Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/IOManager$1;->val$result:[Lcom/netease/cloud/nos/android/http/HttpResult;

    iput-object p2, p0, Lcom/netease/cloud/nos/android/core/IOManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 3
    .param p1, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/netease/cloud/nos/android/core/IOManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http query failed status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/IOManager$1;->val$result:[Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 74
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/IOManager$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/Util;->releaseLock(Ljava/util/concurrent/CountDownLatch;)V

    .line 75
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/netease/cloud/nos/android/core/IOManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http query success"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
