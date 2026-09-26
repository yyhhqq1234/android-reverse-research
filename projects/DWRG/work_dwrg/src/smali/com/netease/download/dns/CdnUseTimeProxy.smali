.class public Lcom/netease/download/dns/CdnUseTimeProxy;
.super Ljava/lang/Object;
.source "CdnUseTimeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    }
.end annotation


# static fields
.field private static sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/download/dns/CdnUseTimeProxy;

    invoke-direct {v0}, Lcom/netease/download/dns/CdnUseTimeProxy;-><init>()V

    sput-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/download/dns/CdnUseTimeProxy;->sCndUseTimeProxy:Lcom/netease/download/dns/CdnUseTimeProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    iget-object v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    check-cast v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    .line 65
    .restart local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    iget v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-lez v1, :cond_0

    .line 66
    iget v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    .line 69
    :cond_0
    iget v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-nez v1, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    .line 71
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/reporter/ReportInfo;->mDlTime:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    return-void
.end method

.method public init([Ljava/lang/String;)V
    .locals 0
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    iget-object v3, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    iget-object v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    check-cast v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    .line 47
    .restart local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    iget v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    .line 56
    :cond_0
    :goto_0
    iget v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    .line 57
    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;

    .end local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    const/4 v3, 0x0

    move-wide v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;-><init>(JIJ)V

    .line 53
    .restart local v0    # "unit":Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
    iget-object v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    goto :goto_0
.end method
