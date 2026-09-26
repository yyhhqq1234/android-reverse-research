.class public Lcom/netease/epay/sdk/pay/model/PayingResponse;
.super Ljava/lang/Object;
.source "PayingResponse.java"


# instance fields
.field public hongbaoAmount:Ljava/lang/String;

.field public isShowPaySuccessInfo:Z

.field public isUsedHongbao:Z

.field public orderAmount:Ljava/lang/String;

.field public promotionAmount:Ljava/lang/String;

.field public refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->isShowPaySuccessInfo:Z

    return-void
.end method
