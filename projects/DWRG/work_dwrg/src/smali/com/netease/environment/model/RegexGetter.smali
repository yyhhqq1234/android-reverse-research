.class public Lcom/netease/environment/model/RegexGetter;
.super Ljava/lang/Object;
.source "RegexGetter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInterceptPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sNicknamePatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sShieldPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/netease/environment/model/RegexGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterceptPatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v1, "get intercept pattern list from memory"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "intercept"

    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNicknamePatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v1, "get nickname pattern list from memory"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nickname"

    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    .local v0, "regexObject":Lorg/json/JSONObject;
    invoke-static {v0, p1}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "regexObject"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v5, "patternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, "nicknameObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "regular":Ljava/lang/String;
    const/4 v4, 0x0

    .line 74
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v7, 0x2

    :try_start_0
    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 79
    :goto_1
    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "regex compile error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v7, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to compile pattern of : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "regular":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pattern list from file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v5
.end method

.method public static getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Lcom/netease/environment/utils/FileUtils;->getRegexFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/environment/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getRC4Key()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/RC4Utils;->decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 137
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 138
    sget-object v5, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v6, "use default regex data"

    invoke-static {v5, v6}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/netease/environment/model/DefaultRegex;

    invoke-direct {v0}, Lcom/netease/environment/model/DefaultRegex;-><init>()V

    .line 140
    .local v0, "defaultRegex":Lcom/netease/environment/model/DefaultRegex;
    invoke-virtual {v0}, Lcom/netease/environment/model/DefaultRegex;->getRegexObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    .end local v0    # "defaultRegex":Lcom/netease/environment/model/DefaultRegex;
    :cond_0
    const-string v5, "regex"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    return-object v5

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShieldPatternMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v1, "get shield pattern list from memory"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shield"

    invoke-static {p0, v0}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static setPatternMap(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    :try_start_0
    sget-object v2, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v3, "set pattern list with file"

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    .local v1, "regexObject":Lorg/json/JSONObject;
    const-string v2, "nickname"

    invoke-static {v1, v2}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    .line 103
    const-string v2, "shield"

    invoke-static {v1, v2}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    .line 104
    const-string v2, "intercept"

    invoke-static {v1, v2}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "regexObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to save pattern list on memory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPatternMap(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "regexObject"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    const-string v2, "set pattern list with json object"

    invoke-static {v1, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "nickname"

    invoke-static {p0, v1}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/netease/environment/model/RegexGetter;->sNicknamePatternMap:Ljava/util/Map;

    .line 91
    const-string v1, "shield"

    invoke-static {p0, v1}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/netease/environment/model/RegexGetter;->sShieldPatternMap:Ljava/util/Map;

    .line 92
    const-string v1, "intercept"

    invoke-static {p0, v1}, Lcom/netease/environment/model/RegexGetter;->getPatternMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/netease/environment/model/RegexGetter;->sInterceptPatternMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/environment/model/RegexGetter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to save pattern list on memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
