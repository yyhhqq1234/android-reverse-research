.class public Lcom/netease/pharos/report/ReportProxy;
.super Ljava/lang/Object;
.source "ReportProxy.java"


# static fields
.field public static sReportProxy:Lcom/netease/pharos/report/ReportProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/report/ReportProxy;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/pharos/report/ReportProxy;

    invoke-direct {v0}, Lcom/netease/pharos/report/ReportProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/pharos/report/ReportProxy;->sReportProxy:Lcom/netease/pharos/report/ReportProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)I
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 38
    const/16 v0, 0xb

    .line 39
    .local v0, "result":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/pharos/report/ReportProxy$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/pharos/report/ReportProxy$1;-><init>(Lcom/netease/pharos/report/ReportProxy;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 51
    return v0
.end method
