.class Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;
.super Ljava/lang/Object;
.source "LinkCheckProxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/ConfigInfoListener;


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
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;)V
    .locals 3
    .param p1, "cycle"    # Z
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "LinkCheckProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mConfigInfoListener mOnceList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v2}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$4(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$4(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$4(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    const-string v0, "LinkCheckProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mConfigInfoListener cycle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0, p1}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$2(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V

    .line 125
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    return-void
.end method
