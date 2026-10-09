.class public final synthetic Lcom/ironsource/sk$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/sk;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/sk;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sk$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/sk;

    iput-object p2, p0, Lcom/ironsource/sk$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sk$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/sk;

    iget-object v1, p0, Lcom/ironsource/sk$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lcom/ironsource/sk;->$r8$lambda$GHBaTjdQl8rgY1OtrRix9Wckwk8(Lcom/ironsource/sk;Ljava/lang/Runnable;J)V

    return-void
.end method
