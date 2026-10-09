.class public final enum Lcom/onesignal/user/internal/backend/SubscriptionObjectType;
.super Ljava/lang/Enum;
.source "SubscriptionObjectType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/user/internal/backend/SubscriptionObjectType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0086\u0001\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onesignal/user/internal/backend/SubscriptionObjectType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "IOS_PUSH",
        "ANDROID_PUSH",
        "FIREOS_PUSH",
        "CHROME_EXTENSION",
        "CHROME_PUSH",
        "WINDOWS_PUSH",
        "SAFARI_PUSH",
        "SAFARI_PUSH_LEGACY",
        "FIREFOX_PUSH",
        "MACOS_PUSH",
        "EMAIL",
        "HUAWEI_PUSH",
        "SMS",
        "Companion",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum ANDROID_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum CHROME_EXTENSION:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum CHROME_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final Companion:Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;

.field public static final enum EMAIL:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum FIREFOX_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum FIREOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum HUAWEI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum IOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum MACOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum SAFARI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum SAFARI_PUSH_LEGACY:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum SMS:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

.field public static final enum WINDOWS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->IOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->ANDROID_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->FIREOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->CHROME_EXTENSION:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->CHROME_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->WINDOWS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SAFARI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SAFARI_PUSH_LEGACY:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->FIREFOX_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->MACOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->EMAIL:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->HUAWEI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SMS:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x0

    const-string v2, "iOSPush"

    const-string v3, "IOS_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->IOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 7
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x1

    const-string v2, "AndroidPush"

    const-string v3, "ANDROID_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->ANDROID_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 8
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x2

    const-string v2, "FireOSPush"

    const-string v3, "FIREOS_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->FIREOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 9
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x3

    const-string v2, "ChromeExtensionPush"

    const-string v3, "CHROME_EXTENSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->CHROME_EXTENSION:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 10
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x4

    const-string v2, "ChromePush"

    const-string v3, "CHROME_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->CHROME_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 11
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x5

    const-string v2, "WindowsPush"

    const-string v3, "WINDOWS_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->WINDOWS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 12
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x6

    const-string v2, "SafariPush"

    const-string v3, "SAFARI_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SAFARI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 13
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/4 v1, 0x7

    const-string v2, "SafariLegacyPush"

    const-string v3, "SAFARI_PUSH_LEGACY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SAFARI_PUSH_LEGACY:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 14
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/16 v1, 0x8

    const-string v2, "FirefoxPush"

    const-string v3, "FIREFOX_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->FIREFOX_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 15
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/16 v1, 0x9

    const-string v2, "macOSPush"

    const-string v3, "MACOS_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->MACOS_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 16
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/16 v1, 0xa

    const-string v2, "Email"

    const-string v3, "EMAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->EMAIL:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 17
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const/16 v1, 0xb

    const-string v2, "HuaweiPush"

    const-string v3, "HUAWEI_PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->HUAWEI_PUSH:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 18
    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    const-string v1, "SMS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->SMS:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    invoke-static {}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->$values()[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    move-result-object v0

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->$VALUES:[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    new-instance v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->Companion:Lcom/onesignal/user/internal/backend/SubscriptionObjectType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/user/internal/backend/SubscriptionObjectType;
    .locals 1

    const-class v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;
    .locals 1

    sget-object v0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->$VALUES:[Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObjectType;->value:Ljava/lang/String;

    return-object v0
.end method
