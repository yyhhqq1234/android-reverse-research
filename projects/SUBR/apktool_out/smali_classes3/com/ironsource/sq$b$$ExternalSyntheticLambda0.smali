.class public final synthetic Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/ironsource/fq;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ironsource/fq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/fq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/fq;

    invoke-static {v0, v1}, Lcom/ironsource/sq$b;->$r8$lambda$8SKmkQbknMUdIQ91S6-uONGZYqs(Landroid/content/Context;Lcom/ironsource/fq;)V

    return-void
.end method
