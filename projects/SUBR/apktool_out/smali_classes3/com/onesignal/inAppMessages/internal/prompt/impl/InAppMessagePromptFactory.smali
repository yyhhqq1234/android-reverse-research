.class public final Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;
.super Ljava/lang/Object;
.source "InAppMessagePromptFactory.kt"

# interfaces
.implements Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;",
        "Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;",
        "_notificationsManager",
        "Lcom/onesignal/notifications/INotificationsManager;",
        "_locationManager",
        "Lcom/onesignal/location/ILocationManager;",
        "(Lcom/onesignal/notifications/INotificationsManager;Lcom/onesignal/location/ILocationManager;)V",
        "createPrompt",
        "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
        "promptType",
        "",
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


# instance fields
.field private final _locationManager:Lcom/onesignal/location/ILocationManager;

.field private final _notificationsManager:Lcom/onesignal/notifications/INotificationsManager;


# direct methods
.method public constructor <init>(Lcom/onesignal/notifications/INotificationsManager;Lcom/onesignal/location/ILocationManager;)V
    .locals 1

    const-string v0, "_notificationsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_locationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;->_notificationsManager:Lcom/onesignal/notifications/INotificationsManager;

    .line 10
    iput-object p2, p0, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;->_locationManager:Lcom/onesignal/location/ILocationManager;

    return-void
.end method


# virtual methods
.method public createPrompt(Ljava/lang/String;)Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;
    .locals 1

    const-string v0, "promptType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "push"

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePushPrompt;

    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;->_notificationsManager:Lcom/onesignal/notifications/INotificationsManager;

    invoke-direct {p1, v0}, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePushPrompt;-><init>(Lcom/onesignal/notifications/INotificationsManager;)V

    check-cast p1, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

    goto :goto_0

    :cond_0
    const-string v0, "location"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessageLocationPrompt;

    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;->_locationManager:Lcom/onesignal/location/ILocationManager;

    invoke-direct {p1, v0}, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessageLocationPrompt;-><init>(Lcom/onesignal/location/ILocationManager;)V

    check-cast p1, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
