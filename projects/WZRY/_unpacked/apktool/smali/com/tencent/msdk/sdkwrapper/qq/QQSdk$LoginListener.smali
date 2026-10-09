.class public Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;
.super Ljava/lang/Object;
.source "QQSdk.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 360
    const-string v0, "login opensdk callback:onCancel"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->sdkLoginCancel()V

    .line 362
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 337
    const-string v1, "login opensdk callback:onComplete"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 338
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lorg/json/JSONObject;

    .line 340
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete form opensdk, object is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->sdkLoginComplete(Ljava/lang/String;)V

    .line 346
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string v1, "onComplete form opensdk error, object is not a json!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 344
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->sdkLoginComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .param p1, "uiError"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 350
    const-string v0, "login opensdk callback:onError"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget v0, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->sdkLoginError(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    const-string v2, "opensdk happend unknown error!"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->sdkLoginError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
