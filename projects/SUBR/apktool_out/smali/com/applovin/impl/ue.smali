.class public abstract Lcom/applovin/impl/ue;
.super Lcom/applovin/impl/sj;
.source "SourceFile"


# static fields
.field public static final A7:Lcom/applovin/impl/sj;

.field public static final B7:Lcom/applovin/impl/sj;

.field public static final C7:Lcom/applovin/impl/sj;

.field public static final D6:Lcom/applovin/impl/sj;

.field public static final D7:Lcom/applovin/impl/sj;

.field public static final E6:Lcom/applovin/impl/sj;

.field public static final E7:Lcom/applovin/impl/sj;

.field public static final F6:Lcom/applovin/impl/sj;

.field public static final F7:Lcom/applovin/impl/sj;

.field public static final G6:Lcom/applovin/impl/sj;

.field public static final G7:Lcom/applovin/impl/sj;

.field public static final H6:Lcom/applovin/impl/sj;

.field public static final H7:Lcom/applovin/impl/sj;

.field public static final I6:Lcom/applovin/impl/sj;

.field public static final I7:Lcom/applovin/impl/sj;

.field public static final J6:Lcom/applovin/impl/sj;

.field public static final J7:Lcom/applovin/impl/sj;

.field public static final K6:Lcom/applovin/impl/sj;

.field public static final K7:Lcom/applovin/impl/sj;

.field public static final L6:Lcom/applovin/impl/sj;

.field public static final L7:Lcom/applovin/impl/sj;

.field public static final M6:Lcom/applovin/impl/sj;

.field public static final M7:Lcom/applovin/impl/sj;

.field public static final N6:Lcom/applovin/impl/sj;

.field public static final N7:Lcom/applovin/impl/sj;

.field public static final O6:Lcom/applovin/impl/sj;

.field public static final O7:Lcom/applovin/impl/sj;

.field public static final P6:Lcom/applovin/impl/sj;

.field public static final Q6:Lcom/applovin/impl/sj;

.field public static final R6:Lcom/applovin/impl/sj;

.field public static final S6:Lcom/applovin/impl/sj;

.field public static final T6:Lcom/applovin/impl/sj;

.field public static final U6:Lcom/applovin/impl/sj;

.field public static final V6:Lcom/applovin/impl/sj;

.field public static final W6:Lcom/applovin/impl/sj;

.field public static final X6:Lcom/applovin/impl/sj;

.field public static final Y6:Lcom/applovin/impl/sj;

.field public static final Z6:Lcom/applovin/impl/sj;

.field public static final a7:Lcom/applovin/impl/sj;

.field public static final b7:Lcom/applovin/impl/sj;

.field public static final c7:Lcom/applovin/impl/sj;

.field public static final d7:Lcom/applovin/impl/sj;

.field public static final e7:Lcom/applovin/impl/sj;

.field public static final f7:Lcom/applovin/impl/sj;

.field public static final g7:Lcom/applovin/impl/sj;

.field public static final h7:Lcom/applovin/impl/sj;

.field public static final i7:Lcom/applovin/impl/sj;

.field public static final j7:Lcom/applovin/impl/sj;

.field public static final k7:Lcom/applovin/impl/sj;

.field public static final l7:Lcom/applovin/impl/sj;

.field public static final m7:Lcom/applovin/impl/sj;

.field public static final n7:Lcom/applovin/impl/sj;

.field public static final o7:Lcom/applovin/impl/sj;

.field public static final p7:Lcom/applovin/impl/sj;

.field public static final q7:Lcom/applovin/impl/sj;

.field public static final r7:Lcom/applovin/impl/sj;

.field public static final s7:Lcom/applovin/impl/sj;

.field public static final t7:Lcom/applovin/impl/sj;

.field public static final u7:Lcom/applovin/impl/sj;

.field public static final v7:Lcom/applovin/impl/sj;

.field public static final w7:Lcom/applovin/impl/sj;

.field public static final x7:Lcom/applovin/impl/sj;

.field public static final y7:Lcom/applovin/impl/sj;

.field public static final z7:Lcom/applovin/impl/sj;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v0, "afi"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->D6:Lcom/applovin/impl/sj;

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "afi_ms"

    invoke-static {v3, v2}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/ue;->E6:Lcom/applovin/impl/sj;

    const-string v2, "mediation_endpoint"

    const-string v3, "https://ms.applovin.com/"

    .line 12
    invoke-static {v2, v3}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/ue;->F6:Lcom/applovin/impl/sj;

    const-string v2, "mediation_backup_endpoint"

    const-string v3, "https://ms.applvn.com/"

    .line 13
    invoke-static {v2, v3}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/ue;->G6:Lcom/applovin/impl/sj;

    const-wide/16 v2, 0x2

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "fetch_next_ad_retry_delay_ms"

    invoke-static {v3, v2}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/ue;->H6:Lcom/applovin/impl/sj;

    const-wide/16 v2, 0x1e

    .line 23
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "fetch_next_ad_timeout_ms"

    invoke-static {v5, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/ue;->I6:Lcom/applovin/impl/sj;

    const-wide/16 v4, 0x7

    .line 28
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "fetch_mediation_debugger_info_timeout_ms"

    invoke-static {v5, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v4

    sput-object v4, Lcom/applovin/impl/ue;->J6:Lcom/applovin/impl/sj;

    .line 33
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "auto_init_mediation_debugger"

    invoke-static {v5, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->K6:Lcom/applovin/impl/sj;

    const-string v5, "postback_macros"

    const-string v6, "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}"

    .line 41
    invoke-static {v5, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->L6:Lcom/applovin/impl/sj;

    .line 46
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "max_signal_provider_latency_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->M6:Lcom/applovin/impl/sj;

    const-wide/16 v5, 0xa

    .line 51
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "default_adapter_timeout_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->N6:Lcom/applovin/impl/sj;

    .line 56
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "ad_refresh_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->O6:Lcom/applovin/impl/sj;

    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "ad_load_failure_refresh_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->P6:Lcom/applovin/impl/sj;

    const-string v5, "ad_load_failure_refresh_ignore_error_codes"

    const-string v6, "204"

    .line 66
    invoke-static {v5, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->Q6:Lcom/applovin/impl/sj;

    const-wide/16 v5, 0x0

    .line 71
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "refresh_ad_on_app_resume_elapsed_threshold_ms"

    invoke-static {v6, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/ue;->R6:Lcom/applovin/impl/sj;

    const-string v6, "refresh_ad_view_timer_responds_to_background"

    .line 76
    invoke-static {v6, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/ue;->S6:Lcom/applovin/impl/sj;

    const-string v6, "refresh_ad_view_timer_responds_to_store_kit"

    .line 81
    invoke-static {v6, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v6

    sput-object v6, Lcom/applovin/impl/ue;->T6:Lcom/applovin/impl/sj;

    .line 86
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "refresh_ad_view_timer_responds_to_window_visibility_changed"

    invoke-static {v7, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->U6:Lcom/applovin/impl/sj;

    const-string v7, "avrsponse"

    .line 91
    invoke-static {v7, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->V6:Lcom/applovin/impl/sj;

    const-string v7, "allow_pause_auto_refresh_immediately"

    .line 96
    invoke-static {v7, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->W6:Lcom/applovin/impl/sj;

    const-string v7, "ad_view_race_condition_fix_enabled"

    .line 101
    invoke-static {v7, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->X6:Lcom/applovin/impl/sj;

    const-string v7, "fullscreen_display_delay_ms"

    .line 106
    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->Y6:Lcom/applovin/impl/sj;

    const-string v7, "susaode"

    .line 111
    invoke-static {v7, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->Z6:Lcom/applovin/impl/sj;

    const-wide/16 v7, 0x1f4

    .line 119
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "ahdm"

    invoke-static {v8, v7}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->a7:Lcom/applovin/impl/sj;

    const-wide/16 v7, 0xf6

    .line 126
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "ad_view_refresh_precache_request_viewability_undesired_flags"

    .line 127
    invoke-static {v8, v7}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->b7:Lcom/applovin/impl/sj;

    const-string v7, "ad_view_refresh_precache_request_enabled"

    .line 138
    invoke-static {v7, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->c7:Lcom/applovin/impl/sj;

    const-string v7, "famttl_ms"

    .line 143
    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->d7:Lcom/applovin/impl/sj;

    const-wide/16 v7, -0x1

    .line 148
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "signal_expiration_ms"

    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->e7:Lcom/applovin/impl/sj;

    .line 153
    sget-object v7, Lcom/applovin/impl/xj$b;->a:Lcom/applovin/impl/xj$b;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "signal_cache_level"

    invoke-static {v8, v7}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->f7:Lcom/applovin/impl/sj;

    .line 158
    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "ad_expiration_ms"

    invoke-static {v11, v10}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v10

    sput-object v10, Lcom/applovin/impl/ue;->g7:Lcom/applovin/impl/sj;

    .line 163
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "native_ad_expiration_ms"

    invoke-static {v8, v7}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->h7:Lcom/applovin/impl/sj;

    const-string v7, "rena"

    .line 168
    invoke-static {v7, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->i7:Lcom/applovin/impl/sj;

    const-string v7, "fullscreen_ad_displayed_timeout_ms"

    .line 173
    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->j7:Lcom/applovin/impl/sj;

    const-string v7, "freast_ms"

    .line 178
    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v7

    sput-object v7, Lcom/applovin/impl/ue;->k7:Lcom/applovin/impl/sj;

    const-string v7, "ad_hidden_timeout_ms"

    .line 183
    invoke-static {v7, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->l7:Lcom/applovin/impl/sj;

    const-string v5, "schedule_ad_hidden_on_ad_dismiss"

    .line 188
    invoke-static {v5, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->m7:Lcom/applovin/impl/sj;

    const-string v5, "schedule_ad_hidden_on_single_task_app_relaunch"

    .line 193
    invoke-static {v5, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->n7:Lcom/applovin/impl/sj;

    const-wide/16 v7, 0x1

    .line 198
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    invoke-static {v9, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->o7:Lcom/applovin/impl/sj;

    const-string v5, "proe"

    .line 203
    invoke-static {v5, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->p7:Lcom/applovin/impl/sj;

    const/4 v5, 0x2

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "mute_state"

    invoke-static {v9, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->q7:Lcom/applovin/impl/sj;

    const-string v5, "saf"

    .line 213
    invoke-static {v5, v1}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->r7:Lcom/applovin/impl/sj;

    const-string v5, "saui"

    .line 218
    invoke-static {v5, v1}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v5

    sput-object v5, Lcom/applovin/impl/ue;->s7:Lcom/applovin/impl/sj;

    const/4 v5, -0x1

    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "mra"

    invoke-static {v9, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->t7:Lcom/applovin/impl/sj;

    const-string v9, "mra_af"

    const-string v10, "INTER,REWARDED,REWARDED_INTER,BANNER,LEADER,MREC"

    .line 228
    invoke-static {v9, v10}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->u7:Lcom/applovin/impl/sj;

    const-string v9, "svadfr"

    .line 233
    invoke-static {v9, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->v7:Lcom/applovin/impl/sj;

    const-string v9, "fadiafase"

    .line 238
    invoke-static {v9, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->w7:Lcom/applovin/impl/sj;

    const-string v9, "fadwvcv"

    .line 243
    invoke-static {v9, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->x7:Lcom/applovin/impl/sj;

    const-string v9, "bfarud"

    .line 248
    invoke-static {v9, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->y7:Lcom/applovin/impl/sj;

    const-string v10, "com.textmeinc.textme"

    const-string v11, "com.textmeinc.freetone"

    const-string v12, "com.textmeinc.textme3"

    const-string v13, "com.jaumo"

    const-string v14, "com.jaumo.casual"

    const-string v15, "com.pinkapp"

    const-string v16, "com.jaumo.mature"

    const-string v17, "com.jaumo.prime"

    const-string v18, "com.jaumo.gay"

    const-string v19, "com.jaumo.lesbian"

    .line 255
    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    move-result-object v9

    .line 256
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/applovin/impl/yp;->b(Ljava/util/List;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "inacc"

    .line 257
    invoke-static {v10, v9}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v9

    sput-object v9, Lcom/applovin/impl/ue;->z7:Lcom/applovin/impl/sj;

    const-string v9, "pbataipaf"

    .line 268
    invoke-static {v9, v1}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/ue;->A7:Lcom/applovin/impl/sj;

    .line 273
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "bwt_ms"

    invoke-static {v9, v1}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/ue;->B7:Lcom/applovin/impl/sj;

    .line 278
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "twt_ms"

    invoke-static {v1, v0}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->C7:Lcom/applovin/impl/sj;

    .line 283
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "adiets_sec"

    invoke-static {v1, v0}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->D7:Lcom/applovin/impl/sj;

    const-string v0, "faomq"

    .line 288
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->E7:Lcom/applovin/impl/sj;

    const-string v0, "siflcfbt"

    .line 293
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->F7:Lcom/applovin/impl/sj;

    const-string v0, "rahcnct_sec"

    .line 298
    invoke-static {v0, v5}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->G7:Lcom/applovin/impl/sj;

    const-string v0, "uabta"

    .line 303
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->H7:Lcom/applovin/impl/sj;

    const-string v0, "use_initialization_spec_during_init"

    .line 308
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->I7:Lcom/applovin/impl/sj;

    const-string v0, "use_promises_during_init"

    .line 313
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->J7:Lcom/applovin/impl/sj;

    const-string v0, "report_cimp_after_ierr"

    .line 318
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->K7:Lcom/applovin/impl/sj;

    const-string v0, "fail_collection_for_empty_signal"

    .line 323
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->L7:Lcom/applovin/impl/sj;

    const-string v0, "sdaomq"

    .line 328
    invoke-static {v0, v6}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->M7:Lcom/applovin/impl/sj;

    const-string v0, "fetch_mediated_ad_gzip"

    .line 333
    invoke-static {v0, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->N7:Lcom/applovin/impl/sj;

    const-string v0, "max_postback_gzip"

    .line 334
    invoke-static {v0, v4}, Lcom/applovin/impl/sj;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sj;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/ue;->O7:Lcom/applovin/impl/sj;

    return-void
.end method
