.class public final Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;
.super Ljava/lang/Object;
.source "OutcomeEventParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0008\u0010\u001e\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;",
        "",
        "outcomeId",
        "",
        "outcomeSource",
        "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;",
        "weight",
        "",
        "sessionTime",
        "",
        "timestamp",
        "(Ljava/lang/String;Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;FJJ)V",
        "getOutcomeId",
        "()Ljava/lang/String;",
        "getOutcomeSource",
        "()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;",
        "getSessionTime",
        "()J",
        "setSessionTime",
        "(J)V",
        "getTimestamp",
        "setTimestamp",
        "getWeight",
        "()F",
        "setWeight",
        "(F)V",
        "isUnattributed",
        "",
        "toJSONObject",
        "Lorg/json/JSONObject;",
        "toString",
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


# instance fields
.field private final outcomeId:Ljava/lang/String;

.field private final outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

.field private sessionTime:J

.field private timestamp:J

.field private weight:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;FJJ)V
    .locals 1

    const-string v0, "outcomeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeId:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    .line 11
    iput p3, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->weight:F

    .line 13
    iput-wide p4, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->sessionTime:J

    .line 15
    iput-wide p6, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->timestamp:J

    return-void
.end method


# virtual methods
.method public final getOutcomeId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutcomeSource()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    return-object v0
.end method

.method public final getSessionTime()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->sessionTime:J

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->timestamp:J

    return-wide v0
.end method

.method public final getWeight()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->weight:F

    return v0
.end method

.method public final isUnattributed()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->getDirectBody()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    invoke-virtual {v0}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->getIndirectBody()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setSessionTime(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->sessionTime:J

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->timestamp:J

    return-void
.end method

.method public final setWeight(F)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->weight:F

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 21
    iget-object v2, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    if-eqz v1, :cond_0

    const-string v2, "sources"

    .line 23
    invoke-virtual {v1}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_0
    iget v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const-string v2, "weight"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_1
    iget-wide v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v5, "timestamp"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    :cond_2
    iget-wide v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->sessionTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    const-string v3, "session_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "json"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutcomeEventParams{outcomeId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', outcomeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->outcomeSource:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->weight:F

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->timestamp:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->sessionTime:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
