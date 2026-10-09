.class public final Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;
.super Ljava/lang/Object;
.source "OneSignalChromeTab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J%\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;",
        "",
        "()V",
        "hasChromeTabLibrary",
        "",
        "open",
        "url",
        "",
        "openActivity",
        "context",
        "Landroid/content/Context;",
        "open$com_onesignal_inAppMessages",
        "OneSignalCustomTabsServiceConnection",
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


# static fields
.field public static final INSTANCE:Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;

    invoke-direct {v0}, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;-><init>()V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;->INSTANCE:Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasChromeTabLibrary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final open$com_onesignal_inAppMessages(Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab;->hasChromeTabLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    new-instance v0, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/onesignal/inAppMessages/internal/common/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    check-cast v0, Landroidx/browser/customtabs/CustomTabsServiceConnection;

    const-string p1, "com.android.chrome"

    .line 56
    invoke-static {p3, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p1

    return p1
.end method
