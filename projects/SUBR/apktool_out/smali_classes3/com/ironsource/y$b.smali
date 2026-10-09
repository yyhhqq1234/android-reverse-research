.class public final Lcom/ironsource/y$b;
.super Lcom/ironsource/cq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y;->a()Lcom/ironsource/y$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/ironsource/y$b",
        "Lcom/ironsource/cq;",
        "",
        "a",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/y;


# direct methods
.method constructor <init>(Lcom/ironsource/y;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-direct {p0}, Lcom/ironsource/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-static {v0}, Lcom/ironsource/y;->a(Lcom/ironsource/y;)Lcom/ironsource/xa;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v3, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Load duration = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", isBidder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-virtual {v5}, Lcom/ironsource/y;->s()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Z)V

    iget-object v2, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-virtual {v2}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object v2

    const/16 v3, 0x401

    invoke-virtual {v2, v0, v1, v3}, Lcom/ironsource/wk;->a(JI)V

    iget-object v2, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-virtual {v2}, Lcom/ironsource/y;->e()Lcom/ironsource/t2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object v2

    const-string v4, "time out"

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/ironsource/wk;->a(JILjava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y$b;->a:Lcom/ironsource/y;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const-string v2, "buildLoadFailedError(errorMessage)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
