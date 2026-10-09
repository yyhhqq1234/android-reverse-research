.class public Lcom/ironsource/unity/androidbridge/RewardedAd;
.super Ljava/lang/Object;
.source "RewardedAd.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "rewardedAdListener"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mActivity:Landroid/app/Activity;

    .line 19
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-direct {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    .line 20
    new-instance p1, Lcom/ironsource/unity/androidbridge/RewardedAd$1;

    invoke-direct {p1, p0, p2}, Lcom/ironsource/unity/androidbridge/RewardedAd$1;-><init>(Lcom/ironsource/unity/androidbridge/RewardedAd;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    return-void
.end method

.method public static isPlacementCapped(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementName"
        }
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isAdReady()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isAdReady()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    return-void
.end method

.method public showAd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementName"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
