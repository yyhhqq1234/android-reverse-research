.class public Lcom/pay/http/APNetworkManager;
.super Ljava/lang/Object;
.source "APNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pay/http/APNetworkManager$APNetworkManagerHolder;
    }
.end annotation


# static fields
.field public static final HTTP_KEY_DATAREPORT:Ljava/lang/String; = "datareport"

.field public static final HTTP_KEY_INITREPORT:Ljava/lang/String; = "initreport"

.field private static gInstance:Lcom/pay/http/APNetworkManager;


# instance fields
.field private httpReqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/APBaseHttpReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public static cancelRequest(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    iget-object v1, v1, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pay/http/APBaseHttpReq;

    .line 44
    .local v0, "httpReq":Lcom/pay/http/APBaseHttpReq;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/pay/http/APBaseHttpReq;->stopRequest()V

    .line 46
    sget-object v1, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    iget-object v1, v1, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/pay/http/APNetworkManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/pay/http/APNetworkManager$APNetworkManagerHolder;->access$000()Lcom/pay/http/APNetworkManager;

    move-result-object v0

    sput-object v0, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    .line 39
    return-void
.end method


# virtual methods
.method public cancelPreRequest()V
    .locals 7

    .prologue
    .line 53
    sget-object v5, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    iget-object v5, v5, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/pay/http/APBaseHttpReq;>;"
    sget-object v5, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    iget-object v5, v5, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pay/http/APBaseHttpReq;>;"
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pay/http/APBaseHttpReq;

    .line 58
    .local v1, "httpReq":Lcom/pay/http/APBaseHttpReq;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pay/http/APBaseHttpReq;>;"
    .end local v1    # "httpReq":Lcom/pay/http/APBaseHttpReq;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 68
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 69
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pay/http/APBaseHttpReq;

    .line 70
    .restart local v1    # "httpReq":Lcom/pay/http/APBaseHttpReq;
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v1}, Lcom/pay/http/APBaseHttpReq;->stopRequest()V

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    .end local v1    # "httpReq":Lcom/pay/http/APBaseHttpReq;
    :cond_3
    sget-object v5, Lcom/pay/http/APNetworkManager;->gInstance:Lcom/pay/http/APNetworkManager;

    iget-object v5, v5, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 76
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/pay/http/APBaseHttpReq;>;"
    .end local v4    # "size":I
    :cond_4
    return-void
.end method

.method public dataReport(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    .locals 5
    .param p1, "report"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v1, Lcom/pay/network/model/APDataReportReq;

    invoke-direct {v1}, Lcom/pay/network/model/APDataReportReq;-><init>()V

    .line 86
    .local v1, "dataReportReq":Lcom/pay/network/model/APDataReportReq;
    new-instance v0, Lcom/pay/network/model/APDataReportAns;

    invoke-static {}, Lcom/pay/http/APHttpHandle;->getIntanceHandel()Lcom/pay/http/APHttpHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/pay/http/APNetworkManager;->httpReqMap:Ljava/util/HashMap;

    const-string v4, "datareport"

    invoke-direct {v0, v2, p2, v3, v4}, Lcom/pay/network/model/APDataReportAns;-><init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 87
    .local v0, "dataReportAns":Lcom/pay/network/model/APDataReportAns;
    invoke-virtual {v1, v0}, Lcom/pay/network/model/APDataReportReq;->setHttpAns(Lcom/pay/http/IAPHttpAns;)V

    .line 88
    invoke-virtual {v1, p1}, Lcom/pay/network/model/APDataReportReq;->startService(Ljava/lang/String;)V

    goto :goto_0
.end method
