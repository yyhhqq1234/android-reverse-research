.class Lcom/netease/download/reporter/ReportProxy$4;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportProxy;->reportInfo(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportProxy;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportProxy;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy$4;->this$0:Lcom/netease/download/reporter/ReportProxy;

    iput p2, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$type:I

    iput-object p3, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$context:Landroid/content/Context;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 234
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u57fa\u7840\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy$4;->this$0:Lcom/netease/download/reporter/ReportProxy;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/reporter/ReportInfo;->getBaseInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 238
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u5168\u90e8\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy$4;->this$0:Lcom/netease/download/reporter/ReportProxy;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportProxy$4;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/reporter/ReportInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
