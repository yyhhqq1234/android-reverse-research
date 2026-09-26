.class public Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;
.super Ljava/lang/Object;
.source "HttpdnsUrlSwitcherCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;,
        Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsUrlSwitcherCore"

.field private static sHttpdnsUrlSwitcherCore:Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;


# instance fields
.field public mHttpdnsUrlUnitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    invoke-direct {v0}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    .line 41
    :cond_0
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->sHttpdnsUrlSwitcherCore:Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "identification"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;>;"
    iget-object v7, p0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 59
    new-instance v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    invoke-direct {v5, v2}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;-><init>(Ljava/util/ArrayList;)V

    .line 60
    .local v5, "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    iget-object v7, p0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v2    # "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v5    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_1
    return-void

    .line 49
    .restart local v2    # "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;

    .line 50
    .local v6, "unit":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;
    iget-object v4, v6, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 51
    .local v4, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;->domain:Ljava/lang/String;

    .line 53
    .local v0, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 54
    new-instance v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v0, v7}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v1, "httpdnsUrlSwitcherCoreUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
