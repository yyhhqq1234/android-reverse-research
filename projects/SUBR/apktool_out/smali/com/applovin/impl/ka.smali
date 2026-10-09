.class public Lcom/applovin/impl/ka;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/ka$b;
    }
.end annotation


# static fields
.field public static final A:Lcom/applovin/impl/ka;

.field public static final B:Lcom/applovin/impl/ka;

.field public static final C:Lcom/applovin/impl/ka;

.field public static final D:Lcom/applovin/impl/ka;

.field public static final E:Lcom/applovin/impl/ka;

.field public static final F:Lcom/applovin/impl/ka;

.field public static final G:Lcom/applovin/impl/ka;

.field public static final H:Lcom/applovin/impl/ka;

.field public static final I:Lcom/applovin/impl/ka;

.field public static final J:Lcom/applovin/impl/ka;

.field public static final K:Lcom/applovin/impl/ka;

.field public static final L:Lcom/applovin/impl/ka;

.field public static final M:Lcom/applovin/impl/ka;

.field public static final N:Lcom/applovin/impl/ka;

.field public static final O:Lcom/applovin/impl/ka;

.field public static final P:Lcom/applovin/impl/ka;

.field public static final Q:Lcom/applovin/impl/ka;

.field public static final R:Lcom/applovin/impl/ka;

.field public static final S:Lcom/applovin/impl/ka;

.field public static final T:Lcom/applovin/impl/ka;

.field public static final U:Lcom/applovin/impl/ka;

.field public static final V:Lcom/applovin/impl/ka;

.field public static final W:Lcom/applovin/impl/ka;

.field public static final X:Lcom/applovin/impl/ka;

.field public static final Y:Lcom/applovin/impl/ka;

.field public static final Z:Lcom/applovin/impl/ka;

.field public static final a0:Lcom/applovin/impl/ka;

.field public static final b0:Lcom/applovin/impl/ka;

.field private static c:Lorg/json/JSONObject;

.field public static final c0:Lcom/applovin/impl/ka;

.field public static final d:Lcom/applovin/impl/ka;

.field public static final d0:Lcom/applovin/impl/ka;

.field public static final e:Lcom/applovin/impl/ka;

.field public static final f:Lcom/applovin/impl/ka;

.field public static final g:Lcom/applovin/impl/ka;

.field public static final h:Lcom/applovin/impl/ka;

.field public static final i:Lcom/applovin/impl/ka;

.field public static final j:Lcom/applovin/impl/ka;

.field public static final k:Lcom/applovin/impl/ka;

.field public static final l:Lcom/applovin/impl/ka;

.field public static final m:Lcom/applovin/impl/ka;

.field public static final n:Lcom/applovin/impl/ka;

.field public static final o:Lcom/applovin/impl/ka;

.field public static final p:Lcom/applovin/impl/ka;

.field public static final q:Lcom/applovin/impl/ka;

.field public static final r:Lcom/applovin/impl/ka;

.field public static final s:Lcom/applovin/impl/ka;

.field public static final t:Lcom/applovin/impl/ka;

.field public static final u:Lcom/applovin/impl/ka;

.field public static final v:Lcom/applovin/impl/ka;

.field public static final w:Lcom/applovin/impl/ka;

.field public static final x:Lcom/applovin/impl/ka;

.field public static final y:Lcom/applovin/impl/ka;

.field public static final z:Lcom/applovin/impl/ka;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/ka$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/applovin/impl/ka;

    sget-object v1, Lcom/applovin/impl/ka$b;->b:Lcom/applovin/impl/ka$b;

    const-string v2, "generic"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->d:Lcom/applovin/impl/ka;

    .line 6
    new-instance v0, Lcom/applovin/impl/ka;

    sget-object v2, Lcom/applovin/impl/ka$b;->c:Lcom/applovin/impl/ka$b;

    const-string v3, "sdk_init"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->e:Lcom/applovin/impl/ka;

    .line 11
    new-instance v0, Lcom/applovin/impl/ka;

    sget-object v2, Lcom/applovin/impl/ka$b;->a:Lcom/applovin/impl/ka$b;

    const-string v3, "ad_requested"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->f:Lcom/applovin/impl/ka;

    .line 12
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_request_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->g:Lcom/applovin/impl/ka;

    .line 13
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_request_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->h:Lcom/applovin/impl/ka;

    .line 14
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_load_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->i:Lcom/applovin/impl/ka;

    .line 15
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_load_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->j:Lcom/applovin/impl/ka;

    .line 16
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_displayed"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->k:Lcom/applovin/impl/ka;

    .line 17
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_hidden"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->l:Lcom/applovin/impl/ka;

    .line 22
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "resource_load_started"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->m:Lcom/applovin/impl/ka;

    .line 23
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "resource_load_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->n:Lcom/applovin/impl/ka;

    .line 24
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "resource_load_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->o:Lcom/applovin/impl/ka;

    .line 29
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_persist_request"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->p:Lcom/applovin/impl/ka;

    .line 30
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_persist_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->q:Lcom/applovin/impl/ka;

    .line 31
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "ad_persist_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->r:Lcom/applovin/impl/ka;

    .line 33
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "persisted_ad_requested"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->s:Lcom/applovin/impl/ka;

    .line 34
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "persisted_ad_load_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->t:Lcom/applovin/impl/ka;

    .line 35
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "persisted_ad_load_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->u:Lcom/applovin/impl/ka;

    .line 36
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "persisted_ad_expired"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->v:Lcom/applovin/impl/ka;

    .line 41
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "adapter_init_started"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->w:Lcom/applovin/impl/ka;

    .line 42
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "adapter_init_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->x:Lcom/applovin/impl/ka;

    .line 43
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "adapter_init_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->y:Lcom/applovin/impl/ka;

    .line 44
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "signal_collection_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->z:Lcom/applovin/impl/ka;

    .line 45
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "signal_collection_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->A:Lcom/applovin/impl/ka;

    .line 46
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_requested"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->B:Lcom/applovin/impl/ka;

    .line 47
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_request_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->C:Lcom/applovin/impl/ka;

    .line 48
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_request_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->D:Lcom/applovin/impl/ka;

    .line 49
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_load_started"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->E:Lcom/applovin/impl/ka;

    .line 50
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_load_success"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->F:Lcom/applovin/impl/ka;

    .line 51
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_load_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->G:Lcom/applovin/impl/ka;

    .line 52
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "waterfall_processing_complete"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->H:Lcom/applovin/impl/ka;

    .line 53
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_displayed"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->I:Lcom/applovin/impl/ka;

    .line 54
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_display_failure"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->J:Lcom/applovin/impl/ka;

    .line 55
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_hidden"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->K:Lcom/applovin/impl/ka;

    .line 56
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v3, "mediated_ad_hidden_callback_not_called"

    invoke-direct {v0, v3, v2}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->L:Lcom/applovin/impl/ka;

    .line 61
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "anr"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->M:Lcom/applovin/impl/ka;

    .line 62
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "app_killed_during_ad"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->N:Lcom/applovin/impl/ka;

    .line 63
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "auto_redirect"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->O:Lcom/applovin/impl/ka;

    .line 64
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "black_view"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->P:Lcom/applovin/impl/ka;

    .line 65
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "cache_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->Q:Lcom/applovin/impl/ka;

    .line 66
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "caught_exception"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->R:Lcom/applovin/impl/ka;

    .line 67
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "consent_flow_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->S:Lcom/applovin/impl/ka;

    .line 68
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "crash"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->T:Lcom/applovin/impl/ka;

    .line 69
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "file_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->U:Lcom/applovin/impl/ka;

    .line 70
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "integration_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->V:Lcom/applovin/impl/ka;

    .line 71
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "media_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->W:Lcom/applovin/impl/ka;

    .line 72
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "native_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->X:Lcom/applovin/impl/ka;

    .line 73
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "network_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->Y:Lcom/applovin/impl/ka;

    .line 74
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "task_exception"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->Z:Lcom/applovin/impl/ka;

    .line 75
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "task_latency_alert"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->a0:Lcom/applovin/impl/ka;

    .line 76
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "template_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->b0:Lcom/applovin/impl/ka;

    .line 77
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "unexpected_state"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->c0:Lcom/applovin/impl/ka;

    .line 78
    new-instance v0, Lcom/applovin/impl/ka;

    const-string v2, "web_view_error"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/ka;-><init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V

    sput-object v0, Lcom/applovin/impl/ka;->d0:Lcom/applovin/impl/ka;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/impl/ka$b;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/ka;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/ka;->b:Lcom/applovin/impl/ka$b;

    return-void
.end method

.method private a(Lcom/applovin/impl/ka$b;Lcom/applovin/impl/sdk/j;)D
    .locals 1

    .line 68
    sget-object v0, Lcom/applovin/impl/ka$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    .line 75
    :cond_0
    sget-object p1, Lcom/applovin/impl/sj;->I:Lcom/applovin/impl/sj;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    float-to-double p1, p1

    return-wide p1

    .line 76
    :cond_1
    sget-object p1, Lcom/applovin/impl/sj;->H:Lcom/applovin/impl/sj;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    .line 77
    :cond_2
    sget-object p1, Lcom/applovin/impl/sj;->G:Lcom/applovin/impl/sj;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)D
    .locals 1

    .line 60
    sget-object v0, Lcom/applovin/impl/ka;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/applovin/impl/sj;->F:Lcom/applovin/impl/sj;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 63
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->deserialize(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    sput-object p2, Lcom/applovin/impl/ka;->c:Lorg/json/JSONObject;

    .line 66
    :cond_0
    sget-object p2, Lcom/applovin/impl/ka;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide p1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/j;)D
    .locals 5

    .line 48
    invoke-static {}, Lcom/applovin/impl/sdk/j;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/yp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    return-wide v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/ka;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/ka;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    return-wide v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/ka;->b:Lcom/applovin/impl/ka$b;

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/ka;->a(Lcom/applovin/impl/ka$b;Lcom/applovin/impl/sdk/j;)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    return-wide v0

    .line 59
    :cond_2
    sget-object v0, Lcom/applovin/impl/sj;->J:Lcom/applovin/impl/sj;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public a()Lcom/applovin/impl/ka$b;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/ka;->b:Lcom/applovin/impl/ka$b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/ka;->a:Ljava/lang/String;

    return-object v0
.end method
