.class public final enum Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
.super Ljava/lang/Enum;
.source "IDeviceService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/core/internal/device/IDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "Fire",
        "Android",
        "Huawei",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

.field public static final enum Android:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

.field public static final enum Fire:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

.field public static final enum Huawei:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Fire:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Android:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Huawei:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    const-string v1, "Fire"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Fire:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    .line 28
    new-instance v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    const-string v1, "Android"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Android:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    .line 29
    new-instance v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    const-string v1, "Huawei"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->Huawei:Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-static {}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->$values()[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->$VALUES:[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
    .locals 1

    const-class v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;
    .locals 1

    sget-object v0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->$VALUES:[Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->value:I

    return v0
.end method
