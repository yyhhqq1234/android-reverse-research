.class public Lcom/pay/network/model/APDataReportAns;
.super Lcom/pay/http/APBaseHttpAns;
.source "APDataReportAns.java"


# direct methods
.method public constructor <init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "handle"    # Lcom/pay/http/APHttpHandle;
    .param p2, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pay/http/APHttpHandle;",
            "Lcom/pay/http/IAPHttpAnsObserver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/APBaseHttpReq;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "reqMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/pay/http/APBaseHttpReq;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pay/http/APBaseHttpAns;-><init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private progressJson([BLcom/pay/http/APBaseHttpReq;)V
    .locals 2
    .param p1, "content"    # [B
    .param p2, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 45
    const-string v0, "MidasPlugin.jar APDataReportAns"

    const-string v1, "report ok"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onErrorAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 37
    return-void
.end method

.method public onFinishAns([BLcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "content"    # [B
    .param p2, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/pay/network/model/APDataReportAns;->progressJson([BLcom/pay/http/APBaseHttpReq;)V

    .line 32
    return-void
.end method

.method public onReceiveAns([BIJLcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "b"    # I
    .param p3, "downsize"    # J
    .param p5, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 27
    return-void
.end method

.method public onStartAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 21
    return-void
.end method

.method public onStopAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 42
    return-void
.end method
