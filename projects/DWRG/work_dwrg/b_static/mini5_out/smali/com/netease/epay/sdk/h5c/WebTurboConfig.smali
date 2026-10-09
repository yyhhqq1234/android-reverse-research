.class public Lcom/netease/epay/sdk/h5c/WebTurboConfig;
.super Ljava/lang/Object;
.source "WebTurboConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/h5c/WebTurboConfig$Builder;
    }
.end annotation


# instance fields
.field public enableDnsPrefetch:Z

.field public enableOfflinePkg:Z

.field public enableOfflinePkgPrefetch:Z

.field public enableWebResourcePreload:Z

.field public enableWebViewPrepare:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableWebViewPrepare:Z

    .line 9
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableWebResourcePreload:Z

    .line 13
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableDnsPrefetch:Z

    .line 19
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableOfflinePkg:Z

    .line 21
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/WebTurboConfig;->enableOfflinePkgPrefetch:Z

    return-void
.end method
