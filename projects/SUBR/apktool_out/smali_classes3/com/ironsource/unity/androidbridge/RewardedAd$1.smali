.class Lcom/ironsource/unity/androidbridge/RewardedAd$1;
.super Ljava/lang/Object;
.source "RewardedAd.java"

# interfaces
.implements Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/RewardedAd;-><init>(Ljava/lang/String;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/RewardedAd;

.field final synthetic val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/RewardedAd;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$rewardedAdListener"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->this$0:Lcom/ironsource/unity/androidbridge/RewardedAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdInfo"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdInfo"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "levelPlayAdError",
            "levelPlayAdInfo"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdDisplayFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdInfo"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdDisplayed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdInfo"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdInfoChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdError"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdLoadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelPlayAdInfo"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdRewarded(Lcom/unity3d/mediation/rewarded/LevelPlayReward;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "levelPlayReward",
            "levelPlayAdInfo"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getAmount()I

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdRewarded(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
