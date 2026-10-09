.class public final Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;
.super Ljava/lang/Object;
.source "MisconfiguredLocationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/location/internal/MisconfiguredLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;",
        "",
        "()V",
        "EXCEPTION",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "getEXCEPTION",
        "()Ljava/lang/Exception;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEXCEPTION(Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;)Ljava/lang/Exception;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;->getEXCEPTION()Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method private final getEXCEPTION()Ljava/lang/Exception;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must include gradle module com.onesignal:Location in order to use this functionality!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
