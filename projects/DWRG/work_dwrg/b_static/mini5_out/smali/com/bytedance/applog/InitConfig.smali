.class public Lcom/bytedance/applog/InitConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public A0:Ljavax/net/ssl/SSLSocketFactory;

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public B0:Lcom/bytedance/applog/store/kv/KVStoreConfig;

.field public C:Landroid/accounts/Account;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public C0:Lcom/bytedance/applog/DynamicValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Z

.field public D0:Z

.field public E:Lcom/bytedance/applog/network/INetworkClient;

.field public E0:Z

.field public F:Z

.field public F0:Z

.field public G:Z

.field public G0:Z

.field public H:Z

.field public H0:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Lcom/bytedance/applog/ISensitiveInfoProvider;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Z

.field public Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

.field public final a:Ljava/lang/String;

.field public a0:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Z

.field public b0:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public c0:Z

.field public d:Ljava/lang/String;

.field public d0:Z

.field public e:Lgbsdk/optional/applog/abej;

.field public e0:Z

.field public f:Ljava/lang/String;

.field public f0:Z

.field public g:Ljava/lang/String;

.field public g0:Z

.field public h:Lcom/bytedance/applog/ILogger;

.field public h0:Z

.field public i:Ljava/lang/String;

.field public i0:Z

.field public j:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public j0:Z

.field public k:Lcom/bytedance/applog/IPicker;

.field public k0:Z

.field public l:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public l0:Z

.field public m:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m0:Z

.field public n:Z

.field public n0:Z

.field public o:I

.field public o0:I

.field public p:Ljava/lang/String;

.field public p0:Z

.field public q:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q0:Z

.field public r:Ljava/lang/String;

.field public r0:I

.field public s:Lcom/bytedance/applog/UriConfig;

.field public s0:I

.field public t:Ljava/lang/String;

.field public t0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public u0:Lcom/bytedance/applog/DynamicValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public v:I

.field public v0:Z

.field public w:I

.field public w0:Z

.field public x:I

.field public x0:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public y0:Z

.field public z:Ljava/lang/String;

.field public final z0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    iput v1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->n0:Z

    const/4 v3, 0x6

    iput v3, p0, Lcom/bytedance/applog/InitConfig;->o0:I

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->q0:Z

    const/16 v3, 0x7d0

    iput v3, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    iput v1, p0, Lcom/bytedance/applog/InitConfig;->s0:I

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->t0:Ljava/util/Map;

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->u0:Lcom/bytedance/applog/DynamicValueCallback;

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->w0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->x0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->y0:Z

    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/applog/InitConfig;->z0:Ljava/util/Set;

    sget-object v1, Lcom/bytedance/applog/store/kv/KVStoreConfig;->DEFAULT_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    iput-object v1, p0, Lcom/bytedance/applog/InitConfig;->B0:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->C0:Lcom/bytedance/applog/DynamicValueCallback;

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->E0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G0:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->H0:Z

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLoaderFilter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->z0:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public autoStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    return v0
.end method

.method public clearABCacheOnUserChange(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    return-object p0
.end method

.method public clearDidAndIid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public disableDeferredALink()Lcom/bytedance/applog/InitConfig;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    return-object p0
.end method

.method public enableDeferredALink()Lcom/bytedance/applog/InitConfig;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    return-object p0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    return v0
.end method

.method public getAppImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoTrackEventType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->o0:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getClearKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomOaidCallback()Lcom/bytedance/applog/DynamicValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->C0:Lcom/bytedance/applog/DynamicValueCallback;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@bd_tea_agent.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptor()Lcom/bytedance/mpaas/IEncryptor;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lgbsdk/optional/applog/abej;

    return-object v0
.end method

.method public getGaidTimeOutMilliSeconds()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    return v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getH5BridgeAllowlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->T:Ljava/util/List;

    return-object v0
.end method

.method public getHttpHeaderCallback()Lcom/bytedance/applog/DynamicValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->u0:Lcom/bytedance/applog/DynamicValueCallback;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->t0:Ljava/util/Map;

    return-object v0
.end method

.method public getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    return-object v0
.end method

.method public getKvStoreConfig()Lcom/bytedance/applog/store/kv/KVStoreConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->B0:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLoaderFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->z0:Ljava/util/Set;

    return-object v0
.end method

.method public getLocalTest()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    return v0
.end method

.method public getLogger()Lcom/bytedance/applog/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->x:I

    return v0
.end method

.method public getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    return-object v0
.end method

.method public getNotReuqestSender()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    return v0
.end method

.method public getPicker()Lcom/bytedance/applog/IPicker;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    return-object v0
.end method

.method public getPreInstallCallback()Lgbsdk/optional/applog/abfr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcess()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->N:Lcom/bytedance/applog/ISensitiveInfoProvider;

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->A0:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTrackCrashType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->s0:I

    return v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->w:I

    return v0
.end method

.method public getUriConfig()Lcom/bytedance/applog/UriConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public getUserUniqueId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    return-object v0
.end method

.method public getUserUniqueIdType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->v:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    return-object v0
.end method

.method public isAbEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    return v0
.end method

.method public isAbTestExposureEventRepeatEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F0:Z

    return v0
.end method

.method public isAndroidIdEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    return v0
.end method

.method public isAutoActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    return v0
.end method

.method public isAutoTrackFragmentEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    return v0
.end method

.method public isCPUAbiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G0:Z

    return v0
.end method

.method public isClearABCacheOnUserChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->W:Z

    return v0
.end method

.method public isClearDidAndIid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    return v0
.end method

.method public isCongestionControlEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    return v0
.end method

.method public isDeferredALinkEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->V:Z

    return v0
.end method

.method public isDisplayDensityAndDpiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->H0:Z

    return v0
.end method

.method public isEventFilterEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Y:Z

    return v0
.end method

.method public isExposureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    return v0
.end method

.method public isGaidEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->q0:Z

    return v0
.end method

.method public isH5BridgeAllowAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    return v0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    return v0
.end method

.method public isHandleLifeCycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    return v0
.end method

.method public isHarmonyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    return v0
.end method

.method public isIccIdEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    return v0
.end method

.method public isImeiEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    return v0
.end method

.method public isLaunchTerminateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->y0:Z

    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    return v0
.end method

.method public isMacEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    return v0
.end method

.method public isMetaSecEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    return v0
.end method

.method public isMigrateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    return v0
.end method

.method public isMonitorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    return v0
.end method

.method public isOaidEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    return v0
.end method

.method public isOperatorInfoEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->n0:Z

    return v0
.end method

.method public isPageMetaAnnotationEnable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->x0:Z

    return v0
.end method

.method public isPlayEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    return v0
.end method

.method public isReportOaidEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    return v0
.end method

.method public isResponseEncryptEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->E0:Z

    return v0
.end method

.method public isScreenOrientationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    return v0
.end method

.method public isScrollObserveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    return v0
.end method

.method public isSerialNumberEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->w0:Z

    return v0
.end method

.method public isSilenceInBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    return v0
.end method

.method public isTrackEventEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    return v0
.end method

.method public isUseBridgeUpdateUUIDEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D0:Z

    return v0
.end method

.method public putCommonHeader(Ljava/util/Map;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/applog/InitConfig;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    return-object p0
.end method

.method public setAbEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    return-void
.end method

.method public setAbTestExposureEventRepeatEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->F0:Z

    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setAndroidIdEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->h0:Z

    return-void
.end method

.method public setAnonymous(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->X:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->F:Z

    return-void
.end method

.method public setAutoStart(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    return-object p0
.end method

.method public setAutoTrackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    return-void
.end method

.method public setAutoTrackEventType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->o0:I

    return-void
.end method

.method public setAutoTrackFragmentEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->e0:Z

    return-void
.end method

.method public setCPUAbiEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->G0:Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public setCongestionControlEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    return-void
.end method

.method public setCustomOaidCallback(Lcom/bytedance/applog/DynamicValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->C0:Lcom/bytedance/applog/DynamicValueCallback;

    return-void
.end method

.method public setDbName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->L:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setDisplayDensityAndDpiEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->H0:Z

    return-void
.end method

.method public setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    return-object p0
.end method

.method public setEncryptor(Lcom/bytedance/mpaas/IEncryptor;)Lcom/bytedance/applog/InitConfig;
    .locals 2

    new-instance v0, Lgbsdk/optional/applog/abej;

    const-string v1, "a"

    invoke-direct {v0, p1, v1}, Lgbsdk/optional/applog/abej;-><init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lgbsdk/optional/applog/abej;

    return-object p0
.end method

.method public setEncryptor(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abej;

    invoke-direct {v0, p1, p2}, Lgbsdk/optional/applog/abej;-><init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lgbsdk/optional/applog/abej;

    return-object p0
.end method

.method public setEventFilterEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->Y:Z

    return-void
.end method

.method public setExposureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->i0:Z

    return-void
.end method

.method public setGaidEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->q0:Z

    return-void
.end method

.method public setGaidTimeOutMilliSeconds(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->r0:I

    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setH5BridgeAllowAll(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->U:Z

    return-object p0
.end method

.method public setH5BridgeAllowlist(Ljava/util/List;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/applog/InitConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->T:Ljava/util/List;

    return-object p0
.end method

.method public setH5BridgeEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    return-object p0
.end method

.method public setH5CollectEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    return-object p0
.end method

.method public setHandleLifeCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    return-void
.end method

.method public setHarmonyEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->d0:Z

    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->t0:Ljava/util/Map;

    return-void
.end method

.method public setHttpHeadersCallback(Lcom/bytedance/applog/DynamicValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/DynamicValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->u0:Lcom/bytedance/applog/DynamicValueCallback;

    return-void
.end method

.method public setIccIdEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->v0:Z

    return-void
.end method

.method public setImeiEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->P:Z

    return-object p0
.end method

.method public setIpcDataChecker(Lcom/bytedance/applog/InitConfig$IpcDataChecker;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->Z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    return-object p0
.end method

.method public setKvStoreConfig(Lcom/bytedance/applog/store/kv/KVStoreConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->B0:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setLaunchTerminateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->y0:Z

    return-void
.end method

.method public setLocalTest(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    return-object p0
.end method

.method public setLogEnable(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->S:Z

    return-object p0
.end method

.method public setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    return-object p0
.end method

.method public setMacEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->O:Z

    return-void
.end method

.method public setMainProcess()Lcom/bytedance/applog/InitConfig;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return-object p0
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->x:I

    return-object p0
.end method

.method public setMetaSecEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->f0:Z

    return-void
.end method

.method public setMigrateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->p0:Z

    return-void
.end method

.method public setMonitorEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lgbsdk/optional/applog/abea;->a(Lcom/bytedance/applog/InitConfig;)Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->k0:Z

    return-void
.end method

.method public setNetworkClient(Lcom/bytedance/applog/network/INetworkClient;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    return-object p0
.end method

.method public setNotRequestSender(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    return-object p0
.end method

.method public setOaidEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->g0:Z

    return-void
.end method

.method public setOperatorInfoEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->n0:Z

    return-void
.end method

.method public setPageMetaAnnotationEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->x0:Z

    return-void
.end method

.method public setPicker(Lcom/bytedance/applog/IPicker;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    return-object p0
.end method

.method public setPreInstallChannelCallback(Lgbsdk/optional/applog/abfr;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setProcess(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    return-object p0
.end method

.method public setReportOaidEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->m0:Z

    return-void
.end method

.method public setResponseEncryptEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->E0:Z

    return-void
.end method

.method public setScreenOrientationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->l0:Z

    return-void
.end method

.method public setScrollObserveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->j0:Z

    return-void
.end method

.method public setSensitiveInfoProvider(Lcom/bytedance/applog/ISensitiveInfoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->N:Lcom/bytedance/applog/ISensitiveInfoProvider;

    return-void
.end method

.method public setSerialNumberEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->w0:Z

    return-void
.end method

.method public setSilenceInBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    return-void
.end method

.method public setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->M:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->A0:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setTrackCrashType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->s0:I

    return-void
.end method

.method public setTrackEventEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->c0:Z

    return-void
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->w:I

    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/applog/UriConfig;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setUseBridgeUpdateUUIDEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->D0:Z

    return-void
.end method

.method public setUserUniqueId(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a0:Ljava/lang/String;

    return-object p0
.end method

.method public setUserUniqueIdType(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->b0:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->v:I

    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    return-object p0
.end method
