.class public final Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;
.super Ljava/lang/Object;
.source "InAppMessageClickEvent.kt"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;",
        "Lcom/onesignal/inAppMessages/IInAppMessageClickEvent;",
        "msg",
        "Lcom/onesignal/inAppMessages/internal/InAppMessage;",
        "actn",
        "Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;",
        "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;)V",
        "_message",
        "_result",
        "message",
        "Lcom/onesignal/inAppMessages/IInAppMessage;",
        "getMessage",
        "()Lcom/onesignal/inAppMessages/IInAppMessage;",
        "result",
        "Lcom/onesignal/inAppMessages/IInAppMessageClickResult;",
        "getResult",
        "()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;",
        "toJSONObject",
        "Lorg/json/JSONObject;",
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
.field private final _message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

.field private final _result:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;


# direct methods
.method public constructor <init>(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    .line 16
    iput-object p2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_result:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/onesignal/inAppMessages/IInAppMessage;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    check-cast v0, Lcom/onesignal/inAppMessages/IInAppMessage;

    return-object v0
.end method

.method public getResult()Lcom/onesignal/inAppMessages/IInAppMessageClickResult;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_result:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;

    check-cast v0, Lcom/onesignal/inAppMessages/IInAppMessageClickResult;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    invoke-virtual {v1}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageClickEvent;->_result:Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;

    invoke-virtual {v1}, Lcom/onesignal/inAppMessages/internal/InAppMessageClickResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026, _result.toJSONObject())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
