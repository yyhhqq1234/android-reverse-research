.class public final Lcom/onesignal/session/internal/influence/Influence;
.super Ljava/lang/Object;
.source "Influence.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/session/internal/influence/Influence$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInfluence.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Influence.kt\ncom/onesignal/session/internal/influence/Influence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B!\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u001a\u001a\u00020\u0000J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u0003J\u0008\u0010!\u001a\u00020\u0003H\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onesignal/session/internal/influence/Influence;",
        "",
        "jsonString",
        "",
        "(Ljava/lang/String;)V",
        "influenceChannel",
        "Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "influenceType",
        "Lcom/onesignal/session/internal/influence/InfluenceType;",
        "ids",
        "Lorg/json/JSONArray;",
        "(Lcom/onesignal/session/internal/influence/InfluenceChannel;Lcom/onesignal/session/internal/influence/InfluenceType;Lorg/json/JSONArray;)V",
        "directId",
        "getDirectId",
        "()Ljava/lang/String;",
        "getIds",
        "()Lorg/json/JSONArray;",
        "setIds",
        "(Lorg/json/JSONArray;)V",
        "<set-?>",
        "getInfluenceChannel",
        "()Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "getInfluenceType",
        "()Lcom/onesignal/session/internal/influence/InfluenceType;",
        "setInfluenceType",
        "(Lcom/onesignal/session/internal/influence/InfluenceType;)V",
        "copy",
        "equals",
        "",
        "o",
        "hashCode",
        "",
        "toJSONString",
        "toString",
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
.field public static final Companion:Lcom/onesignal/session/internal/influence/Influence$Companion;

.field public static final INFLUENCE_CHANNEL:Ljava/lang/String; = "influence_channel"

.field public static final INFLUENCE_IDS:Ljava/lang/String; = "influence_ids"

.field public static final INFLUENCE_TYPE:Ljava/lang/String; = "influence_type"


# instance fields
.field private ids:Lorg/json/JSONArray;

.field private influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

.field private influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/session/internal/influence/Influence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/session/internal/influence/Influence$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/session/internal/influence/Influence;->Companion:Lcom/onesignal/session/internal/influence/Influence$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/session/internal/influence/InfluenceChannel;Lcom/onesignal/session/internal/influence/InfluenceType;Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "influenceChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "influenceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    .line 33
    iput-object p2, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    .line 34
    iput-object p3, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "influence_channel"

    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "influence_type"

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_ids"

    .line 21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    sget-object v2, Lcom/onesignal/session/internal/influence/InfluenceChannel;->Companion:Lcom/onesignal/session/internal/influence/InfluenceChannel$Companion;

    invoke-virtual {v2, p1}, Lcom/onesignal/session/internal/influence/InfluenceChannel$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/session/internal/influence/InfluenceChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    .line 23
    sget-object p1, Lcom/onesignal/session/internal/influence/InfluenceType;->Companion:Lcom/onesignal/session/internal/influence/InfluenceType$Companion;

    invoke-virtual {p1, v1}, Lcom/onesignal/session/internal/influence/InfluenceType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/session/internal/influence/InfluenceType;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    const-string p1, "ids"

    .line 24
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onesignal/session/internal/influence/Influence;
    .locals 4

    .line 42
    new-instance v0, Lcom/onesignal/session/internal/influence/Influence;

    .line 43
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    .line 44
    iget-object v2, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    .line 45
    iget-object v3, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/session/internal/influence/Influence;-><init>(Lcom/onesignal/session/internal/influence/InfluenceChannel;Lcom/onesignal/session/internal/influence/InfluenceType;Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    check-cast p1, Lcom/onesignal/session/internal/influence/Influence;

    .line 68
    iget-object v2, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    iget-object v3, p1, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    if-ne v2, v3, :cond_2

    .line 69
    iget-object v2, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    iget-object p1, p1, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getDirectId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final getIds()Lorg/json/JSONArray;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getInfluenceChannel()Lcom/onesignal/session/internal/influence/InfluenceChannel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    return-object v0
.end method

.method public final getInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    invoke-virtual {v0}, Lcom/onesignal/session/internal/influence/InfluenceChannel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/session/internal/influence/InfluenceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setIds(Lorg/json/JSONArray;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    return-void
.end method

.method public final setInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    return-void
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/session/internal/influence/InfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_channel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    invoke-virtual {v1}, Lcom/onesignal/session/internal/influence/InfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "influence_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, "influence_ids"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026)\n            .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionInfluence{influenceChannel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceChannel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", influenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->influenceType:Lcom/onesignal/session/internal/influence/InfluenceType;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/onesignal/session/internal/influence/Influence;->ids:Lorg/json/JSONArray;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
