.class public final Lcom/netease/mobile/link/s;
.super Lcom/netease/mobile/link/t4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/t4<",
        "Lcom/netease/mobile/link/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/bind_mobile/v3/client/config"

    invoke-direct {p0, v0, v1}, Lcom/netease/mobile/link/t4;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mobile/link/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/netease/mobile/link/t;

    invoke-direct {v0}, Lcom/netease/mobile/link/t;-><init>()V

    const-string v1, "code"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "use_yd_sdk"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/t;->a:I

    const-string v1, "verify_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/t;->b:I

    const-string v1, "role_upgrade"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/netease/mobile/link/t;->c:Z

    const-string v1, "allow_oversea"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/netease/mobile/link/t;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/mobile/link/t;->e:Ljava/util/ArrayList;

    const-string v1, "country_codes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "country_codes_key"

    const-string v3, "country_codes_hash_key"

    if-eqz v1, :cond_3

    const-string v4, "list"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/mobile/link/t;->e:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/netease/mobile/link/t;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    const-string v5, "hash"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    new-instance v1, Lcom/netease/mobile/link/u;

    invoke-direct {v1}, Lcom/netease/mobile/link/u;-><init>()V

    iget-object v5, v0, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v3, v5}, Lcom/netease/mobile/link/o5;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    new-instance v1, Lcom/netease/mobile/link/u;

    invoke-direct {v1}, Lcom/netease/mobile/link/u;-><init>()V

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    .line 5
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/netease/mobile/link/o5;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 6
    :cond_3
    :try_start_0
    new-instance v1, Lcom/netease/mobile/link/u;

    invoke-direct {v1}, Lcom/netease/mobile/link/u;-><init>()V

    .line 7
    invoke-virtual {v1, v3}, Lcom/netease/mobile/link/o5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, v0, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    new-instance v3, Lcom/netease/mobile/link/u;

    invoke-direct {v3}, Lcom/netease/mobile/link/u;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lcom/netease/mobile/link/o5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/netease/mobile/link/t;->e:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/netease/mobile/link/t;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/netease/mobile/link/t;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mobile/link/t;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    :goto_3
    const-string v1, "yd_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/netease/mobile/link/t;->g:Ljava/util/HashMap;

    const-string v1, "china_telecom"

    invoke-virtual {v0, v1, p1}, Lcom/netease/mobile/link/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/mobile/link/t$a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/netease/mobile/link/t;->g:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/netease/mobile/link/t$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "china_mobile"

    invoke-virtual {v0, v1, p1}, Lcom/netease/mobile/link/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/mobile/link/t$a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/netease/mobile/link/t;->g:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/netease/mobile/link/t$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "china_unicom"

    invoke-virtual {v0, v1, p1}, Lcom/netease/mobile/link/t;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/mobile/link/t$a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v1, v0, Lcom/netease/mobile/link/t;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/netease/mobile/link/t$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/t3;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/mobile/link/s;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/s;->c:Ljava/lang/String;

    const-string v3, "country_codes_hash"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
