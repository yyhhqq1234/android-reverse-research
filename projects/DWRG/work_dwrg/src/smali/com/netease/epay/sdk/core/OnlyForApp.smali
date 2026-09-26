.class public Lcom/netease/epay/sdk/core/OnlyForApp;
.super Ljava/lang/Object;
.source "OnlyForApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static addPayAddtionalInfo(Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "payAdditionalInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    sput-object p0, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    .line 27
    return-void
.end method

.method public static closeFingerprint(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x38b

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$2;

    invoke-direct {v2}, Lcom/netease/epay/sdk/core/OnlyForApp$2;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 57
    return-void
.end method

.method public static manageRSA(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {}, Lcom/netease/epay/sdk/core/a;->a()Z

    move-result v0

    const/16 v1, 0x391

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$5;

    invoke-direct {v2}, Lcom/netease/epay/sdk/core/OnlyForApp$5;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 87
    return-void
.end method

.method public static openFingerprint(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCanSet"    # Z

    .prologue
    .line 60
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x38a

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$3;

    invoke-direct {v2, p1}, Lcom/netease/epay/sdk/core/OnlyForApp$3;-><init>(Z)V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 66
    return-void
.end method

.method public static queryFingerprintStatus(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x38c

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/core/OnlyForApp$1;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 48
    return-void
.end method

.method public static upgradeIdentity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x38d

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$4;

    invoke-direct {v2}, Lcom/netease/epay/sdk/core/OnlyForApp$4;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 75
    return-void
.end method

.method public static verifyFaceForModifySecretSecurityPhoneNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x390

    new-instance v2, Lcom/netease/epay/sdk/core/OnlyForApp$6;

    invoke-direct {v2, p1, p0}, Lcom/netease/epay/sdk/core/OnlyForApp$6;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 152
    return-void
.end method

.method public static verifyFinger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static verifyLongPwd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static verifySms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void
.end method
