.class public Lcom/netease/epay/sdk/pay/model/GetPayAmount;
.super Ljava/lang/Object;
.source "GetPayAmount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;
    }
.end annotation


# instance fields
.field public amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initAmountData()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    .line 25
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    .line 26
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;->payOrderAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;->payOrderAmount:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;->orderAmount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;->orderAmount:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/GetPayAmount;->amount:Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;->deductionDetail:Lcom/netease/epay/sdk/pay/model/Deduction;

    sput-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    goto :goto_0
.end method
