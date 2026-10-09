.class public Lcom/google/ar/core/ArCoreApk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/ArCoreApk$a;,
        Lcom/google/ar/core/ArCoreApk$UserMessageType;,
        Lcom/google/ar/core/ArCoreApk$InstallBehavior;,
        Lcom/google/ar/core/ArCoreApk$InstallStatus;,
        Lcom/google/ar/core/ArCoreApk$Availability;
    }
.end annotation


# static fields
.field static final AR_AVAILABILITY_SUPPORTED_APK_TOO_OLD:I = 0xca

.field static final AR_AVAILABILITY_SUPPORTED_INSTALLED:I = 0xcb

.field static final AR_AVAILABILITY_SUPPORTED_NOT_INSTALLED:I = 0xc9

.field static final AR_AVAILABILITY_UNKNOWN_CHECKING:I = 0x1

.field static final AR_AVAILABILITY_UNKNOWN_ERROR:I = 0x0

.field static final AR_AVAILABILITY_UNKNOWN_TIMED_OUT:I = 0x2

.field static final AR_AVAILABILITY_UNSUPPORTED_DEVICE_NOT_CAPABLE:I = 0x64

.field static final AR_INSTALL_BEHAVIOR_OPTIONAL:I = 0x1

.field static final AR_INSTALL_BEHAVIOR_REQUIRED:I = 0x0

.field static final AR_INSTALL_STATUS_INSTALLED:I = 0x0

.field static final AR_INSTALL_STATUS_INSTALL_REQUESTED:I = 0x1

.field static final AR_INSTALL_USER_MESSAGE_TYPE_APPLICATION:I = 0x0

.field static final AR_INSTALL_USER_MESSAGE_TYPE_FEATURE:I = 0x1

.field static final AR_INSTALL_USER_MESSAGE_TYPE_USER_ALREADY_INFORMED:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/ar/core/ArCoreApk;
    .locals 1

    invoke-static {}, Lcom/google/ar/core/h;->a()Lcom/google/ar/core/h;

    move-result-object v0

    return-object v0
.end method

.method private native nativeFunctionToForceJavahOutput()V
.end method


# virtual methods
.method public checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;,
            Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
