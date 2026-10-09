.class public Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
.super Ljava/lang/Object;
.source "WebTurboConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/h5c/WebTurboConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    invoke-direct {v0}, Lcom/netease/epay/sdk/h5c/WebTurboConfig;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/epay/sdk/h5c/WebTurboConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    return-object v0
.end method

.method public enableDnsPrefetch(Z)Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    iput-boolean p1, v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableDnsPrefetch:Z

    return-object p0
.end method

.method public enableOfflinePkg(Z)Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    iput-boolean p1, v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableOfflinePkg:Z

    return-object p0
.end method

.method public enableOfflinePkgPrefetch(Z)Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    iput-boolean p1, v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableOfflinePkgPrefetch:Z

    return-object p0
.end method

.method public enableWebResourcePreload(Z)Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    iput-boolean p1, v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableWebResourcePreload:Z

    return-object p0
.end method

.method public enableWebViewPrepare(Z)Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;->config:Lcom/netease/epay/sdk/h5c/WebTurboConfig;

    iput-boolean p1, v0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableWebViewPrepare:Z

    return-object p0
.end method
