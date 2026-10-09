.class public final Lcom/tencent/tp/t;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/tencent/tp/m;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 7

    const/16 v6, 0x3f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/tp/h;->a()Lcom/tencent/tp/h;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "AndroidId"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "ApiLevel"

    invoke-static {}, Lcom/tencent/tp/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Serial"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "AppName"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "PackageName"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "AppVer"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "AppPubkeySha1"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "LauncherPubkeySha1"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "BootTime"

    invoke-static {}, Lcom/tencent/tp/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Brand"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Fp"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Country"

    invoke-static {}, Lcom/tencent/tp/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "CpuProductor"

    invoke-static {}, Lcom/tencent/tp/r;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "CpuAbi"

    invoke-static {}, Lcom/tencent/tp/r;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "CpuAbis"

    invoke-static {}, Lcom/tencent/tp/r;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v0, "Unknown"

    :cond_3
    iget-object v3, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v4, "CpuModel"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpu_model:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "OsArch"

    invoke-static {}, Lcom/tencent/tp/r;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "DeviceName"

    invoke-static {}, Lcom/tencent/tp/r;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "DisplayMetrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/tp/r;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/tp/r;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "FreeMemory"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "FreeStorage"

    invoke-static {}, Lcom/tencent/tp/r;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "IMEI"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "IMSI"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Language"

    invoke-static {}, Lcom/tencent/tp/r;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "MacAddress"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "NetworkName"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "NetworkType"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Platform"

    invoke-static {}, Lcom/tencent/tp/r;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "RamSize"

    invoke-static {}, Lcom/tencent/tp/r;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "RomSize"

    invoke-static {}, Lcom/tencent/tp/r;->q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "SensorStates"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "Version"

    invoke-static {}, Lcom/tencent/tp/r;->r()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "WifiHotspotMacAddress"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v3, "WifiHotspotSSID"

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/tencent/tp/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "SDCardState"

    invoke-static {}, Lcom/tencent/tp/r;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "KernelVer"

    invoke-static {}, Lcom/tencent/tp/r;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "SimulatorName"

    iget-object v3, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tp/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->k(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "TotalMemory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/tp/r;->m(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/tp/r;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "SDCARDFreeSpace"

    invoke-static {}, Lcom/tencent/tp/r;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-direct {p0, v0}, Lcom/tencent/tp/t;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/tp/t;->a:Ljava/util/Map;

    const-string v1, "SDCARDFreeSpace"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/tencent/tp/t;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tp/t;->c:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/tencent/tp/t;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
