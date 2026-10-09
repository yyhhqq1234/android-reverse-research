.class Lcom/netease/httpdns/HttpDnsService$3;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$needRequestDomainSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/Set;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$3;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$3;->val$needRequestDomainSet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/httpdns/HttpDnsService$3;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$3;->val$needRequestDomainSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
