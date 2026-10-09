.class public final Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;
.super Ljava/lang/Object;
.source "NotificationDisplayer.kt"

# interfaces
.implements Lcom/onesignal/notifications/internal/display/INotificationDisplayer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationDisplayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDisplayer.kt\ncom/onesignal/notifications/internal/display/impl/NotificationDisplayer\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,410:1\n107#2:411\n79#2,22:412\n107#2:434\n79#2,22:435\n*S KotlinDebug\n*F\n+ 1 NotificationDisplayer.kt\ncom/onesignal/notifications/internal/display/impl/NotificationDisplayer\n*L\n379#1:411\n379#1:412,22\n393#1:434\n393#1:435,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u001a\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0002J*\u0010#\u001a\u00020$2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)H\u0002J\u0019\u0010*\u001a\u00020+2\u0006\u0010 \u001a\u00020!H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J\u0014\u0010-\u001a\u0004\u0018\u00010.2\u0008\u0010/\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u00100\u001a\u0004\u0018\u00010.2\u0006\u00101\u001a\u00020\u0017H\u0002J\u0012\u00102\u001a\u0004\u0018\u00010.2\u0006\u00103\u001a\u00020\u0017H\u0002J\u0010\u00104\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0017H\u0002J\u0012\u00105\u001a\u00020)2\u0008\u00106\u001a\u0004\u0018\u00010\u0017H\u0002J!\u00107\u001a\u0004\u0018\u00010)2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u00108\u001a\u00020\u0017H\u0002\u00a2\u0006\u0002\u00109J2\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020<2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010=\u001a\u00020)2\u0006\u0010>\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u0017H\u0002J\u0019\u0010@\u001a\u00020+2\u0006\u0010 \u001a\u00020!H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006A"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;",
        "Lcom/onesignal/notifications/internal/display/INotificationDisplayer;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_notificationLimitManager",
        "Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;",
        "_summaryNotificationDisplayer",
        "Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;",
        "_notificationDisplayBuilder",
        "Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;)V",
        "contextResources",
        "Landroid/content/res/Resources;",
        "getContextResources",
        "()Landroid/content/res/Resources;",
        "currentContext",
        "Landroid/content/Context;",
        "getCurrentContext",
        "()Landroid/content/Context;",
        "isRunningOnMainThreadCheck",
        "",
        "()Lkotlin/Unit;",
        "packageName",
        "",
        "getPackageName",
        "()Ljava/lang/String;",
        "addBackgroundImage",
        "fcmJson",
        "Lorg/json/JSONObject;",
        "notifBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "applyNotificationExtender",
        "notificationJob",
        "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
        "notificationBuilder",
        "createGenericPendingIntentsForNotif",
        "Landroid/app/Notification;",
        "intentGenerator",
        "Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;",
        "gcmBundle",
        "notificationId",
        "",
        "displayNotification",
        "",
        "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "name",
        "getBitmapFromAssetsOrResourceName",
        "bitmapStr",
        "getBitmapFromURL",
        "location",
        "getDrawableId",
        "getResourceIcon",
        "iconName",
        "safeGetColorFromHex",
        "colorKey",
        "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;",
        "setTextColor",
        "customView",
        "Landroid/widget/RemoteViews;",
        "viewId",
        "colorPayloadKey",
        "colorDefaultResource",
        "showNotification",
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
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

.field private final _notificationLimitManager:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;

.field private final _summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationLimitManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_summaryNotificationDisplayer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationDisplayBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 39
    iput-object p2, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationLimitManager:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;

    .line 40
    iput-object p3, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    .line 41
    iput-object p4, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    return-void
.end method

.method public static final synthetic access$showNotification(Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->showNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot use background images in notifications for device on version: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v2, p2, v2}, Lcom/onesignal/debug/internal/logging/Logging;->verbose$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "bg_img"

    .line 240
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "img"

    .line 243
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v1, v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "onesignal_bgimage_default_image"

    .line 247
    invoke-direct {p0, v0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    .line 251
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/onesignal/notifications/R$layout;->onesignal_bgimage_notif_layout:I

    invoke-direct {v9, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 252
    sget v3, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_title:I

    iget-object v4, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v4, p1}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    sget v3, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_body:I

    const-string v4, "alert"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v9, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    sget v6, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_title:I

    const-string v7, "tc"

    const-string v8, "onesignal_bgimage_notif_title_color"

    move-object v3, p0

    move-object v4, v9

    move-object v5, v1

    .line 254
    invoke-direct/range {v3 .. v8}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    sget v6, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_body:I

    const-string v7, "bc"

    const-string v8, "onesignal_bgimage_notif_body_color"

    .line 261
    invoke-direct/range {v3 .. v8}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string p1, "img_align"

    .line 269
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 274
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getContextResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "string"

    .line 277
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onesignal_bgimage_notif_image_align"

    .line 274
    invoke-virtual {p1, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 279
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    const-string v1, "right"

    .line 281
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    sget v4, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_bgimage_align_layout:I

    const/16 v5, -0x1388

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    .line 285
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 292
    sget p1, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v9, p1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 294
    sget p1, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    const/4 v0, 0x0

    .line 293
    invoke-virtual {v9, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 297
    sget p1, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_bgimage:I

    const/16 v0, 0x8

    invoke-virtual {v9, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    .line 299
    :cond_5
    sget p1, Lcom/onesignal/notifications/R$id;->os_bgimage_notif_bgimage:I

    invoke-virtual {v9, p1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 301
    :goto_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 305
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6
    return-void
.end method

.method private final applyNotificationExtender(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5

    const-string v0, "null cannot be cast to non-null type android.app.Notification"

    .line 197
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->hasExtender()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 198
    :cond_0
    :try_start_0
    const-class v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "mNotification"

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Notification;

    .line 203
    iget v4, v3, Landroid/app/Notification;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOrgFlags(Ljava/lang/Integer;)V

    .line 204
    iget-object v3, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOrgSound(Landroid/net/Uri;)V

    .line 205
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getNotification()Lcom/onesignal/notifications/internal/Notification;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onesignal/notifications/internal/Notification;->getNotificationExtender()Landroidx/core/app/NotificationCompat$Extender;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    .line 206
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Notification;

    const-class v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "mContentText"

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-class v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "mContentTitle"

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 214
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 215
    invoke-virtual {p1, v0}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOverriddenBodyFromExtender(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1, p2}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOverriddenTitleFromExtender(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isRestoring()Z

    move-result p2

    if-nez p2, :cond_1

    .line 218
    iget p2, v1, Landroid/app/Notification;->flags:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOverriddenFlags(Ljava/lang/Integer;)V

    .line 219
    iget-object p2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->setOverriddenSound(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;Lorg/json/JSONObject;I)Landroid/app/Notification;
    .locals 4

    .line 176
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    check-cast v0, Ljava/util/Random;

    .line 179
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 180
    invoke-virtual {p2, p4}, Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "onesignalData"

    .line 181
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v2, "intentGenerator.getNewBa\u2026TA, gcmBundle.toString())"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2, v1, p3}, Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 183
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 185
    iget-object p2, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result p3

    .line 187
    iget-object v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v0, p4}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getNewBaseDismissIntent(I)Landroid/content/Intent;

    move-result-object p4

    .line 185
    invoke-interface {p2, p3, p4}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getNewDismissActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 190
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "notifBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 411
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 413
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v2, :cond_6

    if-nez v6, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v2

    .line 418
    :goto_1
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 379
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v6, :cond_4

    if-nez v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 433
    invoke-interface {v1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    const/4 v3, 0x2

    .line 380
    invoke-static {v1, v2, v4, v3, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "https://"

    invoke-static {v1, v2, v4, v3, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 385
    :cond_7
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5

    .line 381
    :cond_8
    :goto_4
    invoke-direct {p0, v1}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method private final getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    const-string v2, ".png"

    const-string v3, ".webp"

    const-string v4, ".jpg"

    const-string v5, ".gif"

    const-string v6, ".bmp"

    .line 352
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 353
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 356
    :try_start_2
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    .line 361
    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getResourceIcon(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_2
    :cond_3
    return-object v0
.end method

.method private final getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 370
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "Could not download image!"

    .line 372
    invoke-static {v0, p1}, Lcom/onesignal/debug/internal/logging/Logging;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final getContextResources()Landroid/content/res/Resources;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentContext()Landroid/content/Context;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 407
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getContextResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "drawable"

    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final getPackageName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getResourceIcon(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 434
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 436
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v2, :cond_6

    if-nez v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v2

    .line 441
    :goto_1
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 393
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 456
    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    sget-object v2, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    invoke-virtual {v2, v1}, Lcom/onesignal/common/AndroidUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 395
    :cond_7
    invoke-direct {p0, v1}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    return v1

    .line 399
    :cond_8
    :try_start_0
    const-class v1, Landroid/R$drawable;

    .line 400
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v0
.end method

.method private final safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    .line 336
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 316
    invoke-direct {p0, p2, p4}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getContextResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p4, "color"

    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p5, p4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 323
    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;

    iget v4, v3, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;

    invoke-direct {v3, v1, v0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;-><init>(Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v3

    iget-object v0, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 71
    iget v4, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    const-string v5, "os_group_undefined"

    const/16 v6, 0x18

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    :goto_1
    iget v2, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->I$0:I

    iget-object v3, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    iget-object v4, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;

    iget-object v5, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_3
    iget v2, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->I$0:I

    iget-object v4, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$7:Ljava/lang/Object;

    check-cast v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v11, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;

    iget-object v12, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;

    iget-object v14, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lorg/json/JSONObject;

    iget-object v8, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;

    iget-object v10, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v10

    move-object v10, v11

    goto/16 :goto_5

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getAndroidId()I

    move-result v4

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "grp"

    .line 74
    invoke-static {v15, v0}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v8, Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;

    invoke-direct/range {p0 .. p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 78
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v6, :cond_5

    .line 81
    sget-object v10, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-direct/range {p0 .. p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getActiveGrouplessNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v0, :cond_5

    .line 84
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v7, :cond_5

    .line 86
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v11

    .line 86
    invoke-virtual {v0, v11, v10}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->assignGrouplessNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object v14, v5

    goto :goto_2

    :cond_5
    move-object v14, v0

    :goto_2
    move-object v12, v10

    .line 93
    iget-object v0, v1, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v0, v2}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;)Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;

    move-result-object v10

    .line 94
    invoke-virtual {v10}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;->getCompatBuilder()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 96
    iget-object v0, v1, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    move/from16 v20, v4

    invoke-interface/range {v16 .. v21}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->addNotificationActionButtons(Lorg/json/JSONObject;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 105
    :try_start_0
    invoke-direct {v1, v15, v11}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v13, v0

    const-string v0, "Could not set background notification image!"

    .line 107
    invoke-static {v0, v13}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_3
    invoke-direct {v1, v2, v11}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->applyNotificationExtender(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iget-object v0, v1, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v0, v11}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_6
    if-nez v14, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    .line 118
    :goto_4
    iget-object v13, v1, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationLimitManager:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;

    iput-object v1, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$0:Ljava/lang/Object;

    iput-object v2, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$1:Ljava/lang/Object;

    iput-object v15, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$2:Ljava/lang/Object;

    iput-object v14, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$3:Ljava/lang/Object;

    iput-object v8, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$4:Ljava/lang/Object;

    iput-object v12, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$5:Ljava/lang/Object;

    iput-object v10, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$6:Ljava/lang/Object;

    iput-object v11, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$7:Ljava/lang/Object;

    iput v4, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->I$0:I

    const/4 v7, 0x1

    iput v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    invoke-interface {v13, v0, v9}, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;->clearOldestOverLimit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v0, v1

    move-object v13, v8

    move-object v8, v2

    move v2, v4

    move-object v4, v11

    :goto_5
    if-eqz v14, :cond_b

    .line 122
    iget-object v7, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    move-object/from16 v21, v14

    move/from16 v22, v2

    invoke-interface/range {v17 .. v22}, Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;->createGenericPendingIntentsForGroup(Landroidx/core/app/NotificationCompat$Builder;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 129
    iget-object v7, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    invoke-interface {v7, v8, v4}, Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;->createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v11

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    if-lt v4, v6, :cond_a

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 133
    iget-object v4, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    .line 136
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x1

    add-int/lit8 v14, v5, 0x1

    .line 137
    iget-object v5, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v5}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getGroupAlertBehavior()I

    move-result v15

    .line 133
    iput-object v0, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$0:Ljava/lang/Object;

    iput-object v10, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$2:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$3:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$5:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$6:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$7:Ljava/lang/Object;

    iput v2, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->I$0:I

    const/4 v5, 0x2

    iput v5, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    move-object v5, v8

    move-object v6, v13

    move v7, v14

    move v8, v15

    invoke-interface/range {v4 .. v9}, Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;->createGrouplessSummaryNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_9

    return-object v3

    :cond_9
    move-object v5, v0

    move-object v4, v10

    move-object v3, v11

    :goto_6
    move-object v10, v4

    move-object v0, v5

    goto :goto_7

    :cond_a
    const/4 v12, 0x1

    .line 140
    iget-object v4, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_summaryNotificationDisplayer:Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    .line 143
    iget-object v5, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v5}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->getGroupAlertBehavior()I

    move-result v5

    .line 140
    iput-object v0, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$0:Ljava/lang/Object;

    iput-object v10, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$1:Ljava/lang/Object;

    iput-object v11, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$2:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$3:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$4:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$5:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$6:Ljava/lang/Object;

    iput-object v7, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->L$7:Ljava/lang/Object;

    iput v2, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->I$0:I

    const/4 v6, 0x3

    iput v6, v9, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer$showNotification$1;->label:I

    invoke-interface {v4, v8, v10, v5, v9}, Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;->createSummaryNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_9

    return-object v3

    :cond_b
    const/4 v12, 0x1

    .line 148
    invoke-direct {v0, v4, v13, v15, v2}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;Lorg/json/JSONObject;I)Landroid/app/Notification;

    move-result-object v3

    .line 160
    :goto_7
    iget-object v4, v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->_notificationDisplayBuilder:Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-interface {v4, v10, v3}, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;->addXiaomiSettings(Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 161
    invoke-direct {v0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 163
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_c

    .line 164
    sget-object v2, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-direct {v0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    goto :goto_8

    :cond_c
    const/4 v10, 0x1

    .line 166
    :goto_8
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->isRunningOnMainThreadCheck()Lkotlin/Unit;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;->showNotification(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isRunningOnMainThreadCheck()Lkotlin/Unit;
    .locals 2

    .line 63
    sget-object v0, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    invoke-virtual {v0}, Lcom/onesignal/common/AndroidUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/onesignal/common/exceptions/MainThreadException;

    const-string v1, "Process for showing a notification should never been done on Main Thread!"

    invoke-direct {v0, v1}, Lcom/onesignal/common/exceptions/MainThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
