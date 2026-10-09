.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I = 0x1


# instance fields
.field private simTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 41
    :try_start_0
    const-string v2, "getSubscriberIdGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 26
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    const-string v1, "getDefault"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;->simTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo01;->simTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
