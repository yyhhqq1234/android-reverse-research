.class public abstract Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory$1;

    invoke-direct {v0}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory$1;-><init>()V

    return-object v0
.end method

.method public static setTencentHttpClientFactory(Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;)V
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public getTencentHttpClient(Landroid/content/Context;Landroid/os/Bundle;)Lcom/tencent/map/geolocation/internal/TencentHttpClient;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    sget-object v1, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->getTencentHttpClient(Landroid/content/Context;Landroid/os/Bundle;)Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    move-result-object v0

    .line 31
    const-string v1, "http client should NOT be null"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc/t/m/g/db;

    const-string v1, "channelId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc/t/m/g/db;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTencentHttpURLConnection()Lcom/tencent/map/geolocation/internal/TencentHttpClient;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->sCustFact:Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/internal/TencentHttpClientFactory;->getTencentHttpURLConnection()Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    move-result-object v0

    .line 39
    const-string v1, "http client should NOT be null"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc/t/m/g/dc;

    invoke-direct {v0}, Lc/t/m/g/dc;-><init>()V

    goto :goto_0
.end method
