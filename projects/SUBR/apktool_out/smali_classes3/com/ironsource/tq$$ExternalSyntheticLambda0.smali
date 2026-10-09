.class public final synthetic Lcom/ironsource/tq$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/ironsource/mq;

.field public final synthetic f$2:Lcom/ironsource/lq;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ironsource/mq;Lcom/ironsource/lq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mq;

    iput-object p3, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/lq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mq;

    iget-object v2, p0, Lcom/ironsource/tq$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/lq;

    invoke-static {v0, v1, v2}, Lcom/ironsource/tq;->$r8$lambda$8CeKuTiu4KSZml6CcbS5D2MATMc(Landroid/content/Context;Lcom/ironsource/mq;Lcom/ironsource/lq;)V

    return-void
.end method
