.class public Lcom/tencent/msdk/sdkwrapper/bugly/BuglySdk;
.super Ljava/lang/Object;
.source "BuglySdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native OnCrashExtDataNotify()[B
.end method

.method public static native OnCrashExtMessageNotify()Ljava/lang/String;
.end method
