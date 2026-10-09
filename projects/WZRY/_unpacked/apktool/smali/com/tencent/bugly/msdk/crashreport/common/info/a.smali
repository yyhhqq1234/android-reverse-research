.class public final Lcom/tencent/bugly/msdk/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;


# instance fields
.field public A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Z

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/tencent/bugly/msdk/crashreport/a;

.field public E:Landroid/content/SharedPreferences;

.field private final F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:J

.field private Q:J

.field private R:J

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/Boolean;

.field private Z:Ljava/lang/String;

.field public final a:J

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private af:I

.field private ag:I

.field private ah:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Z

.field private al:Ljava/lang/Boolean;

.field private am:Ljava/lang/Boolean;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private final as:Ljava/lang/Object;

.field private final at:Ljava/lang/Object;

.field private final au:Ljava/lang/Object;

.field private final av:Ljava/lang/Object;

.field private final aw:Ljava/lang/Object;

.field private final ax:Ljava/lang/Object;

.field private final ay:Ljava/lang/Object;

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->e:Z

    .line 39
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->J:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->K:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->O:Ljava/lang/String;

    .line 58
    iput-wide v6, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->P:J

    .line 59
    iput-wide v6, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Q:J

    .line 60
    iput-wide v6, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->R:J

    .line 61
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->S:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->U:Ljava/util/Map;

    .line 64
    iput-boolean v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->V:Z

    .line 65
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->W:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->l:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    .line 71
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Z:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ac:Ljava/util/Map;

    .line 77
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ad:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->o:Ljava/util/List;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->af:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ag:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ai:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aj:Ljava/util/Map;

    .line 89
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 90
    iput-wide v4, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->q:J

    .line 91
    iput-wide v4, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->r:J

    .line 92
    iput-wide v4, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->s:J

    .line 93
    iput-wide v4, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->t:J

    .line 95
    iput-boolean v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->u:Z

    .line 96
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->v:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->w:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x:Ljava/lang/String;

    .line 100
    iput-boolean v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->y:Z

    .line 101
    iput-boolean v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->z:Z

    .line 103
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->al:Ljava/lang/Boolean;

    .line 104
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->A:Ljava/util/HashMap;

    .line 108
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->an:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ar:Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->B:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->C:Ljava/util/List;

    .line 121
    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->D:Lcom/tencent/bugly/msdk/crashreport/a;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->as:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->at:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->av:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aw:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ax:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ay:Ljava/lang/Object;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->a:J

    .line 137
    invoke-static {p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    .line 138
    iput-byte v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b:B

    .line 139
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->v:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->f:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->g:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->k:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->o:Ljava/util/List;

    const-string v0, "BUGLY_APPID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->X:Ljava/lang/String;

    :cond_1
    const-string v0, "BUGLY_APP_VERSION"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_2
    const-string v0, "BUGLY_APP_CHANNEL"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_3
    const-string v0, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->u:Z

    :cond_4
    const-string v0, "com.tencent.rdm.uuid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_5
    :goto_1
    :try_start_2
    const-string v0, "bugly_db_msdk"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->z:Z

    .line 154
    const-string v0, "App is first time to be installed on the device."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :cond_6
    :goto_2
    const-string v0, "BUGLY_COMMON_VALUES"

    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    .line 162
    const-string v0, "com info create end"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 139
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    sget-boolean v1, Lcom/tencent/bugly/msdk/b;->c:Z

    if-eqz v1, :cond_6

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static K()I
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/msdk/crashreport/common/info/a;
    .locals 2

    .prologue
    .line 253
    const-class v1, Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    .line 256
    :cond_0
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;
    .locals 2

    .prologue
    .line 265
    const-class v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ae:Lcom/tencent/bugly/msdk/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "2.7.2"

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 4

    .prologue
    .line 713
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ab:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ab:Ljava/lang/String;

    .line 715
    const-string v0, "Hardware serial number: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ab:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 728
    const/4 v0, 0x0

    monitor-exit v1

    .line 730
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final C()V
    .locals 2

    .prologue
    .line 754
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 756
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final D()I
    .locals 2

    .prologue
    .line 797
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final E()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final F()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 837
    const/4 v0, 0x0

    monitor-exit v1

    .line 839
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ai:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final G()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 865
    const/4 v0, 0x0

    monitor-exit v1

    .line 867
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final H()I
    .locals 2

    .prologue
    .line 893
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->af:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final I()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ag:I

    return v0
.end method

.method public final declared-synchronized J()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->an:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 976
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->an:Ljava/lang/String;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->an:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ao:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ao:Ljava/lang/String;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ap:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ap:Ljava/lang/String;

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aq:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aq:Ljava/lang/String;

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()J
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final R()Z
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->al:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->l(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->al:Ljava/lang/Boolean;

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is it a virtual machine? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->al:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->al:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->m(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Does it has hook frame? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->am:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 878
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->af:I

    .line 880
    if-eq v0, p1, :cond_0

    .line 881
    iput p1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->af:I

    .line 882
    const-string/jumbo v2, "user scene tag %d changed to tag %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->af:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 884
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->X:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 537
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ak:Z

    .line 241
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->D:Lcom/tencent/bugly/msdk/crashreport/a;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->D:Lcom/tencent/bugly/msdk/crashreport/a;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/a;->setNativeIsAppForeground(Z)Z

    .line 244
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ak:Z

    return v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/16 v1, 0x5e20

    .line 902
    iget v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ag:I

    .line 903
    if-eq v0, v1, :cond_0

    .line 904
    iput v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ag:I

    .line 905
    const-string v1, "server scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 907
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    if-nez p1, :cond_0

    .line 342
    :try_start_0
    const-string p1, "10000"

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->I:Ljava/lang/String;

    .line 345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 782
    invoke-static {p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    :cond_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 368
    iput-object p1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ai:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 847
    invoke-static {p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    :cond_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 283
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 293
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->G:Ljava/lang/String;

    .line 297
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->G:Ljava/lang/String;

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->X:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 741
    invoke-static {p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 743
    const/4 v0, 0x0

    .line 746
    :goto_0
    return-object v0

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->I:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 766
    invoke-static {p1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 768
    const/4 v0, 0x0

    .line 771
    :goto_0
    return-object v0

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ah:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 358
    :goto_0
    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->H:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    .line 417
    const-string v0, ""

    .line 422
    :goto_0
    return-object v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->L:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->L:Ljava/lang/String;

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->L:Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    .line 432
    const-string v0, ""

    .line 437
    :goto_0
    return-object v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->M:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->M:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->M:Ljava/lang/String;

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    .line 447
    const-string v0, ""

    .line 452
    :goto_0
    return-object v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->N:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->N:Ljava/lang/String;

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    .line 462
    const-string v0, ""

    .line 467
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->O:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->O:Ljava/lang/String;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->O:Ljava/lang/String;

    goto :goto_0
.end method

.method public final o()J
    .locals 4

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->P:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->P:J

    .line 479
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->P:J

    return-wide v0
.end method

.method public final p()J
    .locals 4

    .prologue
    .line 488
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Q:J

    .line 491
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Q:J

    return-wide v0
.end method

.method public final q()J
    .locals 4

    .prologue
    .line 500
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->R:J

    .line 503
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->R:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->S:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->S:Ljava/lang/String;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->T:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->T:Ljava/lang/String;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 5

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 551
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    iget-object v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 563
    :catch_1
    move-exception v0

    .line 564
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 566
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 569
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 561
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 576
    :cond_2
    const-string v0, "SDK_INFO"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_3
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ar:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ar:Ljava/lang/String;

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->W:Ljava/lang/String;

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 667
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Z:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Z:Ljava/lang/String;

    .line 689
    const-string v0, "ROM ID: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 4

    .prologue
    .line 700
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aa:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/common/info/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aa:Ljava/lang/String;

    .line 702
    const-string v0, "SIM serial number: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aa:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->aa:Ljava/lang/String;

    return-object v0
.end method
