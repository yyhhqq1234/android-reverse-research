.class public final Lcom/ironsource/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\n\u0010\u000b\u001a\u00060\tj\u0002`\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\u0008\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/ironsource/ib;",
        "",
        "",
        "a",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "Lcom/ironsource/n3;",
        "Lcom/ironsource/n3;",
        "analytics",
        "",
        "Lcom/unity3d/ironsourceads/internal/load/AdRequestAdId;",
        "adRequestAdId",
        "Lcom/ironsource/to;",
        "adRequestProviderName",
        "<init>",
        "(Lcom/ironsource/n3;Ljava/lang/String;Lcom/ironsource/to;)V",
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
.field private final a:Lcom/ironsource/n3;


# direct methods
.method public constructor <init>(Lcom/ironsource/n3;Ljava/lang/String;Lcom/ironsource/to;)V
    .locals 2

    const-string v0, "analytics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestAdId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestProviderName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ib;->a:Lcom/ironsource/n3;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/k3;

    new-instance v1, Lcom/ironsource/j3$s;

    invoke-interface {p3}, Lcom/ironsource/to;->value()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/ironsource/j3$s;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    aput-object v1, v0, p3

    new-instance p3, Lcom/ironsource/j3$b;

    invoke-direct {p3, p2}, Lcom/ironsource/j3$b;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-interface {p1, v0}, Lcom/ironsource/n3;->a([Lcom/ironsource/k3;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/ironsource/g3$c;->a:Lcom/ironsource/g3$c$a;

    invoke-virtual {v0}, Lcom/ironsource/g3$c$a;->a()Lcom/ironsource/g3;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/ib;->a:Lcom/ironsource/n3;

    invoke-interface {v0, v1}, Lcom/ironsource/g3;->a(Lcom/ironsource/n3;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/g3$c;->a:Lcom/ironsource/g3$c$a;

    new-instance v1, Lcom/ironsource/j3$j;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ironsource/j3$j;-><init>(I)V

    new-instance v2, Lcom/ironsource/j3$k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ironsource/j3$k;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ironsource/j3$f;

    const-wide/16 v3, 0x0

    invoke-direct {p1, v3, v4}, Lcom/ironsource/j3$f;-><init>(J)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/g3$c$a;->a(Lcom/ironsource/j3$j;Lcom/ironsource/j3$k;Lcom/ironsource/j3$f;)Lcom/ironsource/g3;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/ib;->a:Lcom/ironsource/n3;

    invoke-interface {p1, v0}, Lcom/ironsource/g3;->a(Lcom/ironsource/n3;)V

    return-void
.end method
