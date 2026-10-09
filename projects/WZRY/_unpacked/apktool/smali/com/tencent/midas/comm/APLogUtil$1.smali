.class final Lcom/tencent/midas/comm/APLogUtil$1;
.super Ljava/lang/Object;
.source "APLogUtil.java"

# interfaces
.implements Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/comm/APLogUtil;->initAPLogIfNewProcess(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "extend"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
