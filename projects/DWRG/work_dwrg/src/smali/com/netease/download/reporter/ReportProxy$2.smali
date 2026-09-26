.class Lcom/netease/download/reporter/ReportProxy$2;
.super Ljava/lang/Object;
.source "ReportProxy.java"

# interfaces
.implements Lcom/netease/download/reporter/ReportNet$ReportCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportProxy;

.field private final synthetic val$deleteFile:Z


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportProxy;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy$2;->this$0:Lcom/netease/download/reporter/ReportProxy;

    iput-boolean p2, p0, Lcom/netease/download/reporter/ReportProxy$2;->val$deleteFile:Z

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 128
    const-string v0, "ReportProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u4e0a\u4f20\u5b8c\u6210\uff0c\u662f\u5426\u9700\u8981\u5220\u9664\u6587\u4ef6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/netease/download/reporter/ReportProxy$2;->val$deleteFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez p1, :cond_0

    .line 132
    iget-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy$2;->val$deleteFile:Z

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "ReportProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u4e0a\u4f20\u5b8c\u6210\uff0c\u5220\u9664\u65e5\u5fd7\u6587\u4ef6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/netease/download/reporter/ReportProxy$2;->val$deleteFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportFile;->deleteFile()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v0, "ReportProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u4e0a\u4f20\u5b8c\u6210\uff0c\u4e0d\u9700\u8981\u5220\u9664\u65e5\u5fd7\u6587\u4ef6="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/netease/download/reporter/ReportProxy$2;->val$deleteFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
