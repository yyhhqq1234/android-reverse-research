.class public final synthetic Lcom/ironsource/fk$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$onAdRewarded(Lcom/ironsource/fk;Lcom/unity3d/mediation/rewarded/LevelPlayReward;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 1
    .param p0, "_this"    # Lcom/ironsource/fk;

    .line 0
    const-string v0, "reward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
