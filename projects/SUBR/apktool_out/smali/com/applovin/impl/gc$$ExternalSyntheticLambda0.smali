.class public final synthetic Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/applovin/impl/gc$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/impl/gc$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$2:Lcom/applovin/impl/gc$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/applovin/impl/gc$$ExternalSyntheticLambda0;->f$2:Lcom/applovin/impl/gc$a;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/gc;->$r8$lambda$5Jc5G4fsvZcg1ccR5NHNOukhzww(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/impl/gc$a;)V

    return-void
.end method
