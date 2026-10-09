.class public final synthetic Lcom/ironsource/mk$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mk;

.field public final synthetic f$1:Lcom/ironsource/ok;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mk;Lcom/ironsource/ok;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mk$$ExternalSyntheticLambda6;->f$0:Lcom/ironsource/mk;

    iput-object p2, p0, Lcom/ironsource/mk$$ExternalSyntheticLambda6;->f$1:Lcom/ironsource/ok;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mk$$ExternalSyntheticLambda6;->f$0:Lcom/ironsource/mk;

    iget-object v1, p0, Lcom/ironsource/mk$$ExternalSyntheticLambda6;->f$1:Lcom/ironsource/ok;

    invoke-static {v0, v1}, Lcom/ironsource/mk;->$r8$lambda$3pCAxtPqCGuDlv2-yBC_Izh8cfQ(Lcom/ironsource/mk;Lcom/ironsource/ok;)V

    return-void
.end method
