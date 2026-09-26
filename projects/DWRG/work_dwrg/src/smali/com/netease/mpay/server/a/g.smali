.class public Lcom/netease/mpay/server/a/g;
.super Lcom/netease/mpay/server/a/ax;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/games/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/server/a/ax;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/server/a/g;->a:Ljava/lang/String;

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


# virtual methods
.method protected a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/d;
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/netease/mpay/server/response/d;

    invoke-direct {v3}, Lcom/netease/mpay/server/response/d;-><init>()V

    const-string v0, "game"

    invoke-static {p2, v0}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "config"

    invoke-static {v0, v4}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, "expire_time"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/g;->i(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/netease/mpay/server/response/d;->a:J

    const-string v0, "server_domain"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/mpay/server/response/d;->b:Ljava/lang/String;

    const-string v0, "game_alias"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/g;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/mpay/server/response/d;->c:Ljava/lang/String;

    const-string v0, "common_config_version"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/g;->i(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/netease/mpay/server/response/d;->e:J

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v5, "app_mode"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/netease/mpay/server/response/d;->v:Z

    const-string v0, "game_category_name"

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->D:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/mpay/server/response/d;->d:Ljava/lang/String;

    const-string v0, "cv_info"

    invoke-static {v4, v0}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "updates"

    invoke-static {v4, v5}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "modules"

    invoke-static {v4, v6}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "payments"

    invoke-static {v4, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "forum"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/netease/mpay/server/response/d;->f:Z

    const-string v8, "reason"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/netease/mpay/server/response/d;->g:Ljava/lang/String;

    const-string v8, "title"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/netease/mpay/server/response/d;->i:Ljava/lang/String;

    const-string v8, "url"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/netease/mpay/server/response/d;->h:Ljava/lang/String;

    const-string v8, "native_enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/netease/mpay/server/response/d;->j:Z

    const-string v8, "pid"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/netease/mpay/server/response/d;->k:Ljava/lang/String;

    const-string v7, "mail"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/netease/mpay/server/response/d;->l:Z

    const-string v8, "expire_time"

    const-wide/16 v9, -0x1

    invoke-static {v7, v8, v9, v10}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/netease/mpay/server/response/d;->m:J

    const-string v7, "deposit"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/netease/mpay/server/response/d;->n:Z

    const-string v7, "nickname_and_avatar"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/netease/mpay/server/response/d;->o:Z

    const-string v8, "setting_url"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/netease/mpay/server/response/d;->p:Ljava/lang/String;

    const-string v7, "exit.popup"

    invoke-static {v6, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "enabled"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v3, Lcom/netease/mpay/server/response/d;->s:Z

    const-string v8, "banners"

    invoke-static {v7, v8}, Lcom/netease/mpay/server/a/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, Lcom/netease/mpay/server/response/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_1
    if-ge v2, v8, :cond_1

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/netease/mpay/server/response/d$a;

    invoke-direct {v10}, Lcom/netease/mpay/server/response/d$a;-><init>()V

    const-string v11, "game_url"

    invoke-static {v9, v11}, Lcom/netease/mpay/server/a/g;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/netease/mpay/server/response/d$a;->a:Ljava/lang/String;

    const-string v11, "pic_url"

    invoke-static {v9, v11}, Lcom/netease/mpay/server/a/g;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/netease/mpay/server/response/d$a;->b:Ljava/lang/String;

    iget-object v9, v3, Lcom/netease/mpay/server/response/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    const-string v2, "login.qrcode"

    invoke-static {v6, v2}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "enabled"

    invoke-static {v2, v7}, Lcom/netease/mpay/server/a/g;->k(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/netease/mpay/server/response/d;->q:Z

    const-string v7, "reason"

    invoke-static {v2, v7}, Lcom/netease/mpay/server/a/g;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/netease/mpay/server/response/d;->r:Ljava/lang/String;

    const-string v2, "stats"

    invoke-static {v6, v2}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "enabled"

    invoke-static {v2, v7}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v3, Lcom/netease/mpay/server/response/d;->B:Z

    const-string v7, "wifi_only"

    invoke-static {v2, v7, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v3, Lcom/netease/mpay/server/response/d;->C:Z

    const-string v7, "online_report"

    invoke-static {v2, v7, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v3, Lcom/netease/mpay/server/response/d;->D:Z

    const-string v7, "role_info_report"

    invoke-static {v2, v7, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v3, Lcom/netease/mpay/server/response/d;->E:Z

    const-string v1, "upload_interval"

    invoke-static {v2, v1}, Lcom/netease/mpay/server/a/g;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/netease/mpay/server/response/d;->F:I

    const-string v1, "online_report_upload_interval"

    const/16 v7, 0x258

    invoke-static {v2, v1, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/netease/mpay/server/response/d;->G:I

    const-string v1, "friends"

    invoke-static {v6, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enabled"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/netease/mpay/server/response/d;->H:Z

    const-string v2, "batch_limit"

    const/16 v7, 0xc8

    invoke-static {v1, v2, v7}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/netease/mpay/server/response/d;->I:I

    const-string v2, "resync_nonsdk_interval"

    const-wide/32 v7, 0x2a300

    invoke-static {v1, v2, v7, v8}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/netease/mpay/server/response/d;->J:J

    const-string v2, "resync_all_interval"

    const-wide/32 v7, 0x127500

    invoke-static {v1, v2, v7, v8}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/netease/mpay/server/response/d;->K:J

    const-string v1, "device"

    invoke-static {v6, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "force_upload_timestamp"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/g;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/netease/mpay/server/response/d;->L:J

    const-string v1, "mobilecard"

    invoke-static {v4, v1}, Lcom/netease/mpay/server/a/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deposit_balance"

    invoke-static {v1, v2}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/netease/mpay/server/response/d;->u:Z

    const-string v1, "verify_status"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/netease/mpay/server/response/d;->w:Z

    const-string v1, "warning_text"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/g;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/mpay/server/response/d;->x:Ljava/lang/String;

    const-string v0, "user_center"

    invoke-static {v5, v0}, Lcom/netease/mpay/server/a/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/g;->l(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/netease/mpay/server/response/d;->y:Z

    const-string v1, "version"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/g;->j(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/netease/mpay/server/response/d;->z:J

    const-string v1, "expire_time"

    invoke-static {v0, v1}, Lcom/netease/mpay/server/a/g;->h(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/netease/mpay/server/response/d;->A:I

    :cond_2
    return-object v3
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_udid"

    invoke-static {p1}, Lcom/netease/mpay/widget/az;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/server/a/g;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/g;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected synthetic b(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/a/g;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/server/response/d;

    move-result-object v0

    return-object v0
.end method
