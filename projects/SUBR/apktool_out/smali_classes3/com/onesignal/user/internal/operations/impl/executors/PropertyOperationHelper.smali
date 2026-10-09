.class public final Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;
.super Ljava/lang/Object;
.source "PropertyOperationHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;",
        "",
        "()V",
        "createPropertiesFromOperation",
        "Lcom/onesignal/user/internal/backend/PropertiesObject;",
        "operation",
        "Lcom/onesignal/user/internal/operations/DeleteTagOperation;",
        "propertiesObject",
        "Lcom/onesignal/user/internal/operations/SetPropertyOperation;",
        "Lcom/onesignal/user/internal/operations/SetTagOperation;",
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
.field public static final INSTANCE:Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;-><init>()V

    sput-object v0, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->INSTANCE:Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/DeleteTagOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;
    .locals 9

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertiesObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    :cond_1
    move-object v3, v0

    .line 38
    invoke-virtual {p1}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance p1, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 41
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    .line 45
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v8

    move-object v2, p1

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object p1
.end method

.method public final createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/SetPropertyOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;
    .locals 19

    const-string v0, "operation"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertiesObject"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getProperty()Ljava/lang/String;

    move-result-object v0

    const-string v3, "language"

    .line 54
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 55
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v7, v4

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v10

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v11

    move-object v5, v0

    .line 55
    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "timezone"

    .line 63
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v8, v4

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v10

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v11

    move-object v5, v0

    .line 64
    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "country"

    .line 72
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v9, v4

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v10

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v11

    move-object v5, v0

    .line 73
    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "locationLatitude"

    .line 81
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_6
    move-object v10, v4

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v11

    move-object v5, v0

    .line 82
    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    :cond_7
    const-string v3, "locationLongitude"

    .line 90
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v6

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v10

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_8
    move-object v11, v4

    move-object v5, v0

    .line 91
    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    .line 104
    :cond_9
    new-instance v0, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v13

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v15

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v16

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v17

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v18

    move-object v12, v0

    .line 104
    invoke-direct/range {v12 .. v18}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    :goto_0
    return-object v0
.end method

.method public final createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/SetTagOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;
    .locals 8

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertiesObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    :cond_1
    move-object v2, v0

    .line 19
    invoke-virtual {p1}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Lcom/onesignal/user/internal/backend/PropertiesObject;

    .line 22
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getTimezoneId()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    .line 26
    invoke-virtual {p2}, Lcom/onesignal/user/internal/backend/PropertiesObject;->getLongitude()Ljava/lang/Double;

    move-result-object v7

    move-object v1, p1

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object p1
.end method
