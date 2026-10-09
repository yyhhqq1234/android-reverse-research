.class public final synthetic Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SubscriptionObjectType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;
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

    invoke-static {}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->values()[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Android:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-virtual {v1}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Fire:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-virtual {v1}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Huawei:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-virtual {v1}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
