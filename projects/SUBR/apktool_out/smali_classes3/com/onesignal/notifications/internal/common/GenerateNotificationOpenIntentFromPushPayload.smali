.class public final Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;
.super Ljava/lang/Object;
.source "GenerateNotificationOpenIntentFromPushPayload.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;",
        "",
        "()V",
        "create",
        "Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;",
        "context",
        "Landroid/content/Context;",
        "fcmPayload",
        "Lorg/json/JSONObject;",
        "openBrowserIntent",
        "Landroid/content/Intent;",
        "uri",
        "Landroid/net/Uri;",
        "com.onesignal.notifications"
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
.field public static final INSTANCE:Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;

    invoke-direct {v0}, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;-><init>()V

    sput-object v0, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;->INSTANCE:Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final openBrowserIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    sget-object v0, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/AndroidUtils;->openURLInBrowserIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fcmPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/onesignal/notifications/internal/common/OSNotificationOpenBehaviorFromPushPayload;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/notifications/internal/common/OSNotificationOpenBehaviorFromPushPayload;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 28
    new-instance p2, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;

    .line 30
    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/common/OSNotificationOpenBehaviorFromPushPayload;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;->openBrowserIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/common/OSNotificationOpenBehaviorFromPushPayload;->getShouldOpenApp()Z

    move-result v0

    .line 28
    invoke-direct {p2, p1, v1, v0}, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-object p2
.end method
