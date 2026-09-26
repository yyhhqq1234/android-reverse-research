.class public abstract Lcom/netease/mpay/server/a/d;
.super Lcom/netease/mpay/server/a/ax;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, p2}, Lcom/netease/mpay/server/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/server/response/m;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "user"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/server/response/m;

    invoke-direct {v4}, Lcom/netease/mpay/server/response/m;-><init>()V

    const-string v0, "client_username"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    const-string v0, "need_mask"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/netease/mpay/server/response/m;->j:Z

    const-string v0, "display_username"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->k:Ljava/lang/String;

    const-string v0, "id"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    const-string v0, "token"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    const-string v0, "login_type"

    invoke-static {v3, v0, v1}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/netease/mpay/server/response/m;->c:I

    const-string v0, "bind_user_id"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    const-string v0, "avatar"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    const-string v0, "realname_status"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/netease/mpay/server/response/m;->g:Z

    const-string v0, "mobile_bind_status"

    invoke-static {v3, v0, v2}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/netease/mpay/server/response/m;->h:I

    const-string v0, "mask_related_mobile"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    const-string v0, "exit_popup_info"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "ad"

    invoke-static {v0, v5}, Lcom/netease/mpay/server/a/d;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {v6}, Lcom/netease/mpay/e/b/i$a;-><init>()V

    const-string v7, "game_url"

    invoke-static {v5, v7}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/netease/mpay/e/b/i$a;->a:Ljava/lang/String;

    const-string v7, "pic_url"

    invoke-static {v5, v7}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/netease/mpay/e/b/i$a;->b:Ljava/lang/String;

    const-string v7, "product"

    invoke-static {v5, v7}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/netease/mpay/e/b/i$a;->c:Ljava/lang/String;

    const-string v7, "expire_time"

    invoke-static {v5, v7}, Lcom/netease/mpay/server/a/d;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iput-wide v7, v6, Lcom/netease/mpay/e/b/i$a;->d:J

    iget-object v5, v4, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "udid"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->p:Ljava/lang/String;

    const-string v0, "need_bind"

    invoke-static {v3, v0}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/netease/mpay/server/response/m;->o:I

    const-string v0, "ext_user_id"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->q:Ljava/lang/String;

    const-string v0, "ext_access_token"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->r:Ljava/lang/String;

    const-string v0, "ext_refresh_token"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->s:Ljava/lang/String;

    const-string v0, "next_refresh"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/netease/mpay/server/response/m;->t:J

    const-string v0, "refresh_info"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "user_id"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/netease/mpay/server/response/m;->l:Ljava/lang/String;

    const-string v2, "token"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->m:Ljava/lang/String;

    :cond_2
    const-string v0, "force_pwd"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    new-instance v0, Lcom/netease/mpay/server/response/ai;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/ai;-><init>()V

    iput-object v0, v4, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    const-string v0, "verify_status"

    invoke-static {p0, v0}, Lcom/netease/mpay/server/a/d;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "need_passwd"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v2, v4, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v3, Lcom/netease/mpay/server/response/ai$a;->a:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_3
    const-string v2, "need_email"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v2, v4, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v3, Lcom/netease/mpay/server/response/ai$a;->b:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_4
    const-string v2, "need_real_name"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v2, v4, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v3, Lcom/netease/mpay/server/response/ai$a;->c:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_5
    const-string v2, "need_sms"

    invoke-static {v0, v2}, Lcom/netease/mpay/server/a/d;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_6

    iget-object v0, v4, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->a(Lcom/netease/mpay/server/response/ai$a;)V

    :cond_6
    return-object v4
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/mpay/server/b$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/netease/mpay/server/b$c;->a:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/mpay/server/b$c;->b:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netease/mpay/server/b$c;->d:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netease/mpay/server/b$c;->e:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netease/mpay/server/b$c;->c:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netease/mpay/server/b;->a([Lcom/netease/mpay/server/b$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "un"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/d;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;
    .locals 1

    invoke-static {p2}, Lcom/netease/mpay/server/a/d;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "opt_fields"

    invoke-static {}, Lcom/netease/mpay/server/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/netease/mpay/server/a/d;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method abstract a(Ljava/util/ArrayList;)V
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    return-object v0
.end method
