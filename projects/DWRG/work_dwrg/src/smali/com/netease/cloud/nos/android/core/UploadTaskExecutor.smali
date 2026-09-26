.class public Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
.super Ljava/lang/Object;
.source "UploadTaskExecutor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private volatile task:Lcom/netease/cloud/nos/android/core/UploadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/netease/cloud/nos/android/core/UploadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/netease/cloud/nos/android/core/UploadTask;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 18
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    const-string v2, "cancel async task exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public get()Lcom/netease/cloud/nos/android/core/CallRet;
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    if-eqz v1, :cond_0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cloud/nos/android/core/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->LOGTAG:Ljava/lang/String;

    const-string v2, "get async task exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUpCancelled()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->isUpCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTask(Lcom/netease/cloud/nos/android/core/UploadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/netease/cloud/nos/android/core/UploadTask;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;->task:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 22
    return-void
.end method
