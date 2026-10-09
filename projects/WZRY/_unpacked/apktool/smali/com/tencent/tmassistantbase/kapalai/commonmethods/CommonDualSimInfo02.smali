.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I = 0x2


# instance fields
.field private simTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 24
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    const-string v0, "android.telephony.TelephonyManager"

    const-string v5, "getDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4

    .line 26
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    const/4 v4, 0x1

    const-string v0, "android.telephony.TelephonyManager"

    const-string v5, "getDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    aput-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    array-length v0, v0

    if-le v0, p1, :cond_2

    .line 32
    iget-object v3, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->simTelephonyManager:[Landroid/telephony/TelephonyManager;

    if-gtz p1, :cond_1

    move v0, v1

    :goto_1
    aget-object v0, v3, v0

    .line 34
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo02;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
