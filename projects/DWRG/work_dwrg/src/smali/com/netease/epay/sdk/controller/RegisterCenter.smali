.class public Lcom/netease/epay/sdk/controller/RegisterCenter;
.super Ljava/lang/Object;
.source "RegisterCenter.java"


# static fields
.field public static final CARD:Ljava/lang/String; = "card"

.field public static final CLOSE_RISK:Ljava/lang/String; = "close_risk"

.field public static final DEPOSIT_WITHDRAW:Ljava/lang/String; = "dw"

.field public static final FACE:Ljava/lang/String; = "face"

.field public static final FINGER:Ljava/lang/String; = "finger"

.field public static final IDCARD:Ljava/lang/String; = "idcard"

.field public static final MODIFY_PWD:Ljava/lang/String; = "modifyPwd"

.field public static final PAY:Ljava/lang/String; = "pay"

.field public static final REGISTER:Ljava/lang/String; = "register"

.field public static final RESET_PWD:Ljava/lang/String; = "resetPwd"

.field public static final RISK:Ljava/lang/String; = "risk"

.field public static final RSA:Ljava/lang/String; = "rsa"

.field public static final SET_PWD:Ljava/lang/String; = "setPwd"

.field public static final VERIFY_PWD:Ljava/lang/String; = "verifyPwd"

.field public static final VERIFY_SMS:Ljava/lang/String; = "verifySms"

.field public static final WALLET:Ljava/lang/String; = "wallet"

.field private static controllerMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/netease/epay/sdk/controller/RegisterCenter;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/netease/epay/sdk/controller/RegisterCenter;->initMap()V

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static initMap()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    .line 44
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "face"

    const-string v2, "com.netease.epay.sdk.face.controller.FaceController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "idcard"

    const-string v2, "com.netease.epay.sdk.face.controller.IDCardRecognizeController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "risk"

    const-string v2, "com.netease.epay.sdk.risk.RiskController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "resetPwd"

    const-string v2, "com.netease.epay.sdk.psw.ResetPwdController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "setPwd"

    const-string v2, "com.netease.epay.sdk.psw.SetShortPwdController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "verifyPwd"

    const-string v2, "com.netease.epay.sdk.psw.VerifyPwdController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "modifyPwd"

    const-string v2, "com.netease.epay.sdk.psw.ModifyPwdController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "register"

    const-string v2, "com.netease.epay.sdk.register.DeviceRegisterController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "card"

    const-string v2, "com.netease.epay.sdk.card.AddOrVerifyCardController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "rsa"

    const-string v2, "com.netease.epay.sdk.rsa.ManageRSAController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "pay"

    const-string v2, "com.netease.epay.sdk.pay.PayController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "finger"

    const-string v2, "com.netease.epay.sdk.finger.FingerController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "dw"

    const-string v2, "com.netease.epay.sdk.depositwithdraw.DepositWithdrawController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "close_risk"

    const-string v2, "com.netease.epay.sdk.closeRisk.CloseRiskController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "wallet"

    const-string v2, "com.netease.epay.sdk.wallet.WalletController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/netease/epay/sdk/controller/RegisterCenter;->controllerMap:Landroid/support/v4/util/ArrayMap;

    const-string v1, "verifySms"

    const-string v2, "com.netease.epay.sdk.sms.VerifySmsController"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
