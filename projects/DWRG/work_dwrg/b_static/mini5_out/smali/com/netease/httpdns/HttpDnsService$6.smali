.class Lcom/netease/httpdns/HttpDnsService$6;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Lcom/netease/httpdns/listener/MultiHttpDnsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->getMultIpsWithAsync(Ljava/util/List;Lcom/netease/httpdns/listener/MultHttpDnsListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$listener:Lcom/netease/httpdns/listener/MultHttpDnsListener;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/listener/MultHttpDnsListener;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$6;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$6;->val$listener:Lcom/netease/httpdns/listener/MultHttpDnsListener;

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

    .line 445
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$6;->val$listener:Lcom/netease/httpdns/listener/MultHttpDnsListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$6;->val$listener:Lcom/netease/httpdns/listener/MultHttpDnsListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/netease/httpdns/listener/MultHttpDnsListener;->onIpsParsed(Ljava/util/List;)V

    :cond_0
    return-void
.end method
