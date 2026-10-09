.class public Lcom/apm/insight/MonitorCrash$Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/MonitorCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/MonitorCrash$Config$SdkBuilder;,
        Lcom/apm/insight/MonitorCrash$Config$Builder;,
        Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;
    }
.end annotation


# static fields
.field private static v:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field h:Lcom/apm/insight/AttachUserData;

.field public i:Z

.field j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/apm/applog/InitConfig;

.field private o:Ljava/lang/String;

.field private p:Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/MonitorCrash$Config;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash$Config;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/apm/insight/MonitorCrash$Config;->q:Z

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash$Config;->r:Z

    iput-boolean v1, p0, Lcom/apm/insight/MonitorCrash$Config;->s:Z

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash$Config;->t:Z

    iput-boolean v1, p0, Lcom/apm/insight/MonitorCrash$Config;->u:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/apm/insight/MonitorCrash$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/apm/insight/MonitorCrash$Config;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/MonitorCrash$Config;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->n:Lcom/apm/applog/InitConfig;

    return-object p1
.end method

.method static synthetic a(Lcom/apm/insight/MonitorCrash$Config;Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;)Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->p:Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;

    return-object p1
.end method

.method static synthetic a(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/MonitorCrash$Config;->v:Z

    return v0
.end method

.method static synthetic a(Lcom/apm/insight/MonitorCrash$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apm/insight/MonitorCrash$Config;->r:Z

    return p0
.end method

.method static synthetic a(Lcom/apm/insight/MonitorCrash$Config;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/apm/insight/MonitorCrash$Config;->u:Z

    return p1
.end method

.method public static app(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config$Builder;
    .locals 2

    new-instance v0, Lcom/apm/insight/MonitorCrash$Config$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apm/insight/MonitorCrash$Config$Builder;-><init>(Ljava/lang/String;Lcom/apm/insight/MonitorCrash$1;)V

    return-object v0
.end method

.method static synthetic b(Lcom/apm/insight/MonitorCrash$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apm/insight/MonitorCrash$Config;->t:Z

    return p0
.end method

.method static synthetic b(Lcom/apm/insight/MonitorCrash$Config;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/apm/insight/MonitorCrash$Config;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/apm/insight/MonitorCrash$Config;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/apm/insight/MonitorCrash$Config;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/apm/insight/MonitorCrash$Config;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/apm/insight/MonitorCrash$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apm/insight/MonitorCrash$Config;->q:Z

    return p0
.end method

.method static synthetic d(Lcom/apm/insight/MonitorCrash$Config;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/apm/insight/MonitorCrash$Config;->q:Z

    return p1
.end method

.method public static disableConfigUrl()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/apm/insight/MonitorCrash$Config;->v:Z

    sput-boolean v0, Lcom/apm/insight/runtime/ConfigManager;->disableConfigUrl:Z

    return-void
.end method

.method static synthetic e(Lcom/apm/insight/MonitorCrash$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apm/insight/MonitorCrash$Config;->u:Z

    return p0
.end method

.method static synthetic e(Lcom/apm/insight/MonitorCrash$Config;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/apm/insight/MonitorCrash$Config;->t:Z

    return p1
.end method

.method static synthetic f(Lcom/apm/insight/MonitorCrash$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apm/insight/MonitorCrash$Config;->s:Z

    return p0
.end method

.method public static sdk(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config$SdkBuilder;
    .locals 2

    new-instance v0, Lcom/apm/insight/MonitorCrash$Config$SdkBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apm/insight/MonitorCrash$Config$SdkBuilder;-><init>(Ljava/lang/String;Lcom/apm/insight/MonitorCrash$1;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->p:Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->p:Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/apm/insight/MonitorCrash$Config$IDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 1

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->n:Lcom/apm/applog/InitConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apm/applog/InitConfig;->setChannel(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apm/insight/MonitorCrash$Config;->setDeviceId(Ljava/lang/String;Z)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceId(Ljava/lang/String;Z)Lcom/apm/insight/MonitorCrash$Config;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$Config;->n:Lcom/apm/applog/InitConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apm/applog/InitConfig;->setDid(Ljava/lang/String;)Lcom/apm/applog/InitConfig;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    :cond_1
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->f:[Ljava/lang/String;

    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    return-object p0
.end method

.method public setSSID(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->m:Ljava/lang/String;

    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    return-object p0
.end method

.method public setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->g:[Ljava/lang/String;

    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    return-object p0
.end method

.method public setUID(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$Config;->l:Ljava/lang/String;

    invoke-static {}, Lgbsdk/common/host/abeh;->E()V

    return-object p0
.end method
