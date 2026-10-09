.class final Lcom/pay/api/APPayGameService$1;
.super Ljava/lang/Object;
.source "APPayGameService.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pay/api/APPayGameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 5
    .param p1, "responseInfo"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    .line 52
    invoke-static {}, Lcom/pay/api/APPayGameService;->access$000()Lcom/pay/api/IAPPayGameServiceCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v1, Lcom/pay/api/APPayResponseInfo;

    invoke-direct {v1}, Lcom/pay/api/APPayResponseInfo;-><init>()V

    .line 55
    .local v1, "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :try_start_0
    invoke-static {p1, v1}, Lcom/tencent/midas/comm/APBeanUtil;->copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    const-string v2, "midasCallBack"

    const-string v3, "MidasPayCallBack"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/pay/api/APPayGameService;->access$000()Lcom/pay/api/IAPPayGameServiceCallBack;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pay/api/IAPPayGameServiceCallBack;->PayGameServiceCallBack(Lcom/pay/api/APPayResponseInfo;)V

    .line 64
    .end local v1    # "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :cond_0
    return-void

    .line 56
    .restart local v1    # "payResponseInfo":Lcom/pay/api/APPayResponseInfo;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "APPayGameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "midas callBack copyProperties error:"

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
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/pay/api/APPayGameService;->access$000()Lcom/pay/api/IAPPayGameServiceCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "midasCallBack"

    const-string v1, "MidasPayNeedLogin"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/pay/api/APPayGameService;->access$000()Lcom/pay/api/IAPPayGameServiceCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/pay/api/IAPPayGameServiceCallBack;->PayGameNeedLogin()V

    .line 48
    :cond_0
    return-void
.end method
