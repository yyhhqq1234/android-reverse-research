.class public final Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;
.super Lorg/json/JSONObject;
.source "InAppBackendService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;->sendIAMImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1",
        "Lorg/json/JSONObject;",
        "com.onesignal.inAppMessages"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "app_id"

    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "player_id"

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "variant_id"

    .line 164
    invoke-virtual {p0, p1, p3}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-static {p4}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;->access$get_deviceService$p(Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;)Lcom/onesignal/core/internal/device/IDeviceService;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/core/internal/device/IDeviceService;->getDeviceType()Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;->getValue()I

    move-result p1

    const-string p2, "device_type"

    invoke-virtual {p0, p2, p1}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "first_impression"

    const/4 p2, 0x1

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService$sendIAMImpression$json$1;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method
