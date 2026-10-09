.class final Lcom/tencent/midas/api/APMidasPayAPI$1;
.super Ljava/lang/Object;
.source "APMidasPayAPI.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/api/APMidasPayAPI;->launchPurchaseFlow(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/APOnIabPurchaseFinished;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/tencent/midas/api/APOnIabPurchaseFinished;


# direct methods
.method constructor <init>(Lcom/tencent/midas/api/APOnIabPurchaseFinished;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasPayAPI$1;->val$callBack:Lcom/tencent/midas/api/APOnIabPurchaseFinished;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 4
    .param p1, "responseInfo"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/tencent/midas/api/APMidasResponse;->getResultCode()I

    move-result v1

    .line 612
    .local v1, "ret":I
    iget v2, p1, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 613
    const/16 v1, 0x65

    .line 616
    :cond_0
    new-instance v0, Lcom/tencent/midas/api/request/APIabResult;

    invoke-virtual {p1}, Lcom/tencent/midas/api/APMidasResponse;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/midas/api/request/APIabResult;-><init>(ILjava/lang/String;)V

    .line 617
    .local v0, "result":Lcom/tencent/midas/api/request/APIabResult;
    iget-object v2, p0, Lcom/tencent/midas/api/APMidasPayAPI$1;->val$callBack:Lcom/tencent/midas/api/APOnIabPurchaseFinished;

    invoke-virtual {p1}, Lcom/tencent/midas/api/APMidasResponse;->getReceipt()Lcom/tencent/midas/api/request/APPurchase;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/tencent/midas/api/APOnIabPurchaseFinished;->onIabPurchaseFinished(Lcom/tencent/midas/api/request/APIabResult;Lcom/tencent/midas/api/request/APPurchase;)V

    .line 618
    return-void
.end method

.method public MidasPayNeedLogin()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasPayAPI$1;->val$callBack:Lcom/tencent/midas/api/APOnIabPurchaseFinished;

    invoke-interface {v0}, Lcom/tencent/midas/api/APOnIabPurchaseFinished;->onIabyNeedLogin()V

    .line 606
    return-void
.end method
