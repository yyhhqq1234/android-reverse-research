.class public Lcom/tencent/msdk/sdkwrapper/DataStatistics/DatastatBridge;
.super Ljava/lang/Object;
.source "DatastatBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native needDataStat()Z
.end method

.method public static setOpenId(Ljava/lang/String;)V
    .locals 1
    .param p0, "openId"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->setOpenid(Ljava/lang/String;)V

    .line 11
    return-void
.end method
