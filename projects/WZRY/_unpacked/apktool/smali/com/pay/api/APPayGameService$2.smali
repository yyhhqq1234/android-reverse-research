.class final Lcom/pay/api/APPayGameService$2;
.super Ljava/lang/Object;
.source "APPayGameService.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasNetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pay/api/APPayGameService;->startMpNetWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mpAns:Lcom/pay/network/model/APMpAns;

.field final synthetic val$observer:Lcom/pay/http/IAPHttpAnsObserver;


# direct methods
.method constructor <init>(Lcom/pay/http/IAPHttpAnsObserver;Lcom/pay/network/model/APMpAns;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/pay/api/APPayGameService$2;->val$observer:Lcom/pay/http/IAPHttpAnsObserver;

    iput-object p2, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MidasNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    iput p2, v0, Lcom/pay/network/model/APMpAns;->resultCode:I

    .line 264
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    iput-object p3, v0, Lcom/pay/network/model/APMpAns;->resultMsg:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$observer:Lcom/pay/http/IAPHttpAnsObserver;

    iget-object v1, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    invoke-interface {v0, v1}, Lcom/pay/http/IAPHttpAnsObserver;->onError(Lcom/pay/http/APBaseHttpAns;)V

    .line 266
    return-void
.end method

.method public MidasNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "mpJson"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pay/network/model/APMpAns;->onFinishAns([BLcom/pay/http/APBaseHttpReq;)V

    .line 258
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$observer:Lcom/pay/http/IAPHttpAnsObserver;

    iget-object v1, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    invoke-interface {v0, v1}, Lcom/pay/http/IAPHttpAnsObserver;->onFinish(Lcom/pay/http/APBaseHttpAns;)V

    .line 259
    return-void
.end method

.method public MidasNetStop(Ljava/lang/String;)V
    .locals 2
    .param p1, "reqType"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/pay/api/APPayGameService$2;->val$observer:Lcom/pay/http/IAPHttpAnsObserver;

    iget-object v1, p0, Lcom/pay/api/APPayGameService$2;->val$mpAns:Lcom/pay/network/model/APMpAns;

    invoke-interface {v0, v1}, Lcom/pay/http/IAPHttpAnsObserver;->onStop(Lcom/pay/http/APBaseHttpAns;)V

    .line 253
    return-void
.end method
