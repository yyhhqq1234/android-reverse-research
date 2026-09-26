.class public Lcom/netease/download/reporter/ReportUrlController;
.super Ljava/lang/Object;
.source "ReportUrlController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportUrlController"

.field private static sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;


# instance fields
.field private mIndex:I

.field private mReportIP:[Ljava/lang/String;

.field private mReportUrl:Ljava/lang/String;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReportUrlController;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/download/reporter/ReportUrlController;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportUrlController;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    .line 44
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportUrlController;->sReportUrlController:Lcom/netease/download/reporter/ReportUrlController;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public geturls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "result":Z
    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "reportUrl"    # Ljava/lang/String;
    .param p2, "reportIps"    # [Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    .line 52
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReportUrlController;->parse()V

    .line 53
    return-void
.end method

.method public next()Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    iget-object v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    check-cast v0, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;

    .line 89
    .restart local v0    # "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    iget v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/reporter/ReportUrlController;->mIndex:I

    .line 92
    :cond_0
    return-object v0
.end method

.method public parse()V
    .locals 10

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    const/4 v0, 0x0

    .line 59
    .local v0, "domain":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/netease/download/reporter/ReportUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v4, "ReportUrlController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u94fe\u63a5\u57df\u540d= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v4, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 66
    iget-object v5, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportIP:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_2

    .line 72
    :cond_1
    return-void

    .line 66
    :cond_2
    aget-object v1, v5, v4

    .line 67
    .local v1, "ip":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/reporter/ReportUrlController;->mReportUrl:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v7, v8, v1, v9}, Lcom/netease/download/reporter/ReportUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "ipUrl":Ljava/lang/String;
    new-instance v3, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;

    .end local v3    # "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    invoke-direct {v3, p0, v0, v2}, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;-><init>(Lcom/netease/download/reporter/ReportUrlController;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .restart local v3    # "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    iget-object v7, p0, Lcom/netease/download/reporter/ReportUrlController;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
