.class Lcom/netease/download/reporter/ReportProxy$3;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Lcom/netease/download/reporter/ReportNet$ReportCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy$3;->this$0:Lcom/netease/download/reporter/ReportProxy;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    const-string v0, "ReportProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f\uff0c\u4e0a\u4f20\u6210\u529f\u3002\u662f\u5426\u9700\u8981\u5220\u9664\u6587\u4ef6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/download/reporter/ReportProxy$3;->this$0:Lcom/netease/download/reporter/ReportProxy;

    invoke-static {v2}, Lcom/netease/download/reporter/ReportProxy;->access$0(Lcom/netease/download/reporter/ReportProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy$3;->this$0:Lcom/netease/download/reporter/ReportProxy;

    invoke-static {v0}, Lcom/netease/download/reporter/ReportProxy;->access$0(Lcom/netease/download/reporter/ReportProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportFile;->deleteFile()V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0d\u9700\u8981\u5220\u9664\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f\uff0c\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
