.class public final Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;
.super Ljava/lang/Object;
.source "InfluenceDataRepository.kt"

# interfaces
.implements Lcom/onesignal/session/internal/influence/impl/IInfluenceDataRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfluenceDataRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InfluenceDataRepository.kt\ncom/onesignal/session/internal/influence/impl/InfluenceDataRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u000cH\u0016J\u0010\u0010)\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u000cH\u0016J\u0012\u0010*\u001a\u00020\'2\u0008\u0010+\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010,\u001a\u00020\'2\u0006\u0010-\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001dR\u0014\u0010 \u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000eR\u0014\u0010\"\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0012R\u0014\u0010$\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;",
        "Lcom/onesignal/session/internal/influence/impl/IInfluenceDataRepository;",
        "preferences",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "(Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V",
        "cachedNotificationOpenId",
        "",
        "getCachedNotificationOpenId",
        "()Ljava/lang/String;",
        "iamCachedInfluenceType",
        "Lcom/onesignal/session/internal/influence/InfluenceType;",
        "getIamCachedInfluenceType",
        "()Lcom/onesignal/session/internal/influence/InfluenceType;",
        "iamIndirectAttributionWindow",
        "",
        "getIamIndirectAttributionWindow",
        "()I",
        "iamLimit",
        "getIamLimit",
        "isDirectInfluenceEnabled",
        "",
        "()Z",
        "isIndirectInfluenceEnabled",
        "isUnattributedInfluenceEnabled",
        "lastIAMsReceivedData",
        "Lorg/json/JSONArray;",
        "getLastIAMsReceivedData",
        "()Lorg/json/JSONArray;",
        "lastNotificationsReceivedData",
        "getLastNotificationsReceivedData",
        "notificationCachedInfluenceType",
        "getNotificationCachedInfluenceType",
        "notificationIndirectAttributionWindow",
        "getNotificationIndirectAttributionWindow",
        "notificationLimit",
        "getNotificationLimit",
        "cacheIAMInfluenceType",
        "",
        "influenceType",
        "cacheNotificationInfluenceType",
        "cacheNotificationOpenId",
        "id",
        "saveIAMs",
        "iams",
        "saveNotifications",
        "notifications",
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


# instance fields
.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 15
    iput-object p2, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    return-void
.end method


# virtual methods
.method public cacheIAMInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
    .locals 3

    const-string v0, "influenceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    .line 50
    invoke-virtual {p1}, Lcom/onesignal/session/internal/influence/InfluenceType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OneSignal"

    .line 47
    invoke-interface {v0, v2, v1, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cacheNotificationInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
    .locals 3

    const-string v0, "influenceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    .line 25
    invoke-virtual {p1}, Lcom/onesignal/session/internal/influence/InfluenceType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OneSignal"

    .line 22
    invoke-interface {v0, v2, v1, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cacheNotificationOpenId(Ljava/lang/String;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "OneSignal"

    const-string v2, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCachedNotificationOpenId()Ljava/lang/String;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    const/4 v2, 0x0

    const-string v3, "OneSignal"

    invoke-interface {v0, v3, v1, v2}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIamCachedInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
    .locals 4

    .line 59
    sget-object v0, Lcom/onesignal/session/internal/influence/InfluenceType;->UNATTRIBUTED:Lcom/onesignal/session/internal/influence/InfluenceType;

    invoke-virtual {v0}, Lcom/onesignal/session/internal/influence/InfluenceType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v2, "OneSignal"

    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    invoke-interface {v1, v2, v3, v0}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/onesignal/session/internal/influence/InfluenceType;->Companion:Lcom/onesignal/session/internal/influence/InfluenceType$Companion;

    invoke-virtual {v1, v0}, Lcom/onesignal/session/internal/influence/InfluenceType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/session/internal/influence/InfluenceType;

    move-result-object v0

    return-object v0
.end method

.method public getIamIndirectAttributionWindow()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIndirectIAMAttributionWindow()I

    move-result v0

    return v0
.end method

.method public getIamLimit()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIamLimit()I

    move-result v0

    return v0
.end method

.method public getLastIAMsReceivedData()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_LAST_IAMS_RECEIVED"

    const-string v2, "[]"

    const-string v3, "OneSignal"

    invoke-interface {v0, v3, v1, v2}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getLastNotificationsReceivedData()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    const-string v2, "[]"

    const-string v3, "OneSignal"

    invoke-interface {v0, v3, v1, v2}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getNotificationCachedInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 38
    sget-object v1, Lcom/onesignal/session/internal/influence/InfluenceType;->UNATTRIBUTED:Lcom/onesignal/session/internal/influence/InfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/session/internal/influence/InfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneSignal"

    const-string v3, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    .line 35
    invoke-interface {v0, v2, v3, v1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/onesignal/session/internal/influence/InfluenceType;->Companion:Lcom/onesignal/session/internal/influence/InfluenceType$Companion;

    invoke-virtual {v1, v0}, Lcom/onesignal/session/internal/influence/InfluenceType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/session/internal/influence/InfluenceType;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIndirectAttributionWindow()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIndirectNotificationAttributionWindow()I

    move-result v0

    return v0
.end method

.method public getNotificationLimit()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getNotificationLimit()I

    move-result v0

    return v0
.end method

.method public isDirectInfluenceEnabled()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->isDirectEnabled()Z

    move-result v0

    return v0
.end method

.method public isIndirectInfluenceEnabled()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->isIndirectEnabled()Z

    move-result v0

    return v0
.end method

.method public isUnattributedInfluenceEnabled()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->isUnattributedEnabled()Z

    move-result v0

    return v0
.end method

.method public saveIAMs(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "iams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_LAST_IAMS_RECEIVED"

    .line 103
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OneSignal"

    .line 100
    invoke-interface {v0, v2, v1, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNotifications(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/impl/InfluenceDataRepository;->preferences:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v1, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OneSignal"

    .line 92
    invoke-interface {v0, v2, v1, p1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
