.class Lcom/netease/httpdns/HttpDnsService$8;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->refreshPreDomain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$preDomainList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/List;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$8;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$8;->val$preDomainList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$8;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService$8;->val$preDomainList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netease/httpdns/HttpDnsService;->access$000(Lcom/netease/httpdns/HttpDnsService;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
