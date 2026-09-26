.class public Lcom/netease/pharos/httpdns/DnsParams;
.super Ljava/lang/Object;
.source "DnsParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/httpdns/DnsParams$Unit;
    }
.end annotation


# instance fields
.field private mDnsIpNodeUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/httpdns/DnsParams$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/netease/pharos/httpdns/DnsParams$Unit;

    invoke-direct {v0, p1, p2}, Lcom/netease/pharos/httpdns/DnsParams$Unit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    .local v0, "unit":Lcom/netease/pharos/httpdns/DnsParams$Unit;
    iget-object v1, p0, Lcom/netease/pharos/httpdns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public getDnsIpNodeUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/httpdns/DnsParams$Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/pharos/httpdns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    return-object v0
.end method
