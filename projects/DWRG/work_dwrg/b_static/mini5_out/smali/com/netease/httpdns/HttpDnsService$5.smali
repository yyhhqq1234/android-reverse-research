.class Lcom/netease/httpdns/HttpDnsService$5;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Lcom/netease/httpdns/listener/MultiHttpDnsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->getDomainServerIpList(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIpsParsed(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;)V"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 398
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$domain:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/httpdns/module/DomainInfo;

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/netease/httpdns/module/DomainInfo;->getAvailableIps()Ljava/util/List;

    move-result-object v0

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    if-eqz p1, :cond_2

    .line 406
    invoke-static {v0}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/httpdns/listener/SingleHttpDnsListener;->onIpsParsed(Ljava/util/List;)V

    .line 408
    iget-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    invoke-interface {p1, v0}, Lcom/netease/httpdns/listener/SingleHttpDnsListener;->onIpParsed(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    invoke-interface {p1, v0}, Lcom/netease/httpdns/listener/SingleHttpDnsListener;->onIpsParsed(Ljava/util/List;)V

    .line 411
    iget-object p1, p0, Lcom/netease/httpdns/HttpDnsService$5;->val$listener:Lcom/netease/httpdns/listener/SingleHttpDnsListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netease/httpdns/listener/SingleHttpDnsListener;->onIpParsed(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
