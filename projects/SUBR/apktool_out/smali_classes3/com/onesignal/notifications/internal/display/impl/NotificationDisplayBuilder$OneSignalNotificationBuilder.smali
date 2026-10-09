.class public final Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationDisplayBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneSignalNotificationBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;",
        "",
        "()V",
        "compatBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "getCompatBuilder",
        "()Landroidx/core/app/NotificationCompat$Builder;",
        "setCompatBuilder",
        "(Landroidx/core/app/NotificationCompat$Builder;)V",
        "hasLargeIcon",
        "",
        "getHasLargeIcon",
        "()Z",
        "setHasLargeIcon",
        "(Z)V",
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
.field private compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private hasLargeIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCompatBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public final getHasLargeIcon()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;->hasLargeIcon:Z

    return v0
.end method

.method public final setCompatBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public final setHasLargeIcon(Z)V
    .locals 0

    .line 468
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;->hasLargeIcon:Z

    return-void
.end method
