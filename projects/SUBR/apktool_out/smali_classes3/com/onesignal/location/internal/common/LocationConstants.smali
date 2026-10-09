.class public final Lcom/onesignal/location/internal/common/LocationConstants;
.super Ljava/lang/Object;
.source "LocationConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onesignal/location/internal/common/LocationConstants;",
        "",
        "()V",
        "ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING",
        "",
        "ANDROID_COARSE_LOCATION_PERMISSION_STRING",
        "ANDROID_FINE_LOCATION_PERMISSION_STRING",
        "BACKGROUND_UPDATE_TIME_MS",
        "",
        "FOREGROUND_UPDATE_TIME_MS",
        "TIME_BACKGROUND_SEC",
        "TIME_FOREGROUND_SEC",
        "com.onesignal.location"
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
.field public static final ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field public static final ANDROID_COARSE_LOCATION_PERMISSION_STRING:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field public static final ANDROID_FINE_LOCATION_PERMISSION_STRING:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final BACKGROUND_UPDATE_TIME_MS:J = 0x8b290L

.field public static final FOREGROUND_UPDATE_TIME_MS:J = 0x41eb0L

.field public static final INSTANCE:Lcom/onesignal/location/internal/common/LocationConstants;

.field public static final TIME_BACKGROUND_SEC:J = 0x258L

.field public static final TIME_FOREGROUND_SEC:J = 0x12cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/location/internal/common/LocationConstants;

    invoke-direct {v0}, Lcom/onesignal/location/internal/common/LocationConstants;-><init>()V

    sput-object v0, Lcom/onesignal/location/internal/common/LocationConstants;->INSTANCE:Lcom/onesignal/location/internal/common/LocationConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
