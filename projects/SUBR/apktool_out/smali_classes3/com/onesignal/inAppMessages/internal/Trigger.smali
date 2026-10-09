.class public final Lcom/onesignal/inAppMessages/internal/Trigger;
.super Ljava/lang/Object;
.source "Trigger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;,
        Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0003J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/Trigger;",
        "",
        "json",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "kind",
        "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;",
        "getKind",
        "()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;",
        "operatorType",
        "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;",
        "getOperatorType",
        "()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;",
        "property",
        "",
        "getProperty",
        "()Ljava/lang/String;",
        "triggerId",
        "getTriggerId",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "toJSONObject",
        "toString",
        "OSTriggerKind",
        "OSTriggerOperator",
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
.field private final kind:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

.field private final operatorType:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

.field private final property:Ljava/lang/String;

.field private final triggerId:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(\"id\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->triggerId:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;->Companion:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind$Companion;

    const-string v1, "kind"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->kind:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

    const-string v0, "property"

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->property:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;->Companion:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator$Companion;

    const-string v1, "operator"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->operatorType:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

    const-string v0, "value"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKind()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->kind:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

    return-object v0
.end method

.method public final getOperatorType()Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->operatorType:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

    return-object v0
.end method

.method public final getProperty()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->property:Ljava/lang/String;

    return-object v0
.end method

.method public final getTriggerId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->triggerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 102
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->triggerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "kind"

    .line 103
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->kind:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "property"

    .line 104
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->property:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "operator"

    .line 105
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->operatorType:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

    invoke-virtual {v2}, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 106
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trigger{triggerId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->triggerId:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->kind:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->property:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', operatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->operatorType:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/Trigger;->value:Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
