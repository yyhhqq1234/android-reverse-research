.class public Lcom/netease/mpay/e/b/af;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:J

.field public E:J

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:J

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Lcom/netease/mpay/e/b/i;

.field public l:J

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v7, 0x258

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v5, p0, Lcom/netease/mpay/e/b/af;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->c:Ljava/lang/String;

    iput-wide v5, p0, Lcom/netease/mpay/e/b/af;->d:J

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->e:Z

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->f:Z

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->g:Z

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->h:Z

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->j:Z

    new-instance v0, Lcom/netease/mpay/e/b/i;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/i;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->m:Z

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->q:Z

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->l:J

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->u:Z

    iput-boolean v4, p0, Lcom/netease/mpay/e/b/af;->v:Z

    iput-boolean v4, p0, Lcom/netease/mpay/e/b/af;->w:Z

    iput-boolean v4, p0, Lcom/netease/mpay/e/b/af;->x:Z

    iput-boolean v4, p0, Lcom/netease/mpay/e/b/af;->y:Z

    iput v7, p0, Lcom/netease/mpay/e/b/af;->z:I

    iput v7, p0, Lcom/netease/mpay/e/b/af;->A:I

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->B:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/netease/mpay/e/b/af;->C:I

    const-wide/32 v0, 0x2a300

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->D:J

    const-wide/32 v0, 0x127500

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->E:J

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->s:Z

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netease/mpay/e/b/af;->F:Z

    iput-object v3, p0, Lcom/netease/mpay/e/b/af;->G:Ljava/lang/String;

    iput-wide v5, p0, Lcom/netease/mpay/e/b/af;->H:J

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

.method public static a([B)Lcom/netease/mpay/e/b/af;
    .locals 11

    const-wide/16 v5, 0x0

    const/16 v3, 0x258

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/e/a;->a([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-class v4, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lcom/netease/mpay/e/a;->a(Ljava/util/HashMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    new-instance v7, Lcom/netease/mpay/e/b/af;

    invoke-direct {v7}, Lcom/netease/mpay/e/b/af;-><init>()V

    const-string v0, "game_type_label"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->c:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->m:Z

    const-string v0, "support_game_mail"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->f:Z

    const-string v0, "support_deposits"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->g:Z

    const-string v0, "support_avatar"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->s:Z

    const-string v0, "avatar_setting_url"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    const-string v0, "support_qrcode_login"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->h:Z

    const-string v0, "disable_qrcode_login_reason"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    const-string v0, "36"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->j:Z

    const-string v0, "banners"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/e/b/i;->a([B)Lcom/netease/mpay/e/b/i;

    move-result-object v0

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    :cond_0
    const-string v0, "11"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->n:Ljava/lang/String;

    const-string v0, "12"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    const-string v0, "13"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    const-string v0, "game_forum_native_enable"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_6
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->q:Z

    const-string v0, "game_forum_pid"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    const-string v0, "game_mail_fetch_interval"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    :goto_7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/netease/mpay/e/b/af;->l:J

    const-string v0, "deposit_balance"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_8
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->u:Z

    const-string v0, "et"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    :goto_9
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/netease/mpay/e/b/af;->a:J

    const-string v0, "37"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_1
    move v0, v2

    :goto_a
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->v:Z

    const-string v0, "38"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    move v0, v1

    :goto_b
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->w:Z

    const-string v0, "enable_online_report"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_3
    move v0, v1

    :goto_c
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->x:Z

    const-string v0, "enable_role_info_report"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_4
    move v0, v1

    :goto_d
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->y:Z

    const-string v0, "upload_interval"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_14

    move v0, v3

    :goto_e
    iput v0, v7, Lcom/netease/mpay/e/b/af;->z:I

    const-string v0, "upload_online_report_interval"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_15

    :goto_f
    iput v3, v7, Lcom/netease/mpay/e/b/af;->A:I

    const-string v0, "enable_friends"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_10
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->B:Z

    const-string v0, "batch_limit"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    const/16 v0, 0xc8

    :goto_11
    iput v0, v7, Lcom/netease/mpay/e/b/af;->C:I

    const-string v0, "resync_nonsdki_nterval"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    const-wide/32 v3, 0x2a300

    :goto_12
    iput-wide v3, v7, Lcom/netease/mpay/e/b/af;->D:J

    const-string v0, "resync_all_interval"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_19

    const-wide/32 v3, 0x127500

    :goto_13
    iput-wide v3, v7, Lcom/netease/mpay/e/b/af;->E:J

    const-string v0, "39"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    const-string v0, "common_config_version"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1a

    move-wide v3, v5

    :goto_14
    iput-wide v3, v7, Lcom/netease/mpay/e/b/af;->d:J

    const-string v0, "debug_mode"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_15
    iput-boolean v0, v7, Lcom/netease/mpay/e/b/af;->e:Z

    const-string v0, "enable_warning"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_16
    iput-boolean v1, v7, Lcom/netease/mpay/e/b/af;->F:Z

    const-string v0, "warning_text"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/netease/mpay/e/b/af;->G:Ljava/lang/String;

    const-string v0, "device_upload_timestamp"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_5
    iput-wide v5, v7, Lcom/netease/mpay/e/b/af;->H:J

    move-object v0, v7

    :goto_17
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :cond_d
    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_e
    move v0, v2

    goto/16 :goto_8

    :cond_f
    const-string v0, "0"

    goto/16 :goto_9

    :cond_10
    move v0, v1

    goto/16 :goto_a

    :cond_11
    move v0, v2

    goto/16 :goto_b

    :cond_12
    move v0, v2

    goto/16 :goto_c

    :cond_13
    move v0, v2

    goto/16 :goto_d

    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_e

    :cond_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_f

    :cond_16
    move v0, v2

    goto/16 :goto_10

    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_11

    :cond_18
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_12

    :cond_19
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_13

    :cond_1a
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_14

    :cond_1b
    move v0, v2

    goto/16 :goto_15

    :cond_1c
    move v1, v2

    goto/16 :goto_16
.end method


# virtual methods
.method public a(Lcom/netease/mpay/server/response/d;)V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/netease/mpay/server/response/d;->a:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->a:J

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->e:J

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->d:J

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->l:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->f:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->n:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->g:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->q:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->h:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->s:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->j:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/d$a;

    new-instance v2, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {v2}, Lcom/netease/mpay/e/b/i$a;-><init>()V

    iget-object v3, v0, Lcom/netease/mpay/server/response/d$a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/netease/mpay/e/b/i$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/server/response/d$a;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/mpay/e/b/i$a;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/netease/mpay/e/b/af;->a:J

    iput-wide v3, v2, Lcom/netease/mpay/e/b/i$a;->d:J

    iget-object v0, p0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    iget-object v0, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->f:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->m:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->j:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->q:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->m:J

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->l:J

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->o:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->s:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->u:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->u:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->B:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->v:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->C:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->w:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->D:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->x:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->E:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->y:Z

    iget v0, p1, Lcom/netease/mpay/server/response/d;->F:I

    iput v0, p0, Lcom/netease/mpay/e/b/af;->z:I

    iget v0, p1, Lcom/netease/mpay/server/response/d;->G:I

    iput v0, p0, Lcom/netease/mpay/e/b/af;->A:I

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->H:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->B:Z

    iget v0, p1, Lcom/netease/mpay/server/response/d;->I:I

    iput v0, p0, Lcom/netease/mpay/e/b/af;->C:I

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->J:J

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->D:J

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->K:J

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->E:J

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->v:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->e:Z

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->w:Z

    iput-boolean v0, p0, Lcom/netease/mpay/e/b/af;->F:Z

    iget-object v0, p1, Lcom/netease/mpay/server/response/d;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/e/b/af;->G:Ljava/lang/String;

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->L:J

    iput-wide v0, p0, Lcom/netease/mpay/e/b/af;->H:J

    return-void
.end method

.method public a()[B
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "game_type_label"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "support_game_mail"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "support_deposits"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "support_avatar"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->s:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "avatar_setting_url"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "support_qrcode_login"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->h:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "disable_qrcode_login_reason"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "36"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "banners"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b/i;->a()[B

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "0"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->m:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "11"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "12"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "13"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_forum_native_enable"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->q:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_forum_pid"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_mail_fetch_interval"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->l:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deposit_balance"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->u:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    :goto_7
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "et"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "37"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_8
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "38"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->w:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_9
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable_online_report"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->x:Z

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_a
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable_role_info_report"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->y:Z

    if-eqz v0, :cond_b

    const-string v0, "1"

    :goto_b
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "upload_interval"

    iget v2, p0, Lcom/netease/mpay/e/b/af;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "upload_online_report_interval"

    iget v2, p0, Lcom/netease/mpay/e/b/af;->A:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable_friends"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->B:Z

    if-eqz v0, :cond_c

    const-string v0, "1"

    :goto_c
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "batch_limit"

    iget v2, p0, Lcom/netease/mpay/e/b/af;->C:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resync_nonsdki_nterval"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->D:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resync_all_interval"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->E:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "39"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_config_version"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "debug_mode"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->e:Z

    if-eqz v0, :cond_d

    const-string v0, "1"

    :goto_d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable_warning"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/af;->F:Z

    if-eqz v0, :cond_e

    const-string v0, "1"

    :goto_e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "warning_text"

    iget-object v2, p0, Lcom/netease/mpay/e/b/af;->G:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_upload_timestamp"

    iget-wide v2, p0, Lcom/netease/mpay/e/b/af;->H:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/netease/mpay/e/a;->a(Ljava/io/Serializable;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto/16 :goto_0

    :cond_1
    const-string v0, "0"

    goto/16 :goto_1

    :cond_2
    const-string v0, "0"

    goto/16 :goto_2

    :cond_3
    const-string v0, "0"

    goto/16 :goto_3

    :cond_4
    const-string v0, "0"

    goto/16 :goto_4

    :cond_5
    const-string v0, "0"

    goto/16 :goto_5

    :cond_6
    const-string v0, "0"

    goto/16 :goto_6

    :cond_7
    const-string v0, "0"

    goto/16 :goto_7

    :cond_8
    const-string v0, "0"

    goto/16 :goto_8

    :cond_9
    const-string v0, "0"

    goto/16 :goto_9

    :cond_a
    const-string v0, "0"

    goto/16 :goto_a

    :cond_b
    const-string v0, "0"

    goto/16 :goto_b

    :cond_c
    const-string v0, "0"

    goto/16 :goto_c

    :cond_d
    const-string v0, "0"

    goto :goto_d

    :cond_e
    const-string v0, "0"

    goto :goto_e
.end method
