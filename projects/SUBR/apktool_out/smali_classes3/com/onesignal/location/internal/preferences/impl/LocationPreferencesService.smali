.class public final Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;
.super Ljava/lang/Object;
.source "LocationPreferencesService.kt"

# interfaces
.implements Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;",
        "Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;",
        "_prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V",
        "time",
        "",
        "lastLocationTime",
        "getLastLocationTime",
        "()J",
        "setLastLocationTime",
        "(J)V",
        "com.onesignal.location"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V
    .locals 1

    const-string v0, "_prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    return-void
.end method


# virtual methods
.method public getLastLocationTime()J
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-wide/32 v1, -0x927c0

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "OneSignal"

    const-string v3, "OS_LAST_LOCATION_TIME"

    .line 14
    invoke-interface {v0, v2, v3, v1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setLastLocationTime(J)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "OS_LAST_LOCATION_TIME"

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "OneSignal"

    .line 20
    invoke-interface {v0, p2, v1, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
