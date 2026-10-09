.class public final Lcom/onesignal/common/consistency/IamFetchReadyCondition;
.super Ljava/lang/Object;
.source "IamFetchReadyCondition.kt"

# interfaces
.implements Lcom/onesignal/common/consistency/models/ICondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/common/consistency/IamFetchReadyCondition$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIamFetchReadyCondition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IamFetchReadyCondition.kt\ncom/onesignal/common/consistency/IamFetchReadyCondition\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1959#2,14:50\n*S KotlinDebug\n*F\n+ 1 IamFetchReadyCondition.kt\ncom/onesignal/common/consistency/IamFetchReadyCondition\n*L\n46#1:50,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0008\u001a\u0004\u0018\u00010\t2 \u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000b0\u000bH\u0016J(\u0010\r\u001a\u00020\u000e2\u001e\u0010\n\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\t0\u000b0\u000bH\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onesignal/common/consistency/IamFetchReadyCondition;",
        "Lcom/onesignal/common/consistency/models/ICondition;",
        "key",
        "",
        "(Ljava/lang/String;)V",
        "id",
        "getId",
        "()Ljava/lang/String;",
        "getRywData",
        "Lcom/onesignal/common/consistency/RywData;",
        "indexedTokens",
        "",
        "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
        "isMet",
        "",
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
.field public static final Companion:Lcom/onesignal/common/consistency/IamFetchReadyCondition$Companion;

.field public static final ID:Ljava/lang/String; = "IamFetchReadyCondition"


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/common/consistency/IamFetchReadyCondition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/common/consistency/IamFetchReadyCondition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/common/consistency/IamFetchReadyCondition;->Companion:Lcom/onesignal/common/consistency/IamFetchReadyCondition$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/common/consistency/IamFetchReadyCondition;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "IamFetchReadyCondition"

    return-object v0
.end method

.method public getRywData(Ljava/util/Map;)Lcom/onesignal/common/consistency/RywData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
            "Lcom/onesignal/common/consistency/RywData;",
            ">;>;)",
            "Lcom/onesignal/common/consistency/RywData;"
        }
    .end annotation

    const-string v0, "indexedTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/onesignal/common/consistency/IamFetchReadyCondition;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/onesignal/common/consistency/RywData;

    .line 44
    sget-object v2, Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;->USER:Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/common/consistency/RywData;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 45
    sget-object v2, Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;->SUBSCRIPTION:Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/common/consistency/RywData;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 43
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/onesignal/common/consistency/RywData;

    .line 46
    invoke-virtual {v1}, Lcom/onesignal/common/consistency/RywData;->getRywToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    check-cast v1, Ljava/lang/Comparable;

    .line 56
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 57
    move-object v4, v3

    check-cast v4, Lcom/onesignal/common/consistency/RywData;

    .line 46
    invoke-virtual {v4}, Lcom/onesignal/common/consistency/RywData;->getRywToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, v2

    :cond_5
    check-cast v4, Ljava/lang/Comparable;

    .line 58
    invoke-interface {v1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_6

    move-object v0, v3

    move-object v1, v4

    .line 62
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 63
    :goto_0
    check-cast v0, Lcom/onesignal/common/consistency/RywData;

    return-object v0
.end method

.method public isMet(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
            "Lcom/onesignal/common/consistency/RywData;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "indexedTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/onesignal/common/consistency/IamFetchReadyCondition;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 25
    :cond_0
    sget-object v1, Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;->USER:Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
