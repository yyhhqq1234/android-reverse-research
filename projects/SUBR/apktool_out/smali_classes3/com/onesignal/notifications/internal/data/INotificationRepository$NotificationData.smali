.class public final Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;
.super Ljava/lang/Object;
.source "INotificationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/notifications/internal/data/INotificationRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;",
        "",
        "androidId",
        "",
        "id",
        "",
        "fullData",
        "createdAt",
        "",
        "title",
        "message",
        "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V",
        "getAndroidId",
        "()I",
        "getCreatedAt",
        "()J",
        "getFullData",
        "()Ljava/lang/String;",
        "getId",
        "getMessage",
        "getTitle",
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
.field private final androidId:I

.field private final createdAt:J

.field private final fullData:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->androidId:I

    .line 128
    iput-object p2, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->id:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->fullData:Ljava/lang/String;

    .line 130
    iput-wide p4, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->createdAt:J

    .line 131
    iput-object p6, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->title:Ljava/lang/String;

    .line 132
    iput-object p7, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAndroidId()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->androidId:I

    return v0
.end method

.method public final getCreatedAt()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->createdAt:J

    return-wide v0
.end method

.method public final getFullData()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->fullData:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->title:Ljava/lang/String;

    return-object v0
.end method
