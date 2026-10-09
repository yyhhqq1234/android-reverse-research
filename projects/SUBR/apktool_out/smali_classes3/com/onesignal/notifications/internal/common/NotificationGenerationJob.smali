.class public final Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;
.super Ljava/lang/Object;
.source "NotificationGenerationJob.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\u0006\u0010H\u001a\u00020\u001aJ\u0008\u0010I\u001a\u00020\u0012H\u0016J\u000c\u0010J\u001a\u00020\u0008*\u00020\u0008H\u0002R\u0011\u0010\n\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000c\"\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001e\u0010&\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010+\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001c\u00102\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0018\"\u0004\u00084\u00105R\u001e\u00106\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010+\u001a\u0004\u00087\u0010(\"\u0004\u00088\u0010*R\u001c\u00109\u001a\u0004\u0018\u00010-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010/\"\u0004\u0008;\u00101R\u001c\u0010<\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0018\"\u0004\u0008>\u00105R\u001e\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010E\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0013\u0010F\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010\u0018\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
        "",
        "jsonPayload",
        "Lorg/json/JSONObject;",
        "time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V",
        "inNotification",
        "Lcom/onesignal/notifications/internal/Notification;",
        "(Lcom/onesignal/notifications/internal/Notification;Lorg/json/JSONObject;)V",
        "additionalData",
        "getAdditionalData",
        "()Lorg/json/JSONObject;",
        "androidId",
        "",
        "getAndroidId",
        "()I",
        "apiNotificationId",
        "",
        "getApiNotificationId",
        "()Ljava/lang/String;",
        "body",
        "",
        "getBody",
        "()Ljava/lang/CharSequence;",
        "isNotificationToDisplay",
        "",
        "()Z",
        "setNotificationToDisplay",
        "(Z)V",
        "isRestoring",
        "setRestoring",
        "getJsonPayload",
        "setJsonPayload",
        "(Lorg/json/JSONObject;)V",
        "notification",
        "getNotification",
        "()Lcom/onesignal/notifications/internal/Notification;",
        "orgFlags",
        "getOrgFlags",
        "()Ljava/lang/Integer;",
        "setOrgFlags",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "orgSound",
        "Landroid/net/Uri;",
        "getOrgSound",
        "()Landroid/net/Uri;",
        "setOrgSound",
        "(Landroid/net/Uri;)V",
        "overriddenBodyFromExtender",
        "getOverriddenBodyFromExtender",
        "setOverriddenBodyFromExtender",
        "(Ljava/lang/CharSequence;)V",
        "overriddenFlags",
        "getOverriddenFlags",
        "setOverriddenFlags",
        "overriddenSound",
        "getOverriddenSound",
        "setOverriddenSound",
        "overriddenTitleFromExtender",
        "getOverriddenTitleFromExtender",
        "setOverriddenTitleFromExtender",
        "shownTimeStamp",
        "",
        "getShownTimeStamp",
        "()Ljava/lang/Long;",
        "setShownTimeStamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "title",
        "getTitle",
        "hasExtender",
        "toString",
        "setAndroidNotificationId",
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


# instance fields
.field private isNotificationToDisplay:Z

.field private isRestoring:Z

.field private jsonPayload:Lorg/json/JSONObject;

.field private final notification:Lcom/onesignal/notifications/internal/Notification;

.field private orgFlags:Ljava/lang/Integer;

.field private orgSound:Landroid/net/Uri;

.field private overriddenBodyFromExtender:Ljava/lang/CharSequence;

.field private overriddenFlags:Ljava/lang/Integer;

.field private overriddenSound:Landroid/net/Uri;

.field private overriddenTitleFromExtender:Ljava/lang/CharSequence;

.field private shownTimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/onesignal/notifications/internal/Notification;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "inNotification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 13
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setAndroidNotificationId(Lcom/onesignal/notifications/internal/Notification;)Lcom/onesignal/notifications/internal/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "jsonPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/onesignal/notifications/internal/Notification;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/notifications/internal/Notification;-><init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;-><init>(Lcom/onesignal/notifications/internal/Notification;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final setAndroidNotificationId(Lcom/onesignal/notifications/internal/Notification;)Lcom/onesignal/notifications/internal/Notification;
    .locals 1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/Notification;->hasNotificationId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onesignal/notifications/internal/Notification;->setAndroidNotificationId(I)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getAdditionalData()Lorg/json/JSONObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final getAndroidId()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getAndroidNotificationId()I

    move-result v0

    return v0
.end method

.method public final getApiNotificationId()Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getNotificationIdFromFCMJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public final getJsonPayload()Lorg/json/JSONObject;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getNotification()Lcom/onesignal/notifications/internal/Notification;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    return-object v0
.end method

.method public final getOrgFlags()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOrgSound()Landroid/net/Uri;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    return-object v0
.end method

.method public final getOverriddenBodyFromExtender()Ljava/lang/CharSequence;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getOverriddenFlags()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOverriddenSound()Landroid/net/Uri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    return-object v0
.end method

.method public final getOverriddenTitleFromExtender()Ljava/lang/CharSequence;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getShownTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public final hasExtender()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getNotificationExtender()Landroidx/core/app/NotificationCompat$Extender;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotificationToDisplay()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isNotificationToDisplay:Z

    return v0
.end method

.method public final isRestoring()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isRestoring:Z

    return v0
.end method

.method public final setJsonPayload(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    return-void
.end method

.method public final setNotificationToDisplay(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isNotificationToDisplay:Z

    return-void
.end method

.method public final setOrgFlags(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    return-void
.end method

.method public final setOrgSound(Landroid/net/Uri;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    return-void
.end method

.method public final setOverriddenBodyFromExtender(Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setOverriddenFlags(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    return-void
.end method

.method public final setOverriddenSound(Landroid/net/Uri;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    return-void
.end method

.method public final setOverriddenTitleFromExtender(Ljava/lang/CharSequence;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setRestoring(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isRestoring:Z

    return-void
.end method

.method public final setShownTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationGenerationJob{jsonPayload="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isRestoring:Z

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNotificationToDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-boolean v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isNotificationToDisplay:Z

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shownTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overriddenBodyFromExtender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overriddenTitleFromExtender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overriddenSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overriddenFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orgFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orgSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->notification:Lcom/onesignal/notifications/internal/Notification;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
