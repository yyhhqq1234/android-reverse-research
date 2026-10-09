.class public final synthetic Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$WhenMappings;
.super Ljava/lang/Object;
.source "PushTokenManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->values()[Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->MISSING:Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;

    invoke-virtual {v1}, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->OUTDATED:Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;

    invoke-virtual {v1}, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
