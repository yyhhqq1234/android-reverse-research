.class public final synthetic Lcom/ironsource/sq$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/lq;

.field public final synthetic f$1:Lcom/ironsource/hq;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/lq;Lcom/ironsource/hq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/lq;

    iput-object p2, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/hq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/lq;

    iget-object v1, p0, Lcom/ironsource/sq$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/hq;

    invoke-static {v0, v1}, Lcom/ironsource/sq;->$r8$lambda$WoYillgUpqg3oxR1ReYXjjB4Y8g(Lcom/ironsource/lq;Lcom/ironsource/hq;)V

    return-void
.end method
