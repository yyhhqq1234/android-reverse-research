.class Lcom/netease/download/reporter/ReportProxy$1;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Lcom/netease/download/reporter/ReportFile$FileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy$1;->this$0:Lcom/netease/download/reporter/ReportProxy;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "ReportProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u843d\u5730\u5b8c\u6210\uff0c\u4e0a\u4f20\u5168\u90e8\u5185\u5bb9\u3002 \u4e0a\u4f20\u540e\u662f\u5426\u5220\u9664\u6587\u4ef6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/download/reporter/ReportProxy$1;->this$0:Lcom/netease/download/reporter/ReportProxy;

    invoke-static {v2}, Lcom/netease/download/reporter/ReportProxy;->access$0(Lcom/netease/download/reporter/ReportProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    .line 72
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy$1;->this$0:Lcom/netease/download/reporter/ReportProxy;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportProxy$1;->this$0:Lcom/netease/download/reporter/ReportProxy;

    invoke-static {v1}, Lcom/netease/download/reporter/ReportProxy;->access$1(Lcom/netease/download/reporter/ReportProxy;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->reportInfo(Landroid/content/Context;I)V

    .line 74
    return-void
.end method
