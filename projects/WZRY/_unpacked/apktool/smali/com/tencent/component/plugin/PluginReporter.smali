.class public Lcom/tencent/component/plugin/PluginReporter;
.super Ljava/lang/Object;
.source "PluginReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginReporter$Pool;,
        Lcom/tencent/component/plugin/PluginReporter$ReportEvent;,
        Lcom/tencent/component/plugin/PluginReporter$Reporter;
    }
.end annotation


# static fields
.field public static final EVENT_CENTER_INSTALL:Ljava/lang/String; = "center_install"

.field public static final EVENT_CENTER_UPDATE:Ljava/lang/String; = "center_update"

.field public static final EVENT_INSTALL:Ljava/lang/String; = "install"

.field public static final EVENT_LOAD:Ljava/lang/String; = "load"

.field private static final sReportEventPool:Lcom/tencent/component/plugin/PluginReporter$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/plugin/PluginReporter$Pool",
            "<",
            "Lcom/tencent/component/plugin/PluginReporter$ReportEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sReporter:Lcom/tencent/component/plugin/PluginReporter$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/tencent/component/plugin/PluginReporter$Pool;

    const/16 v1, 0x10

    new-instance v2, Lcom/tencent/component/plugin/PluginReporter$1;

    invoke-direct {v2}, Lcom/tencent/component/plugin/PluginReporter$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/tencent/component/plugin/PluginReporter$Pool;-><init>(ILcom/tencent/component/plugin/PluginReporter$Pool$Factory;)V

    sput-object v0, Lcom/tencent/component/plugin/PluginReporter;->sReportEventPool:Lcom/tencent/component/plugin/PluginReporter$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static getReporter()Lcom/tencent/component/plugin/PluginReporter$Reporter;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/component/plugin/PluginReporter;->sReporter:Lcom/tencent/component/plugin/PluginReporter$Reporter;

    return-object v0
.end method

.method public static report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "succeed"    # Z
    .param p2, "brief"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/component/plugin/PluginReporter;->getReporter()Lcom/tencent/component/plugin/PluginReporter$Reporter;

    move-result-object v1

    .line 100
    .local v1, "reporter":Lcom/tencent/component/plugin/PluginReporter$Reporter;
    if-eqz v1, :cond_0

    .line 102
    sget-object v2, Lcom/tencent/component/plugin/PluginReporter;->sReportEventPool:Lcom/tencent/component/plugin/PluginReporter$Pool;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/PluginReporter$Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;

    .line 104
    .local v0, "event":Lcom/tencent/component/plugin/PluginReporter$ReportEvent;
    iput-object p0, v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;->name:Ljava/lang/String;

    .line 105
    iput-boolean p1, v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;->succeed:Z

    .line 106
    iput-object p2, v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;->brief:Ljava/lang/String;

    .line 107
    iput-object p3, v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;->msg:Ljava/lang/String;

    .line 108
    iput-object p4, v0, Lcom/tencent/component/plugin/PluginReporter$ReportEvent;->exception:Ljava/lang/Throwable;

    .line 109
    invoke-interface {v1, v0}, Lcom/tencent/component/plugin/PluginReporter$Reporter;->report(Lcom/tencent/component/plugin/PluginReporter$ReportEvent;)V

    .line 111
    sget-object v2, Lcom/tencent/component/plugin/PluginReporter;->sReportEventPool:Lcom/tencent/component/plugin/PluginReporter$Pool;

    invoke-virtual {v2, v0}, Lcom/tencent/component/plugin/PluginReporter$Pool;->recycle(Ljava/lang/Object;)V

    .line 113
    .end local v0    # "event":Lcom/tencent/component/plugin/PluginReporter$ReportEvent;
    :cond_0
    return-void
.end method

.method public static setReporter(Lcom/tencent/component/plugin/PluginReporter$Reporter;)V
    .locals 2
    .param p0, "reporter"    # Lcom/tencent/component/plugin/PluginReporter$Reporter;

    .prologue
    .line 121
    const-class v1, Lcom/tencent/component/plugin/PluginReporter;

    monitor-enter v1

    .line 122
    :try_start_0
    sput-object p0, Lcom/tencent/component/plugin/PluginReporter;->sReporter:Lcom/tencent/component/plugin/PluginReporter$Reporter;

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
