.class Lcom/netease/httpdns/HttpDnsService$7;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->getDomainInfoList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$rttScoreInfo:Lcom/netease/httpdns/module/DomainInfo;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/module/DomainInfo;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$7;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$7;->val$rttScoreInfo:Lcom/netease/httpdns/module/DomainInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$7;->val$rttScoreInfo:Lcom/netease/httpdns/module/DomainInfo;

    invoke-static {v0}, Lcom/netease/httpdns/cache/DomainCacheManager;->setDomainCache(Lcom/netease/httpdns/module/DomainInfo;)V

    .line 553
    invoke-static {}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->getInstance()Lcom/netease/httpdns/score/socketScore/RttScoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService$7;->val$rttScoreInfo:Lcom/netease/httpdns/module/DomainInfo;

    invoke-virtual {v0, v1}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->sort(Lcom/netease/httpdns/module/DomainInfo;)V

    return-void
.end method
