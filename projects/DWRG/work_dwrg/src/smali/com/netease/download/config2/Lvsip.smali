.class public Lcom/netease/download/config2/Lvsip;
.super Ljava/lang/Object;
.source "Lvsip.java"


# static fields
.field private static lvsip:Lcom/netease/download/config2/Lvsip;

.field private static sLvsip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I

.field private mLvsips:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/config2/Lvsip;->lvsip:Lcom/netease/download/config2/Lvsip;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/config2/Lvsip;->index:I

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/netease/download/config2/Lvsip;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netease/download/config2/Lvsip;->lvsip:Lcom/netease/download/config2/Lvsip;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/netease/download/config2/Lvsip;

    invoke-direct {v0}, Lcom/netease/download/config2/Lvsip;-><init>()V

    sput-object v0, Lcom/netease/download/config2/Lvsip;->lvsip:Lcom/netease/download/config2/Lvsip;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/download/config2/Lvsip;->lvsip:Lcom/netease/download/config2/Lvsip;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/config2/Lvsip;->index:I

    .line 91
    iget-object v0, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    .line 95
    :cond_0
    sget-object v0, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    sget-object v0, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    :cond_1
    return-void
.end method

.method public createLvsip()V
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/netease/download/reporter/ReportInfo;->mLvsip:I

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "lvsips":[Ljava/lang/String;
    iget-object v2, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    .line 64
    :goto_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 68
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    sget-object v3, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mLvsipIps:Ljava/util/ArrayList;

    .line 69
    return-void

    .line 61
    :cond_0
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    aget-object v0, v1, v2

    .line 65
    .local v0, "ip":Ljava/lang/String;
    sget-object v4, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getNewIpFromArray()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "ip":Ljava/lang/String;
    iget v1, p0, Lcom/netease/download/config2/Lvsip;->index:I

    sget-object v2, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    sget-object v1, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/download/config2/Lvsip;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ip":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 83
    .restart local v0    # "ip":Ljava/lang/String;
    iget v1, p0, Lcom/netease/download/config2/Lvsip;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/config2/Lvsip;->index:I

    .line 85
    :cond_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Z
    iget v1, p0, Lcom/netease/download/config2/Lvsip;->index:I

    sget-object v2, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public init([Ljava/lang/String;)V
    .locals 1
    .param p1, "lvsips"    # [Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/netease/download/config2/Lvsip;->mLvsips:[Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method

.method public isCteateIp()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/netease/download/config2/Lvsip;->sLvsip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
