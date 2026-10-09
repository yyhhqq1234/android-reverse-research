.class public final synthetic Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/t2;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/t2;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/t2;

    iput-wide p2, p0, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/t2;

    iget-wide v1, p0, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/t6$a;->$r8$lambda$hGPk3iqIULoueXSUc29YxlIQ6tQ(Lcom/ironsource/t2;J)V

    return-void
.end method
