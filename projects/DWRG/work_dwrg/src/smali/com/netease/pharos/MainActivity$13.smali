.class Lcom/netease/pharos/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/MainActivity;

.field private final synthetic val$mDomains:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/pharos/MainActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/MainActivity$13;->this$0:Lcom/netease/pharos/MainActivity;

    iput-object p2, p0, Lcom/netease/pharos/MainActivity$13;->val$mDomains:[Ljava/lang/String;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 564
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    const-string v2, "httpdns_test1"

    iget-object v3, p0, Lcom/netease/pharos/MainActivity$13;->val$mDomains:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/download/httpdns2/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    const-string v2, "httpdns_test1"

    invoke-virtual {v1, v2}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    .line 567
    .local v0, "unit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v0, :cond_0

    .line 568
    const-string v1, "wuln"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpdns\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/netease/pharos/MainActivity$13;->this$0:Lcom/netease/pharos/MainActivity;

    new-instance v2, Lcom/netease/pharos/MainActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/pharos/MainActivity$13$1;-><init>(Lcom/netease/pharos/MainActivity$13;Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;)V

    invoke-virtual {v1, v2}, Lcom/netease/pharos/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    return-void

    .line 570
    :cond_0
    const-string v1, "wuln"

    const-string v2, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
