.class public Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;
.super Ljava/lang/Object;
.source "PluginClassLoaderInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public interceptClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
