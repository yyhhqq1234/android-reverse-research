.class Lcom/netease/httpdns/HttpDnsService$1;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->init(Landroid/content/Context;Lcom/netease/httpdns/configuration/DnsOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$1;->this$0:Lcom/netease/httpdns/HttpDnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->initServerRequest()V

    return-void
.end method
