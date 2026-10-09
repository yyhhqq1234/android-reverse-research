.class public interface abstract Lcom/onesignal/core/internal/device/IDeviceService;
.super Ljava/lang/Object;
.source "IDeviceService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;,
        Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001:\u0002\u0017\u0018J\u0008\u0010\u0016\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0012\u0010\u000c\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\tR\u0012\u0010\r\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0012\u0010\u000e\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\tR\u0012\u0010\u000f\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onesignal/core/internal/device/IDeviceService;",
        "",
        "deviceType",
        "Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;",
        "getDeviceType",
        "()Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;",
        "hasAllHMSLibrariesForPushKit",
        "",
        "getHasAllHMSLibrariesForPushKit",
        "()Z",
        "hasFCMLibrary",
        "getHasFCMLibrary",
        "isAndroidDeviceType",
        "isFireOSDeviceType",
        "isGMSInstalledAndEnabled",
        "isHuaweiDeviceType",
        "jetpackLibraryStatus",
        "Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;",
        "getJetpackLibraryStatus",
        "()Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;",
        "supportsHMS",
        "getSupportsHMS",
        "supportsGooglePush",
        "DeviceType",
        "JetpackLibraryStatus",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getDeviceType()Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
.end method

.method public abstract getHasAllHMSLibrariesForPushKit()Z
.end method

.method public abstract getHasFCMLibrary()Z
.end method

.method public abstract getJetpackLibraryStatus()Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;
.end method

.method public abstract getSupportsHMS()Z
.end method

.method public abstract isAndroidDeviceType()Z
.end method

.method public abstract isFireOSDeviceType()Z
.end method

.method public abstract isGMSInstalledAndEnabled()Z
.end method

.method public abstract isHuaweiDeviceType()Z
.end method

.method public abstract supportsGooglePush()Z
.end method
