.class public final Lcom/tencent/component/utils/HttpUtil$RequestOptions;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x8
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestOptions"
.end annotation


# static fields
.field static final DEFAULT_ALLOW_PROXY:Z = true
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation
.end field

.field static final DEFAULT_APN_PROXY:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation
.end field


# instance fields
.field public allowProxy:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation
.end field

.field public apnProxy:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/utils/HttpUtil$RequestOptions;->allowProxy:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/utils/HttpUtil$RequestOptions;->apnProxy:Z

    .line 56
    return-void
.end method
