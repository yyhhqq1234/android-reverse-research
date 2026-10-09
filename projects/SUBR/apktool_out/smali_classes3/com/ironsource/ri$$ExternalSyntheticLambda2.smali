.class public final synthetic Lcom/ironsource/ri$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ironsourceads/InitListener;

.field public final synthetic f$1:Lcom/ironsource/hq;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ri$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ironsourceads/InitListener;

    iput-object p2, p0, Lcom/ironsource/ri$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/hq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/ri$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ironsourceads/InitListener;

    iget-object v1, p0, Lcom/ironsource/ri$$ExternalSyntheticLambda2;->f$1:Lcom/ironsource/hq;

    invoke-static {v0, v1}, Lcom/ironsource/ri;->$r8$lambda$vvs4IgdhbN0NDvWGgX7hBw680UE(Lcom/unity3d/ironsourceads/InitListener;Lcom/ironsource/hq;)V

    return-void
.end method
