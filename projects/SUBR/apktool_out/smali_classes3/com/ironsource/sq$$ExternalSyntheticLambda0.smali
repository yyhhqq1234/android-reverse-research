.class public final synthetic Lcom/ironsource/sq$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lq;

.field public final synthetic f$1:Lcom/ironsource/fq;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lq;Lcom/ironsource/fq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/lq;

    iput-object p2, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/fq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/lq;

    iget-object v1, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/fq;

    invoke-static {v0, v1}, Lcom/ironsource/sq;->$r8$lambda$oQWRp0s08jksZXXBPmccP1zZuiM(Lcom/ironsource/lq;Lcom/ironsource/fq;)V

    return-void
.end method
