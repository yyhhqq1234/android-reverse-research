.class public interface abstract Lcom/onesignal/session/internal/influence/impl/IInfluenceDataRepository;
.super Ljava/lang/Object;
.source "IInfluenceDataRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0007H&J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0007H&J\u0012\u0010%\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0016H&J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u0016H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0012R\u0012\u0010\u0014\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00168fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00168fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0012\u0010\u001b\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\tR\u0012\u0010\u001d\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\rR\u0012\u0010\u001f\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\r\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onesignal/session/internal/influence/impl/IInfluenceDataRepository;",
        "",
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


# virtual methods
.method public abstract cacheIAMInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
.end method

.method public abstract cacheNotificationInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
.end method

.method public abstract cacheNotificationOpenId(Ljava/lang/String;)V
.end method

.method public abstract getCachedNotificationOpenId()Ljava/lang/String;
.end method

.method public abstract getIamCachedInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
.end method

.method public abstract getIamIndirectAttributionWindow()I
.end method

.method public abstract getIamLimit()I
.end method

.method public abstract getLastIAMsReceivedData()Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getLastNotificationsReceivedData()Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getNotificationCachedInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
.end method

.method public abstract getNotificationIndirectAttributionWindow()I
.end method

.method public abstract getNotificationLimit()I
.end method

.method public abstract isDirectInfluenceEnabled()Z
.end method

.method public abstract isIndirectInfluenceEnabled()Z
.end method

.method public abstract isUnattributedInfluenceEnabled()Z
.end method

.method public abstract saveIAMs(Lorg/json/JSONArray;)V
.end method

.method public abstract saveNotifications(Lorg/json/JSONArray;)V
.end method
