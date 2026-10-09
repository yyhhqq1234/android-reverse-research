.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I = 0x7


# instance fields
.field private mCardId1:I

.field private mCardId2:I

.field private simTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId1:I

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId2:I

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    :try_start_0
    const-string v3, "getDeviceIdExt"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId1:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :goto_1
    return-object v0

    .line 57
    :cond_0
    iget v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 43
    :try_start_0
    const-string v3, "getSubscriberIdExt"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId1:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    :goto_1
    return-object v0

    .line 43
    :cond_0
    iget v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->mCardId2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 30
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->simTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo07;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
