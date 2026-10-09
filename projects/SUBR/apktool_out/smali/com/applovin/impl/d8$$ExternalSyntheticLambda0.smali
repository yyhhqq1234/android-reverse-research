.class public final synthetic Lcom/applovin/impl/d8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/d8;

.field public final synthetic f$1:Lcom/applovin/impl/rh;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/d8;Lcom/applovin/impl/rh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/d8$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/d8;

    iput-object p2, p0, Lcom/applovin/impl/d8$$ExternalSyntheticLambda0;->f$1:Lcom/applovin/impl/rh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/d8$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/d8;

    iget-object v1, p0, Lcom/applovin/impl/d8$$ExternalSyntheticLambda0;->f$1:Lcom/applovin/impl/rh;

    invoke-static {v0, v1}, Lcom/applovin/impl/d8;->$r8$lambda$-s0-tt7fCtjq5mjFdaRjynHJy4Q(Lcom/applovin/impl/d8;Lcom/applovin/impl/rh;)V

    return-void
.end method
