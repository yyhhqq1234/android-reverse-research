.class Lcom/netease/pharos/report/ReportProxy$1;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/report/ReportProxy;

.field private final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/pharos/report/ReportProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/report/ReportProxy$1;->this$0:Lcom/netease/pharos/report/ReportProxy;

    iput-object p2, p0, Lcom/netease/pharos/report/ReportProxy$1;->val$info:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    const-string v1, "https://netlink-sigma.proxima.nie.netease.com"

    .line 45
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/netease/pharos/report/ReportCore;

    invoke-direct {v0}, Lcom/netease/pharos/report/ReportCore;-><init>()V

    .line 46
    .local v0, "reportCore":Lcom/netease/pharos/report/ReportCore;
    invoke-virtual {v0, v1}, Lcom/netease/pharos/report/ReportCore;->init(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/netease/pharos/report/ReportProxy$1;->val$info:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/netease/pharos/report/ReportCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
