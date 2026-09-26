.class Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;
.super Ljava/lang/Object;
.source "LinkCheckProxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/CycleTaskStopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/linkcheck/LinkCheckProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 4
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    const-string v0, "LinkCheckProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8be5\u4efb\u52a1\u5df2\u7ecf\u7ed3\u675f="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$0(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$0(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$0(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v1}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "LinkCheckProxy"

    const-string v1, "\u7ed3\u675f\u4e00\u6b21\u5468\u671f"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "LinkCheckProxy"

    const-string v1, "\u91cd\u65b0\u53d1\u8d77\u4e00\u6b21\u5468\u671f"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0, v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$2(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V

    .line 98
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0, v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$3(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V

    .line 99
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$0(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->start()V

    .line 102
    :cond_0
    return-void
.end method
