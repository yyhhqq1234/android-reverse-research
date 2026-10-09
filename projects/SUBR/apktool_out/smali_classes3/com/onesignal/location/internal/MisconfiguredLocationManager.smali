.class public final Lcom/onesignal/location/internal/MisconfiguredLocationManager;
.super Ljava/lang/Object;
.source "MisconfiguredLocationManager.kt"

# interfaces
.implements Lcom/onesignal/location/ILocationManager;


# annotations
.annotation runtime Lcom/onesignal/core/internal/minification/KeepStub;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\t\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/location/internal/MisconfiguredLocationManager;",
        "Lcom/onesignal/location/ILocationManager;",
        "()V",
        "value",
        "",
        "isShared",
        "()Z",
        "setShared",
        "(Z)V",
        "requestPermission",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/location/internal/MisconfiguredLocationManager;->Companion:Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShared()Z
    .locals 1

    .line 13
    sget-object v0, Lcom/onesignal/location/internal/MisconfiguredLocationManager;->Companion:Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;

    invoke-static {v0}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;->access$getEXCEPTION(Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public requestPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 16
    sget-object p1, Lcom/onesignal/location/internal/MisconfiguredLocationManager;->Companion:Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;

    invoke-static {p1}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;->access$getEXCEPTION(Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;)Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method public setShared(Z)V
    .locals 0

    .line 14
    sget-object p1, Lcom/onesignal/location/internal/MisconfiguredLocationManager;->Companion:Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;

    invoke-static {p1}, Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;->access$getEXCEPTION(Lcom/onesignal/location/internal/MisconfiguredLocationManager$Companion;)Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method
