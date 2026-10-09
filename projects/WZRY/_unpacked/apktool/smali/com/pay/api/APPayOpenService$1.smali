.class final Lcom/pay/api/APPayOpenService$1;
.super Ljava/lang/Object;
.source "APPayOpenService.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pay/api/APPayOpenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 5
    .param p1, "responseInfo"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    .line 33
    invoke-static {}, Lcom/pay/api/APPayOpenService;->access$000()Lcom/pay/api/IAPPayOpenServiceCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    new-instance v1, Lcom/pay/api/APPayResponseInfo;

    invoke-direct {v1}, Lcom/pay/api/APPayResponseInfo;-><init>()V

    .line 36
    .local v1, "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :try_start_0
    invoke-static {p1, v1}, Lcom/tencent/midas/comm/APBeanUtil;->copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    invoke-static {}, Lcom/pay/api/APPayOpenService;->access$000()Lcom/pay/api/IAPPayOpenServiceCallBack;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pay/api/IAPPayOpenServiceCallBack;->PayOpenServiceCallBack(Lcom/pay/api/APPayResponseInfo;)V

    .line 44
    .end local v1    # "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :cond_0
    return-void

    .line 37
    .restart local v1    # "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "APPayOpenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "midasCallBack copyProperties error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public MidasPayNeedLogin()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/pay/api/APPayOpenService;->access$000()Lcom/pay/api/IAPPayOpenServiceCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/pay/api/APPayOpenService;->access$000()Lcom/pay/api/IAPPayOpenServiceCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/pay/api/IAPPayOpenServiceCallBack;->PayOpenServiceNeedLogin()V

    .line 29
    :cond_0
    return-void
.end method
