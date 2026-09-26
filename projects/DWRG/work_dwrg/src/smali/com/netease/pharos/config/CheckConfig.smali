.class public Lcom/netease/pharos/config/CheckConfig;
.super Ljava/lang/Object;
.source "CheckConfig.java"


# instance fields
.field private mExclude_game:Ljava/lang/String;

.field private mInclude_game:Ljava/lang/String;

.field private mInterval:I

.field private mLinktest_protocal:Ljava/lang/String;

.field private mLinktest_region:Ljava/lang/String;

.field private mLinktest_size:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mPingtest_region:Ljava/lang/String;

.field private mTraceThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public getExclude_game()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mExclude_game:Ljava/lang/String;

    return-object v0
.end method

.method public getInclude_game()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mInclude_game:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/netease/pharos/config/CheckConfig;->mInterval:I

    return v0
.end method

.method public getLinktest_protocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_protocal:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktest_region()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_region:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktest_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_size:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getPingtest_region()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mPingtest_region:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceThreshold()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/netease/pharos/config/CheckConfig;->mTraceThreshold:J

    return-wide v0
.end method

.method public setExclude_game(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExclude_game"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mExclude_game:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setInclude_game(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInclude_game"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mInclude_game:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "mInterval"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/netease/pharos/config/CheckConfig;->mInterval:I

    .line 142
    return-void
.end method

.method public setLinktest_protocal(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktest_protocal"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_protocal:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLinktest_region(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktest_region"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_region:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setLinktest_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktest_size"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_size:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocation"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLocation:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetwork"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mNetwork:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPingtest_region(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPingtest_region"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mPingtest_region:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTraceThreshold(J)V
    .locals 0
    .param p1, "mTraceThreshold"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/netease/pharos/config/CheckConfig;->mTraceThreshold:J

    .line 150
    return-void
.end method
