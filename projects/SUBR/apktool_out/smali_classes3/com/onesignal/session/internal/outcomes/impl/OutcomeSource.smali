.class public final Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;
.super Ljava/lang/Object;
.source "OutcomeSource.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;",
        "",
        "directBody",
        "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;",
        "indirectBody",
        "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)V",
        "getDirectBody",
        "()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;",
        "setDirectBody",
        "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)V",
        "getIndirectBody",
        "setIndirectBody",
        "toJSONObject",
        "Lorg/json/JSONObject;",
        "toString",
        "",
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
.field private directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

.field private indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;


# direct methods
.method public constructor <init>(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    .line 8
    iput-object p2, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-void
.end method


# virtual methods
.method public final getDirectBody()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-object v0
.end method

.method public final getIndirectBody()Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-object v0
.end method

.method public final setDirectBody(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;
    .locals 1

    .line 23
    move-object v0, p0

    check-cast v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    .line 24
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-object p0
.end method

.method public final setDirectBody(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-void
.end method

.method public final setIndirectBody(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;
    .locals 1

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;

    .line 29
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-object p0
.end method

.method public final setIndirectBody(Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    if-eqz v1, :cond_0

    const-string v2, "direct"

    .line 14
    invoke-virtual {v1}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    if-eqz v1, :cond_1

    const-string v2, "indirect"

    .line 17
    invoke-virtual {v1}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutcomeSource{directBody="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->directBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeSource;->indirectBody:Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
