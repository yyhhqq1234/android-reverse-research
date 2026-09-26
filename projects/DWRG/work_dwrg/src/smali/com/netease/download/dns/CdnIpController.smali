.class public Lcom/netease/download/dns/CdnIpController;
.super Ljava/lang/Object;
.source "CdnIpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;,
        Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CdnIpController"

.field private static sCndIpController:Lcom/netease/download/dns/CdnIpController;


# instance fields
.field public mActualTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;",
            ">;"
        }
    .end annotation
.end field

.field public mOriginalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/dns/CdnIpController;->sCndIpController:Lcom/netease/download/dns/CdnIpController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method private createData(Ljava/util/ArrayList;[I)Ljava/util/HashMap;
    .locals 8
    .param p2, "weights"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;[I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "mOriginalMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;>;"
    const-string v5, "CdnIpController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dnsIpNodeUnitList\u4e2a\u6570="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6743\u91cd\u4e2a\u6570="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, p2

    if-ne v5, v6, :cond_0

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p2

    if-lt v1, v5, :cond_1

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-object v3

    .line 61
    .restart local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/download/dns/DnsParams$Unit;

    .line 63
    .local v4, "unit":Lcom/netease/download/dns/DnsParams$Unit;
    iget-object v5, v4, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    new-instance v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    iget-object v5, v4, Lcom/netease/download/dns/DnsParams$Unit;->domain:Ljava/lang/String;

    aget v6, p2, v1

    invoke-direct {v0, p0, v5, v2, v6}, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;-><init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 65
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v5, v4, Lcom/netease/download/dns/DnsParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getActualTimeWeight()I
    .locals 4

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, "weight":I
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    return v1

    .line 342
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 343
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method private getActualTimeWeightArray()[I
    .locals 6

    .prologue
    .line 363
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 364
    .local v2, "size":I
    new-array v3, v2, [I

    .line 365
    .local v3, "weightArray":[I
    const/4 v1, 0x0

    .line 367
    .local v1, "index":I
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    return-object v3

    .line 367
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 368
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget v5, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    aput v5, v3, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstances()Lcom/netease/download/dns/CdnIpController;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netease/download/dns/CdnIpController;->sCndIpController:Lcom/netease/download/dns/CdnIpController;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/download/dns/CdnIpController;

    invoke-direct {v0}, Lcom/netease/download/dns/CdnIpController;-><init>()V

    sput-object v0, Lcom/netease/download/dns/CdnIpController;->sCndIpController:Lcom/netease/download/dns/CdnIpController;

    .line 45
    :cond_0
    sget-object v0, Lcom/netease/download/dns/CdnIpController;->sCndIpController:Lcom/netease/download/dns/CdnIpController;

    return-object v0
.end method

.method private getOriginalWeight()I
    .locals 4

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "weight":I
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    return v1

    .line 292
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 293
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method private getOriginalWeightArray()[I
    .locals 6

    .prologue
    .line 350
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 351
    .local v2, "size":I
    new-array v3, v2, [I

    .line 352
    .local v3, "weightArray":[I
    const/4 v1, 0x0

    .line 354
    .local v1, "index":I
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 359
    return-object v3

    .line 354
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 355
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget v5, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    aput v5, v3, v1

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private test()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v3, "mOriginalMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    .line 102
    const-string v4, "CdnIpController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "test\u7ed3\u679c="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v3

    .line 78
    :cond_0
    if-nez v1, :cond_1

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "119.36.82.67"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v4, "175.43.124.205"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    const-string v4, "g55-02.gph.netease.com"

    const/16 v5, 0x32

    invoke-direct {v0, p0, v4, v2, v5}, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;-><init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 83
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    const-string v4, "g55-02.gph.netease.com"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x1

    if-ne v4, v1, :cond_2

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "163.177.175.67"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    const-string v4, "g55-03.gph.netease.com"

    const/16 v5, 0x14

    invoke-direct {v0, p0, v4, v2, v5}, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;-><init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 90
    .restart local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    const-string v4, "g55-03.gph.netease.com"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v1, :cond_3

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "112.91.135.70"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v4, "112.91.135.105"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v4, "112.91.135.9"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    const-string v4, "g55-04.gph.netease.com"

    const/16 v5, 0x1e

    invoke-direct {v0, p0, v4, v2, v5}, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;-><init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 99
    .restart local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    const-string v4, "g55-04.gph.netease.com"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 430
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 431
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/dns/CdnIpController;->sCndIpController:Lcom/netease/download/dns/CdnIpController;

    .line 432
    return-void
.end method

.method public getCdnCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, "count":I
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    return v1

    .line 328
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 330
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChannelWeight(Ljava/lang/String;)I
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, "weight":I
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 309
    return v1

    .line 302
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 304
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    iget v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getHost(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    return-object v1

    .line 378
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 379
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWeights(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v1, "weights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    return-object v1

    .line 315
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 317
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasNextIp()Z
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "result":Z
    iget-object v1, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 263
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public hasNextIp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 222
    .local v2, "result":Z
    const-string v4, "CdnIpController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CdnIpController [hasNextIp] \u53c2\u6570 domain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "CdnIpController"

    const-string v5, "CdnIpController [hasNextIp] domain is null"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 249
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 229
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 230
    const-string v4, "CdnIpController"

    const-string v5, "CdnIpController [hasNextIp] mActualTimeMap is null"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_1
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 240
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    if-eqz v0, :cond_1

    .line 241
    iget-object v1, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    .line 242
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    const-string v4, "CdnIpController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "domain="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", list\u5217\u8868="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", list\u5927\u5c0f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 245
    const/4 v2, 0x1

    .end local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    :cond_1
    move v3, v2

    .line 249
    .restart local v3    # "result":I
    goto :goto_0

    .line 232
    .end local v3    # "result":I
    :cond_2
    const-string v4, "CdnIpController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CdnIpController [hasNextIp] mActualTimeMap="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public hasNextUnit(Ljava/lang/String;)Z
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v3, "CdnIpController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hasNextUnit \u9891\u9053="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string v3, "CdnIpController"

    const-string v4, "[hasNextUnit] \u53c2\u6570\u9519\u8bef"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 154
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 148
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v3, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v2, v1

    .line 154
    .restart local v2    # "result":I
    goto :goto_0

    .line 148
    .end local v2    # "result":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 149
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v4, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    const/4 v1, 0x1

    .line 151
    goto :goto_1
.end method

.method public init(Ljava/util/ArrayList;[I)V
    .locals 2
    .param p2, "weights"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/netease/download/dns/CdnIpController;->createData(Ljava/util/ArrayList;[I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/netease/download/dns/CdnIpController;->createData(Ljava/util/ArrayList;[I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public isLastIp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "count":I
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 281
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 282
    const/4 v3, 0x1

    .line 285
    :cond_2
    return v3

    .line 272
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 274
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v5, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    iget-object v2, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    .line 276
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0
.end method

.method public nextIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v5, 0x0

    .line 192
    .local v5, "minLinkCountUnit":Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
    iget-object v6, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 194
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    if-eqz v0, :cond_1

    .line 195
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    .line 197
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;

    iget v6, v6, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    add-int/lit8 v4, v6, 0x1

    .line 200
    .local v4, "min":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 210
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    .end local v4    # "min":I
    :cond_1
    iget v6, v5, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    .line 211
    iget-object v6, v5, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    return-object v6

    .line 200
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    .restart local v4    # "min":I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;

    .line 201
    .local v1, "ipLinkUnit":Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
    iget v2, v1, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    .line 203
    .local v2, "linkCount":I
    if-ge v2, v4, :cond_0

    .line 204
    move-object v5, v1

    .line 205
    move v4, v2

    goto :goto_0
.end method

.method public nextUnit(Ljava/lang/String;)Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .locals 6
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v3, "CdnIpController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nextUnit \u9891\u9053="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "domain":Ljava/lang/String;
    const/4 v2, 0x0

    .line 125
    .local v2, "maxWeight":I
    iget-object v3, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    const-string v4, "CdnIpController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "\u6743\u91cd\u6700\u5927\u7684\u5355\u5143="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    invoke-virtual {v3}, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    return-object v3

    .line 125
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 126
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v4, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    if-le v4, v2, :cond_0

    .line 127
    iget v2, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    .line 128
    iget-object v1, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    const/4 v7, 0x1

    iput v7, v6, Lcom/netease/download/reporter/ReportInfo;->mIpRemoved:I

    .line 161
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v5, v6

    .line 163
    .local v5, "slowIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 164
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v1, v6

    .line 165
    .local v1, "errorIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "errorIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    .line 174
    .local v0, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    if-eqz v0, :cond_1

    .line 175
    iget-object v3, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    .line 177
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 185
    .end local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    :cond_1
    return-void

    .line 161
    .end local v5    # "slowIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 164
    .restart local v5    # "slowIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 178
    .restart local v0    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/CdnIpController$IpLinkUnit;>;"
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;

    .line 179
    .local v4, "removeIpUnit":Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
    iget-object v6, v4, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public removeUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-void
.end method
