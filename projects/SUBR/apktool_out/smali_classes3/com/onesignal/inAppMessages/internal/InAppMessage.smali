.class public final Lcom/onesignal/inAppMessages/internal/InAppMessage;
.super Ljava/lang/Object;
.source "InAppMessage.kt"

# interfaces
.implements Lcom/onesignal/inAppMessages/IInAppMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/InAppMessage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessage.kt\ncom/onesignal/inAppMessages/internal/InAppMessage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n1#2:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010#\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 N2\u00020\u0001:\u0001NB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B5\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000eB\u0017\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0011B\u0015\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0012J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0008J\u0006\u0010:\u001a\u000208J\u0013\u0010;\u001a\u00020\u00032\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0096\u0002J\u0008\u0010>\u001a\u00020?H\u0016J\u000e\u0010@\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u0008J\u0012\u0010A\u001a\u0004\u0018\u00010 2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J6\u0010B\u001a(\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0C0Cj\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020/0Cj\u0008\u0012\u0004\u0012\u00020/`D`D2\u0006\u0010E\u001a\u00020FH\u0002JT\u0010G\u001aF\u0012\u0004\u0012\u00020\u0008\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080H0Hj*\u0012\u0004\u0012\u00020\u0008\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080Hj\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008`I`I2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010J\u001a\u0002082\u0006\u00109\u001a\u00020\u0008J\u0006\u0010K\u001a\u00020\u0003J\u0006\u0010L\u001a\u00020\u0010J\u0008\u0010M\u001a\u00020\u0008H\u0016R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00152\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010#\"\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010#R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010#R\u001a\u0010(\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010&R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R6\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0.2\u0012\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0.@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102RN\u00104\u001a\u001a\u0012\u0004\u0012\u00020\u0008\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000803032\u001e\u0010\u0014\u001a\u001a\u0012\u0004\u0012\u00020\u0008\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080303@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/InAppMessage;",
        "Lcom/onesignal/inAppMessages/IInAppMessage;",
        "isPreview",
        "",
        "time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(ZLcom/onesignal/core/internal/time/ITime;)V",
        "messageId",
        "",
        "clickIds",
        "",
        "displayedInSession",
        "redisplayStats",
        "Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;",
        "(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;Lcom/onesignal/core/internal/time/ITime;)V",
        "json",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V",
        "(Ljava/lang/String;Lcom/onesignal/core/internal/time/ITime;)V",
        "actionTaken",
        "<set-?>",
        "",
        "clickedClickIds",
        "getClickedClickIds",
        "()Ljava/util/Set;",
        "displayDuration",
        "",
        "getDisplayDuration",
        "()D",
        "setDisplayDuration",
        "(D)V",
        "endTime",
        "Ljava/util/Date;",
        "hasLiquid",
        "getHasLiquid",
        "()Z",
        "isDisplayedInSession",
        "setDisplayedInSession",
        "(Z)V",
        "isFinished",
        "isTriggerChanged",
        "setTriggerChanged",
        "getMessageId",
        "()Ljava/lang/String;",
        "getRedisplayStats",
        "()Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;",
        "",
        "Lcom/onesignal/inAppMessages/internal/Trigger;",
        "triggers",
        "getTriggers",
        "()Ljava/util/List;",
        "",
        "variants",
        "getVariants",
        "()Ljava/util/Map;",
        "addClickId",
        "",
        "clickId",
        "clearClickIds",
        "equals",
        "o",
        "",
        "hashCode",
        "",
        "isClickAvailable",
        "parseEndTimeJson",
        "parseTriggerJson",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "triggersJson",
        "Lorg/json/JSONArray;",
        "parseVariants",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "removeClickId",
        "takeActionAsUnique",
        "toJSONObject",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onesignal/inAppMessages/internal/InAppMessage$Companion;

.field private static final DISPLAY_DURATION:Ljava/lang/String; = "displayDuration"

.field private static final END_TIME:Ljava/lang/String; = "end_time"

.field private static final HAS_LIQUID:Ljava/lang/String; = "has_liquid"

.field private static final IAM_ID:Ljava/lang/String; = "messageId"

.field private static final IAM_REDISPLAY_STATS:Ljava/lang/String; = "redisplay"

.field private static final IAM_TRIGGERS:Ljava/lang/String; = "triggers"

.field private static final IAM_VARIANTS:Ljava/lang/String; = "variants"

.field private static final ID:Ljava/lang/String; = "id"


# instance fields
.field private actionTaken:Z

.field private clickedClickIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayDuration:D

.field private endTime:Ljava/util/Date;

.field private hasLiquid:Z

.field private isDisplayedInSession:Z

.field private isPreview:Z

.field private isTriggerChanged:Z

.field private final messageId:Ljava/lang/String;

.field private redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

.field private triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/Trigger;",
            ">;>;"
        }
    .end annotation
.end field

.field private variants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/inAppMessages/internal/InAppMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/inAppMessages/internal/InAppMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->Companion:Lcom/onesignal/inAppMessages/internal/InAppMessage$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->messageId:Ljava/lang/String;

    .line 25
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->triggers:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 44
    new-instance p1, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    invoke-direct {p1, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;-><init>(Lcom/onesignal/core/internal/time/ITime;)V

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;ZLcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;",
            "Lcom/onesignal/core/internal/time/ITime;",
            ")V"
        }
    .end annotation

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redisplayStats"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p5}, Lcom/onesignal/inAppMessages/internal/InAppMessage;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/time/ITime;)V

    .line 87
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 88
    iput-boolean p3, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isDisplayedInSession:Z

    .line 89
    iput-object p4, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(ID)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessage;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/time/ITime;)V

    const-string v0, "variants"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "json.getJSONObject(IAM_VARIANTS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    const-string v0, "triggers"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "json.getJSONArray(IAM_TRIGGERS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->triggers:Ljava/util/List;

    .line 97
    invoke-direct {p0, p1}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->parseEndTimeJson(Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    const-string v0, "has_liquid"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->hasLiquid:Z

    :cond_0
    const-string v0, "redisplay"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v1, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "json.getJSONObject(IAM_REDISPLAY_STATS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;-><init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V

    iput-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    :cond_1
    return-void
.end method

.method public constructor <init>(ZLcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessage;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/time/ITime;)V

    .line 77
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isPreview:Z

    return-void
.end method

.method private final parseEndTimeJson(Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "end_time"

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{\n                json.g\u2026g(END_TIME)\n            }"

    .line 110
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "null"

    .line 115
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 117
    :cond_0
    :try_start_1
    sget-object v1, Lcom/onesignal/common/DateUtils;->INSTANCE:Lcom/onesignal/common/DateUtils;

    invoke-virtual {v1}, Lcom/onesignal/common/DateUtils;->iso8601Format()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :catch_1
    return-object v0
.end method

.method private final parseTriggerJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/inAppMessages/internal/Trigger;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 148
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    .line 151
    new-instance v8, Lcom/onesignal/inAppMessages/internal/Trigger;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "ands.getJSONObject(j)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/onesignal/inAppMessages/internal/Trigger;-><init>(Lorg/json/JSONObject;)V

    .line 152
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final parseVariants(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 134
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    move-object v7, v4

    check-cast v7, Ljava/util/Map;

    const-string v8, "languageType"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "variant.getString(languageType)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string v5, "variantType"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final addClickId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clickId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearClickIds()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    check-cast p1, Lcom/onesignal/inAppMessages/internal/InAppMessage;

    .line 237
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getClickedClickIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getDisplayDuration()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->displayDuration:D

    return-wide v0
.end method

.method public final getHasLiquid()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->hasLiquid:Z

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedisplayStats()Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    return-object v0
.end method

.method public final getTriggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onesignal/inAppMessages/internal/Trigger;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->triggers:Ljava/util/List;

    return-object v0
.end method

.method public final getVariants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isClickAvailable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "clickId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final isDisplayedInSession()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isDisplayedInSession:Z

    return v0
.end method

.method public final isFinished()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public final isPreview()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isPreview:Z

    return v0
.end method

.method public final isTriggerChanged()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isTriggerChanged:Z

    return v0
.end method

.method public final removeClickId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clickId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDisplayDuration(D)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->displayDuration:D

    return-void
.end method

.method public final setDisplayedInSession(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isDisplayedInSession:Z

    return-void
.end method

.method public final setTriggerChanged(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isTriggerChanged:Z

    return-void
.end method

.method public final takeActionAsUnique()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->actionTaken:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->actionTaken:Z

    :goto_0
    return v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "messageId"

    .line 162
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 164
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    iget-object v4, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/util/Map;

    .line 166
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 167
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v2, "variants"

    .line 170
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayDuration"

    .line 171
    iget-wide v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->displayDuration:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "redisplay"

    .line 172
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    invoke-virtual {v2}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 174
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->triggers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 175
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 176
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onesignal/inAppMessages/internal/Trigger;

    invoke-virtual {v5}, Lcom/onesignal/inAppMessages/internal/Trigger;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 177
    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v2, "triggers"

    .line 179
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 181
    sget-object v1, Lcom/onesignal/common/DateUtils;->INSTANCE:Lcom/onesignal/common/DateUtils;

    invoke-virtual {v1}, Lcom/onesignal/common/DateUtils;->iso8601Format()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end_time"

    .line 183
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "has_liquid"

    .line 185
    iget-boolean v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->hasLiquid:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 187
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OSInAppMessage{messageId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/onesignal/inAppMessages/internal/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', variants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->variants:Ljava/util/Map;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", triggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->triggers:Ljava/util/List;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedClickIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->clickedClickIds:Ljava/util/Set;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redisplayStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->redisplayStats:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-wide v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->displayDuration:D

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", displayedInSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-boolean v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isDisplayedInSession:Z

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", triggerChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-boolean v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isTriggerChanged:Z

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", actionTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-boolean v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->actionTaken:Z

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-boolean v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->isPreview:Z

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->endTime:Ljava/util/Date;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasLiquid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-boolean v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessage;->hasLiquid:Z

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
