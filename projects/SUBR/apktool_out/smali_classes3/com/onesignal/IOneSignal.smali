.class public interface abstract Lcom/onesignal/IOneSignal;
.super Ljava/lang/Object;
.source "IOneSignal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/IOneSignal$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010 H&J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020 H\u0016J\u001c\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020 2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010 H&J\u0008\u00103\u001a\u000200H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u000f\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0005\"\u0004\u0008\u0011\u0010\u0007R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0005R\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0012\u0010\u001f\u001a\u00020 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0012\u0010#\u001a\u00020$X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0012\u0010\'\u001a\u00020(X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u00064"
    }
    d2 = {
        "Lcom/onesignal/IOneSignal;",
        "",
        "consentGiven",
        "",
        "getConsentGiven",
        "()Z",
        "setConsentGiven",
        "(Z)V",
        "consentRequired",
        "getConsentRequired",
        "setConsentRequired",
        "debug",
        "Lcom/onesignal/debug/IDebugManager;",
        "getDebug",
        "()Lcom/onesignal/debug/IDebugManager;",
        "disableGMSMissingPrompt",
        "getDisableGMSMissingPrompt",
        "setDisableGMSMissingPrompt",
        "inAppMessages",
        "Lcom/onesignal/inAppMessages/IInAppMessagesManager;",
        "getInAppMessages",
        "()Lcom/onesignal/inAppMessages/IInAppMessagesManager;",
        "isInitialized",
        "location",
        "Lcom/onesignal/location/ILocationManager;",
        "getLocation",
        "()Lcom/onesignal/location/ILocationManager;",
        "notifications",
        "Lcom/onesignal/notifications/INotificationsManager;",
        "getNotifications",
        "()Lcom/onesignal/notifications/INotificationsManager;",
        "sdkVersion",
        "",
        "getSdkVersion",
        "()Ljava/lang/String;",
        "session",
        "Lcom/onesignal/session/ISessionManager;",
        "getSession",
        "()Lcom/onesignal/session/ISessionManager;",
        "user",
        "Lcom/onesignal/user/IUserManager;",
        "getUser",
        "()Lcom/onesignal/user/IUserManager;",
        "initWithContext",
        "context",
        "Landroid/content/Context;",
        "appId",
        "login",
        "",
        "externalId",
        "jwtBearerToken",
        "logout",
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
.method public abstract getConsentGiven()Z
.end method

.method public abstract getConsentRequired()Z
.end method

.method public abstract getDebug()Lcom/onesignal/debug/IDebugManager;
.end method

.method public abstract getDisableGMSMissingPrompt()Z
.end method

.method public abstract getInAppMessages()Lcom/onesignal/inAppMessages/IInAppMessagesManager;
.end method

.method public abstract getLocation()Lcom/onesignal/location/ILocationManager;
.end method

.method public abstract getNotifications()Lcom/onesignal/notifications/INotificationsManager;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSession()Lcom/onesignal/session/ISessionManager;
.end method

.method public abstract getUser()Lcom/onesignal/user/IUserManager;
.end method

.method public abstract initWithContext(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract login(Ljava/lang/String;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract setConsentGiven(Z)V
.end method

.method public abstract setConsentRequired(Z)V
.end method

.method public abstract setDisableGMSMissingPrompt(Z)V
.end method
