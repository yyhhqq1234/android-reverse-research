.class public final enum Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;
.super Ljava/lang/Enum;
.source "WebViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;",
        "",
        "(Ljava/lang/String;I)V",
        "isBanner",
        "",
        "()Z",
        "TOP_BANNER",
        "BOTTOM_BANNER",
        "CENTER_MODAL",
        "FULL_SCREEN",
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
.field private static final synthetic $VALUES:[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

.field public static final enum BOTTOM_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

.field public static final enum CENTER_MODAL:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

.field public static final enum FULL_SCREEN:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

.field public static final enum TOP_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->BOTTOM_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->CENTER_MODAL:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    const-string v1, "TOP_BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    .line 52
    new-instance v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    const-string v1, "BOTTOM_BANNER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->BOTTOM_BANNER:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    .line 53
    new-instance v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    const-string v1, "CENTER_MODAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->CENTER_MODAL:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    .line 54
    new-instance v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    invoke-static {}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->$values()[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    move-result-object v0

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->$VALUES:[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;
    .locals 1

    const-class v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;
    .locals 1

    sget-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->$VALUES:[Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;

    return-object v0
.end method


# virtual methods
.method public final isBanner()Z
    .locals 3

    .line 59
    sget-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
