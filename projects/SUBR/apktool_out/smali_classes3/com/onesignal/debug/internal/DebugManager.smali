.class public final Lcom/onesignal/debug/internal/DebugManager;
.super Ljava/lang/Object;
.source "DebugManager.kt"

# interfaces
.implements Lcom/onesignal/debug/IDebugManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/debug/internal/DebugManager;",
        "Lcom/onesignal/debug/IDebugManager;",
        "()V",
        "value",
        "Lcom/onesignal/debug/LogLevel;",
        "alertLevel",
        "getAlertLevel",
        "()Lcom/onesignal/debug/LogLevel;",
        "setAlertLevel",
        "(Lcom/onesignal/debug/LogLevel;)V",
        "logLevel",
        "getLogLevel",
        "setLogLevel",
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
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/onesignal/debug/LogLevel;->WARN:Lcom/onesignal/debug/LogLevel;

    invoke-virtual {p0, v0}, Lcom/onesignal/debug/internal/DebugManager;->setLogLevel(Lcom/onesignal/debug/LogLevel;)V

    .line 22
    sget-object v0, Lcom/onesignal/debug/LogLevel;->NONE:Lcom/onesignal/debug/LogLevel;

    invoke-virtual {p0, v0}, Lcom/onesignal/debug/internal/DebugManager;->setAlertLevel(Lcom/onesignal/debug/LogLevel;)V

    return-void
.end method


# virtual methods
.method public getAlertLevel()Lcom/onesignal/debug/LogLevel;
    .locals 1

    .line 15
    invoke-static {}, Lcom/onesignal/debug/internal/logging/Logging;->getVisualLogLevel()Lcom/onesignal/debug/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lcom/onesignal/debug/LogLevel;
    .locals 1

    .line 9
    invoke-static {}, Lcom/onesignal/debug/internal/logging/Logging;->getLogLevel()Lcom/onesignal/debug/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public setAlertLevel(Lcom/onesignal/debug/LogLevel;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/onesignal/debug/internal/logging/Logging;->setVisualLogLevel(Lcom/onesignal/debug/LogLevel;)V

    return-void
.end method

.method public setLogLevel(Lcom/onesignal/debug/LogLevel;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/onesignal/debug/internal/logging/Logging;->setLogLevel(Lcom/onesignal/debug/LogLevel;)V

    return-void
.end method
