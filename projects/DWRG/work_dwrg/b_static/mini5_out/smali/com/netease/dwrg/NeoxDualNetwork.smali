.class public Lcom/netease/dwrg/NeoxDualNetwork;
.super Ljava/lang/Object;
.source "NeoxDualNetwork.java"


# instance fields
.field private mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/dwrg/NeoxDualNetwork;->m_context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/NeoxDualNetwork;)Lcom/netease/qa/dualnetwork/NetworkUtil;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    return-object p0
.end method


# virtual methods
.method public bindSocketToNetwork(II)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/netease/qa/dualnetwork/NetworkUtil;->bindSocketToNetwork(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAvailableNetwork()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/netease/qa/dualnetwork/NetworkUtil;->getAvailableNetwork()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDelayInfo()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/qa/dualnetwork/NetworkUtil;->getDelayInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getNetworkTypeOfSocket(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/netease/qa/dualnetwork/NetworkUtil;->getNetworkTypeOfSocket(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initDualNetwork()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/netease/qa/dualnetwork/NetworkUtil;

    iget-object v1, p0, Lcom/netease/dwrg/NeoxDualNetwork;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/qa/dualnetwork/NetworkUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    .line 29
    :cond_0
    new-instance v0, Lcom/netease/dwrg/NeoxDualNetwork$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/NeoxDualNetwork$1;-><init>(Lcom/netease/dwrg/NeoxDualNetwork;)V

    .line 39
    iget-object v1, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    invoke-virtual {v1, v0}, Lcom/netease/qa/dualnetwork/NetworkUtil;->initDualNetwork(Lcom/netease/qa/dualnetwork/NetworkUtil$NetworkStateChangedCallback;)V

    return-void
.end method

.method public onDualNetworkStateChanged(II)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnDualNetworkStateChanged(II)V

    :cond_0
    return-void
.end method

.method public pingServer(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/netease/qa/dualnetwork/NetworkUtil;

    iget-object v1, p0, Lcom/netease/dwrg/NeoxDualNetwork;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/qa/dualnetwork/NetworkUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/NeoxDualNetwork;->mNtw:Lcom/netease/qa/dualnetwork/NetworkUtil;

    invoke-virtual {v0, p1}, Lcom/netease/qa/dualnetwork/NetworkUtil;->pingServer(Ljava/lang/String;)V

    return-void
.end method
