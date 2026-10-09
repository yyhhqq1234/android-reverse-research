.class public final synthetic Lcom/ironsource/bk$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/bk;

.field public final synthetic f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field public final synthetic f$2:Lcom/unity3d/mediation/LevelPlayAdError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/bk;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/bk;

    iput-object p2, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iput-object p3, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$2:Lcom/unity3d/mediation/LevelPlayAdError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/bk;

    iget-object v1, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$1:Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v2, p0, Lcom/ironsource/bk$$ExternalSyntheticLambda4;->f$2:Lcom/unity3d/mediation/LevelPlayAdError;

    invoke-static {v0, v1, v2}, Lcom/ironsource/bk;->$r8$lambda$ispt3S4hHCR__q1Nx9R9E3_AGIk(Lcom/ironsource/bk;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;)V

    return-void
.end method
