.class public Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/kapalai/commonmethods/IDualSimInfo;


# static fields
.field public static final CLASS_NUMBER:I


# instance fields
.field private simTelephonyManager:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKapalaiDualSimIMEI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    const-string v2, "getDeviceId"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getKapalaiDualSimIMSI(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    const-string v2, "getSubscriberId"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getKapalaiSimTelephonyManager(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    .line 26
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "phone"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 27
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "phone2"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    array-length v2, v2

    if-le v2, p1, :cond_2

    .line 35
    iget-object v2, p0, Lcom/tencent/tmassistantbase/kapalai/commonmethods/CommonDualSimInfo00;->simTelephonyManager:[Ljava/lang/Object;

    if-gtz p1, :cond_1

    :goto_1
    aget-object v0, v2, v0

    .line 38
    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    .line 35
    goto :goto_1

    .line 38
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v2

    goto :goto_0
.end method
