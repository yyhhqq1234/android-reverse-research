.class public final Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;
.super Ljava/lang/Object;
.source "InAppMessageRedisplayStats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0001)B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0017\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bB\r\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\rJ\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0000J\u0006\u0010%\u001a\u00020\u001bJ\u0006\u0010&\u001a\u00020\nJ\u0008\u0010\'\u001a\u00020(H\u0016R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001cR\u001e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0010\"\u0004\u0008 \u0010\u0012\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;",
        "",
        "displayQuantity",
        "",
        "lastDisplayTime",
        "",
        "time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(IJLcom/onesignal/core/internal/time/ITime;)V",
        "json",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V",
        "_time",
        "(Lcom/onesignal/core/internal/time/ITime;)V",
        "displayDelay",
        "getDisplayDelay",
        "()J",
        "setDisplayDelay",
        "(J)V",
        "displayLimit",
        "getDisplayLimit",
        "()I",
        "setDisplayLimit",
        "(I)V",
        "getDisplayQuantity",
        "setDisplayQuantity",
        "isDelayTimeSatisfied",
        "",
        "()Z",
        "<set-?>",
        "isRedisplayEnabled",
        "getLastDisplayTime",
        "setLastDisplayTime",
        "incrementDisplayQuantity",
        "",
        "setDisplayStats",
        "displayStats",
        "shouldDisplayAgain",
        "toJSONObject",
        "toString",
        "",
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
.field public static final Companion:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats$Companion;

.field private static final DISPLAY_DELAY:Ljava/lang/String; = "delay"

.field private static final DISPLAY_LIMIT:Ljava/lang/String; = "limit"


# instance fields
.field private final _time:Lcom/onesignal/core/internal/time/ITime;

.field private displayDelay:J

.field private displayLimit:I

.field private displayQuantity:I

.field private isRedisplayEnabled:Z

.field private lastDisplayTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->Companion:Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats$Companion;

    return-void
.end method

.method public constructor <init>(IJLcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "time"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p4}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;-><init>(Lcom/onesignal/core/internal/time/ITime;)V

    .line 26
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    .line 27
    iput-wide p2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/time/ITime;)V
    .locals 2

    const-string v0, "_time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->_time:Lcom/onesignal/core/internal/time/ITime;

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;-><init>(Lcom/onesignal/core/internal/time/ITime;)V

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->isRedisplayEnabled:Z

    const-string p2, "limit"

    .line 32
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "delay"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 35
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    .line 38
    :cond_0
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 39
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    goto :goto_0

    .line 40
    :cond_1
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 41
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getDisplayDelay()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    return-wide v0
.end method

.method public final getDisplayLimit()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    return v0
.end method

.method public final getDisplayQuantity()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    return v0
.end method

.method public final getLastDisplayTime()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    return-wide v0
.end method

.method public final incrementDisplayQuantity()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    return-void
.end method

.method public final isDelayTimeSatisfied()Z
    .locals 8

    .line 63
    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-interface {v0}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 66
    iget-wide v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    sub-long v2, v0, v2

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OSInAppMessage lastDisplayTime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " currentTimeInSeconds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " diffInSeconds: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " displayDelay: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 67
    invoke-static {v0, v5, v1, v5}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 70
    iget-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public final isRedisplayEnabled()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->isRedisplayEnabled:Z

    return v0
.end method

.method public final setDisplayDelay(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    return-void
.end method

.method public final setDisplayLimit(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    return-void
.end method

.method public final setDisplayQuantity(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    return-void
.end method

.method public final setDisplayStats(Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;)V
    .locals 2

    const-string v0, "displayStats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-wide v0, p1, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    iput-wide v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    .line 47
    iget p1, p1, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    iput p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    return-void
.end method

.method public final setLastDisplayTime(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    return-void
.end method

.method public final shouldDisplayAgain()Z
    .locals 4

    .line 55
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    iget v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OSInAppMessage shouldDisplayAgain: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "limit"

    .line 76
    iget v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "delay"

    .line 77
    iget-wide v2, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OSInAppMessageDisplayStats{lastDisplayTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-wide v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->lastDisplayTime:J

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", displayQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayQuantity:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayLimit:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessageRedisplayStats;->displayDelay:J

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
