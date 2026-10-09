.class public Lcom/tencent/msdk/api/QQGroupInfoV2;
.super Ljava/lang/Object;
.source "QQGroupInfoV2.java"


# instance fields
.field public guildId:Ljava/lang/String;

.field public guildName:Ljava/lang/String;

.field public qqGroups:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/api/QQGroup;",
            ">;"
        }
    .end annotation
.end field

.field public relation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->qqGroups:Ljava/util/Vector;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->qqGroups:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 22
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .local v2, "jqqGroups":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->qqGroups:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/msdk/api/QQGroup;

    .line 24
    .local v4, "qqGroup":Lcom/tencent/msdk/api/QQGroup;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "group":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "groupId"

    iget-object v7, v4, Lcom/tencent/msdk/api/QQGroup;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v6, "groupName"

    iget-object v7, v4, Lcom/tencent/msdk/api/QQGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "group":Lorg/json/JSONObject;
    .end local v4    # "qqGroup":Lcom/tencent/msdk/api/QQGroup;
    :cond_0
    :try_start_1
    const-string v5, "qqGroups"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .end local v2    # "jqqGroups":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    :try_start_2
    const-string v5, "guildId"

    iget-object v6, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->guildId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v5, "guildName"

    iget-object v6, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->guildName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v5, "relation"

    iget v6, p0, Lcom/tencent/msdk/api/QQGroupInfoV2;->relation:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 35
    .restart local v2    # "jqqGroups":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 36
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jqqGroups":Lorg/json/JSONArray;
    :catch_2
    move-exception v0

    .line 44
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
