.class public Lcom/netease/environment/task/ReviewNicknameCallable;
.super Ljava/lang/Object;
.source "ReviewNicknameCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/netease/environment/task/ReviewNicknameCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/netease/environment/task/ReviewNicknameCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 40
    :cond_0
    const/16 v12, 0x64

    const-string v13, "param is null or empty"

    const-string v14, "-1"

    invoke-static {v12, v13, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 111
    :goto_0
    return-object v12

    .line 48
    :cond_1
    :try_start_0
    const-string v12, "fast"

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getMode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 49
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    const-string v13, "fast mode"

    invoke-static {v12, v13}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/netease/environment/model/RegexGetter;->getNicknamePatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    .line 51
    .local v7, "nicknamePatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 52
    .local v8, "object":Ljava/lang/Object;
    move-object v0, v8

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 53
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/regex/Pattern;

    .line 55
    .local v9, "pattern":Ljava/util/regex/Pattern;
    iget-object v13, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 56
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 57
    const/16 v12, 0xca

    const-string v13, "shield"

    invoke-static {v12, v13, v4}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 60
    const/16 v12, 0x64

    const-string v13, "time out"

    const-string v14, "-1"

    invoke-static {v12, v13, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 63
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "object":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/util/regex/Pattern;
    :cond_4
    const/16 v12, 0xc8

    const-string v13, "pass"

    const-string v14, "-1"

    invoke-static {v12, v13, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .line 65
    .end local v7    # "nicknamePatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "fast"

    invoke-static {v1, v12}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 67
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    const-string v13, "exception when run in fast mode"

    invoke-static {v12, v13}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    throw v1

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    const-string v13, "normal mode"

    invoke-static {v12, v13}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v10

    .line 95
    .local v10, "regexObject":Lorg/json/JSONObject;
    const-string v12, "nickname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 96
    .local v6, "nicknameObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 97
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "regular":Ljava/lang/String;
    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 102
    .restart local v9    # "pattern":Ljava/util/regex/Pattern;
    iget-object v12, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 103
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 104
    const/16 v12, 0xca

    const-string v13, "shield"

    invoke-static {v12, v13, v4}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 106
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 107
    const/16 v12, 0x64

    const-string v13, "time out"

    const-string v14, "-1"

    invoke-static {v12, v13, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 111
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "pattern":Ljava/util/regex/Pattern;
    .end local v11    # "regular":Ljava/lang/String;
    :cond_8
    const/16 v12, 0xc8

    const-string v13, "pass"

    const-string v14, "-1"

    invoke-static {v12, v13, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method
