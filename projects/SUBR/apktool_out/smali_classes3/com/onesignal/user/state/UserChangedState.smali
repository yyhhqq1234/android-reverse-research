.class public final Lcom/onesignal/user/state/UserChangedState;
.super Ljava/lang/Object;
.source "UserChangedState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onesignal/user/state/UserChangedState;",
        "",
        "current",
        "Lcom/onesignal/user/state/UserState;",
        "(Lcom/onesignal/user/state/UserState;)V",
        "getCurrent",
        "()Lcom/onesignal/user/state/UserState;",
        "toJSONObject",
        "Lorg/json/JSONObject;",
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
.field private final current:Lcom/onesignal/user/state/UserState;


# direct methods
.method public constructor <init>(Lcom/onesignal/user/state/UserState;)V
    .locals 1

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/onesignal/user/state/UserChangedState;->current:Lcom/onesignal/user/state/UserState;

    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/onesignal/user/state/UserState;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onesignal/user/state/UserChangedState;->current:Lcom/onesignal/user/state/UserState;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/onesignal/user/state/UserChangedState;->current:Lcom/onesignal/user/state/UserState;

    invoke-virtual {v1}, Lcom/onesignal/user/state/UserState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026, current.toJSONObject())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
