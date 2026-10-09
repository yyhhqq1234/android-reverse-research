.class public final Lcom/onesignal/session/internal/session/SessionModel;
.super Lcom/onesignal/common/modeling/Model;
.source "SessionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onesignal/session/internal/session/SessionModel;",
        "Lcom/onesignal/common/modeling/Model;",
        "()V",
        "value",
        "",
        "activeDuration",
        "getActiveDuration",
        "()J",
        "setActiveDuration",
        "(J)V",
        "focusTime",
        "getFocusTime",
        "setFocusTime",
        "",
        "isValid",
        "()Z",
        "setValid",
        "(Z)V",
        "",
        "sessionId",
        "getSessionId",
        "()Ljava/lang/String;",
        "setSessionId",
        "(Ljava/lang/String;)V",
        "startTime",
        "getStartTime",
        "setStartTime",
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
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 8
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onesignal/common/modeling/Model;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getActiveDuration()J
    .locals 2

    .line 53
    sget-object v0, Lcom/onesignal/session/internal/session/SessionModel$activeDuration$2;->INSTANCE:Lcom/onesignal/session/internal/session/SessionModel$activeDuration$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "activeDuration"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/session/internal/session/SessionModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFocusTime()J
    .locals 2

    .line 44
    sget-object v0, Lcom/onesignal/session/internal/session/SessionModel$focusTime$2;->INSTANCE:Lcom/onesignal/session/internal/session/SessionModel$focusTime$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "focusTime"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/session/internal/session/SessionModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 4

    .line 13
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "sessionId"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 35
    sget-object v0, Lcom/onesignal/session/internal/session/SessionModel$startTime$2;->INSTANCE:Lcom/onesignal/session/internal/session/SessionModel$startTime$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "startTime"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/session/internal/session/SessionModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isValid()Z
    .locals 2

    .line 25
    sget-object v0, Lcom/onesignal/session/internal/session/SessionModel$isValid$2;->INSTANCE:Lcom/onesignal/session/internal/session/SessionModel$isValid$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "isValid"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/session/internal/session/SessionModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final setActiveDuration(J)V
    .locals 8

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "activeDuration"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setFocusTime(J)V
    .locals 8

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "focusTime"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "sessionId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setStartTime(J)V
    .locals 8

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "startTime"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setValid(Z)V
    .locals 7

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "isValid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
