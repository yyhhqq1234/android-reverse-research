.class public final synthetic Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/fi;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Lcom/applovin/impl/fi$b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/fi;Ljava/util/concurrent/Executor;Lcom/applovin/impl/fi$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/fi;

    iput-object p2, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$2:Lcom/applovin/impl/fi$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$0:Lcom/applovin/impl/fi;

    iget-object v1, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/applovin/impl/fi$$ExternalSyntheticLambda2;->f$2:Lcom/applovin/impl/fi$b;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/fi;->$r8$lambda$s32slKYQkx-q23UPgFGTV7cfWNA(Lcom/applovin/impl/fi;Ljava/util/concurrent/Executor;Lcom/applovin/impl/fi$b;)V

    return-void
.end method
