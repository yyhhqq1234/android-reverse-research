.class public Lcom/netease/epay/sdk/pay/model/HomeData;
.super Lcom/netease/epay/sdk/pay/model/GetPayAmount;
.source "HomeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;,
        Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;
    }
.end annotation


# instance fields
.field public accountMobile:Ljava/lang/String;

.field public accountName:Ljava/lang/String;

.field public accountState:Ljava/lang/String;

.field public balanceInfo:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

.field public cardInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field public defaultPayMethod:Ljava/lang/String;

.field public fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

.field public h5Info:Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;

.field public hasShortPwd:Z

.field public promoteLimitDto:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/model/GetPayAmount;-><init>()V

    return-void
.end method


# virtual methods
.method public initHomeData(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->accountState:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->accountMobile:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountMobile:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->accountName:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    .line 60
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->hasShortPwd:Z

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->cardInfos:Ljava/util/ArrayList;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    .line 62
    const-string v0, "balance"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->defaultPayMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->promoteLimitDto:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    sput-object v0, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->balanceInfo:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    sput-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    .line 72
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

    invoke-virtual {p0, v0, p1}, Lcom/netease/epay/sdk/pay/model/HomeData;->parsePayFinger(Lcom/netease/epay/sdk/base/model/FingerprintDto;Landroid/content/Context;)V

    .line 74
    sput-boolean v2, Lcom/netease/epay/sdk/pay/c;->f:Z

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanSetFingerprintPay:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isOpenFingerprintPay:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->e:Z

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->fingerprintPermissionDto:Lcom/netease/epay/sdk/base/model/FingerprintDto;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanUseFingerprintPay:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->d:Z

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/model/HomeData;->initAmountData()V

    .line 80
    return-void

    .line 64
    :cond_1
    const-string v0, "quickpay"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/model/HomeData;->defaultPayMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sput v2, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, -0x2

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    goto :goto_0
.end method

.method public parsePayFinger(Lcom/netease/epay/sdk/base/model/FingerprintDto;Landroid/content/Context;)V
    .locals 4
    .param p1, "dto"    # Lcom/netease/epay/sdk/base/model/FingerprintDto;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/Root;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/Root;->isDeviceRooted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iput-boolean v3, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanSetFingerprintPay:Z

    .line 85
    iput-boolean v3, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanUseFingerprintPay:Z

    .line 87
    :cond_1
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanSetFingerprintPay:Z

    if-nez v0, :cond_3

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->checkFingerprintAvailable(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 94
    iput-boolean v3, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanSetFingerprintPay:Z

    .line 95
    iput-boolean v3, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanUseFingerprintPay:Z

    goto :goto_0

    .line 98
    :cond_4
    iget-boolean v1, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanUseFingerprintPay:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->containsToken()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iput-boolean v3, p1, Lcom/netease/epay/sdk/base/model/FingerprintDto;->isCanUseFingerprintPay:Z

    goto :goto_0
.end method
