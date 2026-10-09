.class public final synthetic Lcom/ironsource/a5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/a5;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

.field public final synthetic f$2:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/a5;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/a5;

    iput-object p2, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iput-object p3, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/a5;

    iget-object v1, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iget-object v2, p0, Lcom/ironsource/a5$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-static {v0, v1, v2}, Lcom/ironsource/a5;->$r8$lambda$A4Ge_OQU0yPLPKcMztEQJ7afybc(Lcom/ironsource/a5;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    return-void
.end method
