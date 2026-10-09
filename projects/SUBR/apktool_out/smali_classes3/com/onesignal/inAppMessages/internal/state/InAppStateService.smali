.class public final Lcom/onesignal/inAppMessages/internal/state/InAppStateService;
.super Ljava/lang/Object;
.source "InAppStateService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/state/InAppStateService;",
        "",
        "()V",
        "currentPrompt",
        "Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
        "getCurrentPrompt",
        "()Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;",
        "setCurrentPrompt",
        "(Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;)V",
        "inAppMessageIdShowing",
        "",
        "getInAppMessageIdShowing",
        "()Ljava/lang/String;",
        "setInAppMessageIdShowing",
        "(Ljava/lang/String;)V",
        "lastTimeInAppDismissed",
        "",
        "getLastTimeInAppDismissed",
        "()Ljava/lang/Long;",
        "setLastTimeInAppDismissed",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "paused",
        "",
        "getPaused",
        "()Z",
        "setPaused",
        "(Z)V",
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


# instance fields
.field private currentPrompt:Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

.field private inAppMessageIdShowing:Ljava/lang/String;

.field private lastTimeInAppDismissed:Ljava/lang/Long;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentPrompt()Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->currentPrompt:Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

    return-object v0
.end method

.method public final getInAppMessageIdShowing()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->inAppMessageIdShowing:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastTimeInAppDismissed()Ljava/lang/Long;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->lastTimeInAppDismissed:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPaused()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->paused:Z

    return v0
.end method

.method public final setCurrentPrompt(Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->currentPrompt:Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePrompt;

    return-void
.end method

.method public final setInAppMessageIdShowing(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->inAppMessageIdShowing:Ljava/lang/String;

    return-void
.end method

.method public final setLastTimeInAppDismissed(Ljava/lang/Long;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->lastTimeInAppDismissed:Ljava/lang/Long;

    return-void
.end method

.method public final setPaused(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;->paused:Z

    return-void
.end method
