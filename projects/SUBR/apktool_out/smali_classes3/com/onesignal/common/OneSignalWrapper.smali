.class public final Lcom/onesignal/common/OneSignalWrapper;
.super Ljava/lang/Object;
.source "OneSignalWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onesignal/common/OneSignalWrapper;",
        "",
        "()V",
        "sdkType",
        "",
        "getSdkType$annotations",
        "getSdkType",
        "()Ljava/lang/String;",
        "setSdkType",
        "(Ljava/lang/String;)V",
        "sdkVersion",
        "getSdkVersion$annotations",
        "getSdkVersion",
        "setSdkVersion",
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
.field public static final INSTANCE:Lcom/onesignal/common/OneSignalWrapper;

.field private static sdkType:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/common/OneSignalWrapper;

    invoke-direct {v0}, Lcom/onesignal/common/OneSignalWrapper;-><init>()V

    sput-object v0, Lcom/onesignal/common/OneSignalWrapper;->INSTANCE:Lcom/onesignal/common/OneSignalWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSdkType()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/onesignal/common/OneSignalWrapper;->sdkType:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic getSdkType$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/onesignal/common/OneSignalWrapper;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic getSdkVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setSdkType(Ljava/lang/String;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/onesignal/common/OneSignalWrapper;->sdkType:Ljava/lang/String;

    return-void
.end method

.method public static final setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/onesignal/common/OneSignalWrapper;->sdkVersion:Ljava/lang/String;

    return-void
.end method
