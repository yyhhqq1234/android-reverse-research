.class public Lcom/tencent/tdm/system/TXReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private LastNet:Lcom/tencent/tdm/system/NetworkType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tencent/tdm/system/NetworkType;

    iput-object v0, p0, Lcom/tencent/tdm/system/TXReceiver;->LastNet:Lcom/tencent/tdm/system/NetworkType;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tencent/tdm/system/NetworkType;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TXReceiver;->LastNet:Lcom/tencent/tdm/system/NetworkType;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/tencent/tdm/system/TXReceiver;->LastNet:Lcom/tencent/tdm/system/NetworkType;

    invoke-static {}, Lcom/tencent/tdm/system/TX;->GetInstance()Lcom/tencent/tdm/system/TX;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tdm/system/NetworkType;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tdm/system/TX;->OnNetworkChanged(IZ)V

    :cond_0
    return-void
.end method
