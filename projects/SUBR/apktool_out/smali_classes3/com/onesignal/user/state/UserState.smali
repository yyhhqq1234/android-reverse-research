.class public final Lcom/onesignal/user/state/UserState;
.super Ljava/lang/Object;
.source "UserState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/user/state/UserState;",
        "",
        "onesignalId",
        "",
        "externalId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getExternalId",
        "()Ljava/lang/String;",
        "getOnesignalId",
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
.field private final externalId:Ljava/lang/String;

.field private final onesignalId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "onesignalId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/user/state/UserState;->onesignalId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/onesignal/user/state/UserState;->externalId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExternalId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/onesignal/user/state/UserState;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnesignalId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/onesignal/user/state/UserState;->onesignalId:Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "onesignalId"

    .line 24
    iget-object v2, p0, Lcom/onesignal/user/state/UserState;->onesignalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "externalId"

    .line 25
    iget-object v2, p0, Lcom/onesignal/user/state/UserState;->externalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026\"externalId\", externalId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
