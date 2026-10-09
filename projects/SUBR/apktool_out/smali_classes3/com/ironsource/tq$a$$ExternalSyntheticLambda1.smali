.class public final synthetic Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/fq;

.field public final synthetic f$1:Lcom/ironsource/lq;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/fq;Lcom/ironsource/lq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/fq;

    iput-object p2, p0, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/lq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/fq;

    iget-object v1, p0, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/lq;

    invoke-static {v0, v1}, Lcom/ironsource/tq$a;->$r8$lambda$I8JSoISqUAAKNx7NPV5WKe2Rfl4(Lcom/ironsource/fq;Lcom/ironsource/lq;)V

    return-void
.end method
