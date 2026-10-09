.class public final synthetic Lcom/ironsource/u5$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/u5;

.field public final synthetic f$1:Lcom/ironsource/iu;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/u5;Lcom/ironsource/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/u5$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/u5;

    iput-object p2, p0, Lcom/ironsource/u5$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/iu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/u5$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/u5;

    iget-object v1, p0, Lcom/ironsource/u5$$ExternalSyntheticLambda5;->f$1:Lcom/ironsource/iu;

    invoke-static {v0, v1}, Lcom/ironsource/u5;->$r8$lambda$vngypZvP8cHGT5n3G7dibY_xbjE(Lcom/ironsource/u5;Lcom/ironsource/iu;)V

    return-void
.end method
