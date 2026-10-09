.class public final synthetic Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsTokenListener;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    return-void
.end method


# virtual methods
.method public final onUnityAdsTokenReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-static {v0, p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->$r8$lambda$c36uLmAXBbo-RR0QpN0rejk4rAw(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Ljava/lang/String;)V

    return-void
.end method
