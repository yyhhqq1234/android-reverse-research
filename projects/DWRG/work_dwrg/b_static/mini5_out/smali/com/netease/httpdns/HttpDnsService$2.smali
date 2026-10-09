.class Lcom/netease/httpdns/HttpDnsService$2;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Lcom/netease/android/extension/func/NFunc1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->getDomainAvailableCache(Ljava/util/List;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/android/extension/func/NFunc1<",
        "Lcom/netease/httpdns/module/DomainInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$availableCacheMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/Map;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$2;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$2;->val$availableCacheMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/netease/httpdns/module/DomainInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$2;->val$availableCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 260
    check-cast p1, Lcom/netease/httpdns/module/DomainInfo;

    invoke-virtual {p0, p1}, Lcom/netease/httpdns/HttpDnsService$2;->call(Lcom/netease/httpdns/module/DomainInfo;)V

    return-void
.end method
