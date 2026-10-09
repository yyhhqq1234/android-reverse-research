.class public final synthetic Lcom/ironsource/fu$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/ironsource/fu;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "_this"    # Lcom/ironsource/fu;

    .line 0
    const-string v0, "lazyError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance p2, Lcom/ironsource/jq;

    invoke-direct {p2, p1}, Lcom/ironsource/jq;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    throw p2
.end method
