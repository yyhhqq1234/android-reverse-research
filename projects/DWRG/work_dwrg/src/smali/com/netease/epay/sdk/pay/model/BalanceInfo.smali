.class public Lcom/netease/epay/sdk/pay/model/BalanceInfo;
.super Ljava/lang/Object;
.source "BalanceInfo.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/model/IPayChooser;


# instance fields
.field public amount:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public useable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(Ljava/math/BigDecimal;)Z
    .locals 3
    .param p0, "data"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v0, 0x0

    .line 39
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 43
    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getBalanceDesp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    const-string v1, "\u4f59\u989d  (\u4f59\u989d\uffe5%1$s)"

    .line 26
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 27
    :cond_0
    const-string v0, ""

    .line 31
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBalanceMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-nez v0, :cond_0

    .line 48
    const-string v0, ""

    .line 50
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBalancePayingDesp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 16
    :cond_0
    const-string v0, ""

    .line 20
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f59\u989d\u652f\u4ed8(\u4f59\u989d:\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->amount:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isBalanceUsable()Z
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v0, :cond_0

    const-string v0, "USEABLE"

    sget-object v1, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->useable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBankId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "balance"

    return-object v0
.end method

.method public getDesp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->getBalanceMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->getBalanceDesp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsable()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->isBalanceUsable()Z

    move-result v0

    return v0
.end method
