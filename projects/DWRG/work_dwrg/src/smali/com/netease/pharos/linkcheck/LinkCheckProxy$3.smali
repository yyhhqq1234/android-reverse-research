.class Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;
.super Ljava/lang/Object;
.source "LinkCheckProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/linkcheck/LinkCheckProxy;->start()V
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
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$3(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V

    .line 227
    const-string v1, "LinkCheckProxy"

    const-string v2, "\u53d1\u8d77\u4e00\u6b21\u63a2\u6d4b\u5468\u671f"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/16 v0, 0xb

    .line 229
    .local v0, "result":I
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->downloadRegionConfig()I

    move-result v0

    .line 230
    const-string v1, "LinkCheckProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lcom/netease/pharos/linkcheck/ScanProxy;->getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v2}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$5(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-static {v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$6(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netease/pharos/linkcheck/ScanProxy;->init(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;)V

    .line 234
    invoke-static {}, Lcom/netease/pharos/linkcheck/ScanProxy;->getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/ScanProxy;->start()I

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;->this$0:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->access$3(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V

    .line 239
    return-void
.end method
