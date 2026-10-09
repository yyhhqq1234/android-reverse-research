.class public final synthetic Lcom/ironsource/ci$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/ci;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/ci;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ci$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ci;

    iput-object p2, p0, Lcom/ironsource/ci$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/ci$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/ci;

    iget-object v1, p0, Lcom/ironsource/ci$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-static {v0, v1}, Lcom/ironsource/ci;->$r8$lambda$Kh5xJIX4VbS312oeMitV3rRjOLo(Lcom/ironsource/ci;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
