.class public final synthetic Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$onAdClicked(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;

    .line 0
    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onAdClosed(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;

    .line 0
    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onAdDisplayFailed(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onAdInfoChanged(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;

    .line 0
    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
