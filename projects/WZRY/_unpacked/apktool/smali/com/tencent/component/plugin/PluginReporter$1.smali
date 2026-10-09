.class final Lcom/tencent/component/plugin/PluginReporter$1;
.super Ljava/lang/Object;
.source "PluginReporter.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/component/plugin/PluginReporter$Pool$Factory",
        "<",
        "Lcom/tencent/component/plugin/PluginReporter$ReportEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/tencent/component/plugin/PluginReporter$ReportEvent;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginReporter$1;->create()Lcom/tencent/component/plugin/PluginReporter$ReportEvent;

    move-result-object v0

    return-object v0
.end method
