.class public final Lcom/onesignal/notifications/internal/data/impl/NotificationRepository$Companion;
.super Ljava/lang/Object;
.source "NotificationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/notifications/internal/data/impl/NotificationRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/data/impl/NotificationRepository$Companion;",
        "",
        "()V",
        "COLUMNS_FOR_LIST_NOTIFICATIONS",
        "",
        "",
        "getCOLUMNS_FOR_LIST_NOTIFICATIONS",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "NOTIFICATION_CACHE_DATA_LIFETIME",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/notifications/internal/data/impl/NotificationRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCOLUMNS_FOR_LIST_NOTIFICATIONS()[Ljava/lang/String;
    .locals 1

    .line 594
    invoke-static {}, Lcom/onesignal/notifications/internal/data/impl/NotificationRepository;->access$getCOLUMNS_FOR_LIST_NOTIFICATIONS$cp()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
