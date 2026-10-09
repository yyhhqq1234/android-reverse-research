.class public final synthetic Lcom/applovin/impl/dg$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/dg$c;

.field public final synthetic f$1:Lcom/applovin/impl/dg$d;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/dg$c;Lcom/applovin/impl/dg$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/dg$b$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/dg$c;

    iput-object p2, p0, Lcom/applovin/impl/dg$b$$ExternalSyntheticLambda0;->f$1:Lcom/applovin/impl/dg$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/dg$b$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/dg$c;

    iget-object v1, p0, Lcom/applovin/impl/dg$b$$ExternalSyntheticLambda0;->f$1:Lcom/applovin/impl/dg$d;

    invoke-static {v0, v1}, Lcom/applovin/impl/dg$b;->$r8$lambda$xXgpVnRBwDRMl7LoDaxKTcaW1Ac(Lcom/applovin/impl/dg$c;Lcom/applovin/impl/dg$d;)V

    return-void
.end method
