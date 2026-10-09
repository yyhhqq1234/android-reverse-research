.class public Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;
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
    name = "ShareListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 329
    const-string v0, "sharelistener opensdk callback:onCancel"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->ShareCancel()V

    .line 331
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 310
    const-string v0, "sharelistener opensdk callback:onComplete"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->ShareComplete()V

    .line 312
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2
    .param p1, "uiError"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 316
    const-string v1, "sharelistener opensdk callback:onError"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 317
    if-eqz p1, :cond_1

    .line 318
    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 319
    .local v0, "desc":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->ShareError(Ljava/lang/String;)V

    .line 325
    .end local v0    # "desc":Ljava/lang/String;
    :goto_1
    return-void

    .line 318
    :cond_0
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 321
    :cond_1
    const-string v1, "opensdk happend unknown error!"

    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->ShareError(Ljava/lang/String;)V

    goto :goto_1
.end method
