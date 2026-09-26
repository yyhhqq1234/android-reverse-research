.class public Lcom/netease/environment/task/ReviewWordsCallable;
.super Ljava/lang/Object;
.source "ReviewWordsCallable.java"

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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/netease/environment/task/ReviewWordsCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/environment/task/ReviewWordsCallable;->TAG:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/netease/environment/task/ReviewWordsCallable;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    .line 33
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
    .line 24
    invoke-virtual {p0}, Lcom/netease/environment/task/ReviewWordsCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 39
    :cond_0
    const/16 v15, 0x64

    const-string v16, "param is null or empty"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 140
    :goto_0
    return-object v15

    .line 47
    :cond_1
    :try_start_0
    const-string v15, "fast"

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getMode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->TAG:Ljava/lang/String;

    const-string v16, "fast mode"

    invoke-static/range {v15 .. v16}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/netease/environment/model/RegexGetter;->getShieldPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v14

    .line 50
    .local v14, "shieldPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 51
    .local v9, "object":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 52
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 53
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/regex/Pattern;

    .line 54
    .local v10, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 55
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 56
    const/16 v15, 0xca

    const-string v16, "shield"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 59
    const/16 v15, 0x64

    const-string v16, "time out"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 63
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "object":Ljava/lang/Object;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/netease/environment/model/RegexGetter;->getInterceptPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 64
    .local v4, "interceptPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 65
    .restart local v9    # "object":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 66
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 67
    .restart local v7    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/regex/Pattern;

    .line 68
    .restart local v10    # "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 69
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 70
    const/16 v15, 0xc9

    const-string v16, "intercept"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 72
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 73
    const/16 v15, 0x64

    const-string v16, "time out"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 77
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "object":Ljava/lang/Object;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    :cond_7
    const/16 v15, 0xc8

    const-string v16, "pass"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto/16 :goto_0

    .line 79
    .end local v4    # "interceptPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    .end local v14    # "shieldPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v15, "fast"

    invoke-static {v1, v15}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->TAG:Ljava/lang/String;

    const-string v16, "exception when run in fast mode"

    invoke-static/range {v15 .. v16}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    throw v1

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->TAG:Ljava/lang/String;

    const-string v16, "normal mode"

    invoke-static/range {v15 .. v16}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/netease/environment/model/RegexGetter;->getRegexObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    .line 110
    .local v11, "regexObject":Lorg/json/JSONObject;
    const-string v15, "shield"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 111
    .local v13, "shieldObject":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 112
    .local v5, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 113
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    .restart local v7    # "key":Ljava/lang/String;
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "regular":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-static {v12, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 116
    .restart local v10    # "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 117
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 118
    const/16 v15, 0xca

    const-string v16, "shield"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 120
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 121
    const/16 v15, 0x64

    const-string v16, "time out"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 125
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    .end local v12    # "regular":Ljava/lang/String;
    :cond_b
    const-string v15, "intercept"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    .local v3, "interceptObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 127
    .local v6, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 128
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 129
    .restart local v7    # "key":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 130
    .restart local v12    # "regular":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-static {v12, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 131
    .restart local v10    # "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/environment/task/ReviewWordsCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 132
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 133
    const/16 v15, 0xc9

    const-string v16, "intercept"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 135
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 136
    const/16 v15, 0x64

    const-string v16, "time out"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 140
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    .end local v12    # "regular":Ljava/lang/String;
    :cond_e
    const/16 v15, 0xc8

    const-string v16, "pass"

    const-string v17, "-1"

    invoke-static/range {v15 .. v17}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0
.end method
