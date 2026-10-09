.class public Lcom/tencent/msdk/sdkwrapper/lbs/Lbs;
.super Ljava/lang/Object;
.source "Lbs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationInfo(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 16
    invoke-static {p0}, Lcom/tencent/msdk/lbs/LbsRefactor;->getLocationInfo(I)V

    .line 17
    return-void
.end method

.method public static native locationFail(II)V
.end method

.method public static native locationSucceed(IDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
