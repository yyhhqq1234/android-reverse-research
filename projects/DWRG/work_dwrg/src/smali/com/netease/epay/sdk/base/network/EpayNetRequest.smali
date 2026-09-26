.class public Lcom/netease/epay/sdk/base/network/EpayNetRequest;
.super Ljava/lang/Object;
.source "EpayNetRequest.java"


# instance fields
.field public isHome:Z

.field public preParamsRequestInit:Lcom/netease/epay/sdk/base/network/IParamsCallback;

.field public reqParams:Lorg/json/JSONObject;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/IParamsCallback;)V
    .locals 0
    .param p1, "_url"    # Ljava/lang/String;
    .param p2, "_isHome"    # Z
    .param p3, "_reqParams"    # Lorg/json/JSONObject;
    .param p4, "_preParamsRequestInit"    # Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->url:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->isHome:Z

    .line 14
    iput-object p3, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->reqParams:Lorg/json/JSONObject;

    .line 15
    iput-object p4, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->preParamsRequestInit:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->url:Ljava/lang/String;

    return-object v0
.end method
