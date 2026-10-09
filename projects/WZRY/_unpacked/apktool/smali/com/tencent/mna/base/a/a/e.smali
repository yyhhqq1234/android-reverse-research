.class public Lcom/tencent/mna/base/a/a/e;
.super Ljava/lang/Object;
.source "RulesConfig.java"


# instance fields
.field public a:[Lcom/tencent/mna/b/d/g;

.field public b:[Lcom/tencent/mna/b/d/g;

.field public c:[Lcom/tencent/mna/b/d/g;

.field public d:[Lcom/tencent/mna/b/d/g;

.field public e:[Lcom/tencent/mna/b/d/g;

.field public f:[Lcom/tencent/mna/b/d/g;

.field public g:[Lcom/tencent/mna/b/d/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->a:[Lcom/tencent/mna/b/d/g;

    .line 13
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->b:[Lcom/tencent/mna/b/d/g;

    .line 14
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->c:[Lcom/tencent/mna/b/d/g;

    .line 15
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->d:[Lcom/tencent/mna/b/d/g;

    .line 16
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->e:[Lcom/tencent/mna/b/d/g;

    .line 17
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->f:[Lcom/tencent/mna/b/d/g;

    .line 18
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    iput-object v0, p0, Lcom/tencent/mna/base/a/a/e;->g:[Lcom/tencent/mna/b/d/g;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/tencent/mna/base/a/a/e;
    .locals 9

    .prologue
    .line 22
    new-instance v0, Lcom/tencent/mna/base/a/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/base/a/a/e;-><init>()V

    .line 24
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    .line 25
    const-string v8, "router"

    invoke-virtual {p0, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v8, "export"

    invoke-virtual {p0, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string/jumbo v8, "terminal"

    invoke-virtual {p0, v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v8, "signal"

    invoke-virtual {p0, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    const-string v8, "direct"

    invoke-virtual {p0, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    const-string v8, "network"

    invoke-virtual {p0, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    const-string v8, "queryRule"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-static {v1}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->a:[Lcom/tencent/mna/b/d/g;

    .line 34
    invoke-static {v2}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->b:[Lcom/tencent/mna/b/d/g;

    .line 35
    invoke-static {v3}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->c:[Lcom/tencent/mna/b/d/g;

    .line 36
    invoke-static {v4}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->d:[Lcom/tencent/mna/b/d/g;

    .line 37
    invoke-static {v5}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->e:[Lcom/tencent/mna/b/d/g;

    .line 38
    invoke-static {v6}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->f:[Lcom/tencent/mna/b/d/g;

    .line 39
    invoke-static {v7}, Lcom/tencent/mna/base/a/a/e;->a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/base/a/a/e;->g:[Lcom/tencent/mna/b/d/g;

    .line 41
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[Lcom/tencent/mna/b/d/g;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseRules("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 46
    new-array v0, v1, [Lcom/tencent/mna/b/d/g;

    .line 48
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    new-array v0, v2, [Lcom/tencent/mna/b/d/g;

    move v2, v1

    .line 50
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 52
    add-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseRules("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") rule error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/tencent/mna/b/d/g;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :cond_0
    :goto_1
    return-object v0

    .line 57
    :cond_1
    :try_start_1
    new-instance v1, Lcom/tencent/mna/b/d/g;

    invoke-direct {v1}, Lcom/tencent/mna/b/d/g;-><init>()V

    aput-object v1, v0, v2

    .line 58
    aget-object v1, v0, v2

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lcom/tencent/mna/b/d/g;->a:I

    .line 59
    add-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 60
    aget-object v4, v0, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    .line 61
    aget-object v4, v0, v2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    .line 62
    aget-object v4, v0, v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v4, Lcom/tencent/mna/b/d/g;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseRules("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 67
    :catch_1
    move-exception v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRules("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
