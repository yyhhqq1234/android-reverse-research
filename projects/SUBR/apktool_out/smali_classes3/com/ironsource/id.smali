.class public final Lcom/ironsource/id;
.super Lcom/ironsource/hd;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j2;
.implements Lcom/ironsource/v1;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016R\u0017\u0010\u0016\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/ironsource/id;",
        "Lcom/ironsource/hd;",
        "Lcom/ironsource/j2;",
        "Lcom/ironsource/v1;",
        "Lcom/ironsource/k2;",
        "adUnitLoadStrategyListener",
        "",
        "a",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/ironsource/w1;",
        "adUnitDisplayStrategyListener",
        "Lcom/ironsource/q1;",
        "adUnitCallback",
        "c",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "b",
        "Lcom/ironsource/l1;",
        "Lcom/ironsource/l1;",
        "d",
        "()Lcom/ironsource/l1;",
        "adTools",
        "Lcom/ironsource/hd$a;",
        "Lcom/ironsource/hd$a;",
        "e",
        "()Lcom/ironsource/hd$a;",
        "config",
        "Lcom/ironsource/fd;",
        "Lcom/ironsource/fd;",
        "fullscreenAdUnitFactory",
        "Lcom/ironsource/ed;",
        "f",
        "Lcom/ironsource/ed;",
        "fullscreenAdUnit",
        "<init>",
        "(Lcom/ironsource/l1;Lcom/ironsource/hd$a;Lcom/ironsource/fd;)V",
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
.field private final c:Lcom/ironsource/l1;

.field private final d:Lcom/ironsource/hd$a;

.field private final e:Lcom/ironsource/fd;

.field private f:Lcom/ironsource/ed;


# direct methods
.method public constructor <init>(Lcom/ironsource/l1;Lcom/ironsource/hd$a;Lcom/ironsource/fd;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/hd;-><init>()V

    iput-object p1, p0, Lcom/ironsource/id;->c:Lcom/ironsource/l1;

    iput-object p2, p0, Lcom/ironsource/id;->d:Lcom/ironsource/hd$a;

    iput-object p3, p0, Lcom/ironsource/id;->e:Lcom/ironsource/fd;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/id;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/ironsource/hd;->b()Lcom/ironsource/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ironsource/w1;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/ironsource/w1;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitDisplayStrategyListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ironsource/hd;->a(Lcom/ironsource/w1;)V

    iget-object p2, p0, Lcom/ironsource/id;->f:Lcom/ironsource/ed;

    if-nez p2, :cond_0

    const-string p2, "fullscreenAdUnit"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1, p0}, Lcom/ironsource/ed;->a(Landroid/app/Activity;Lcom/ironsource/v1;)V

    return-void
.end method

.method public a(Lcom/ironsource/k2;)V
    .locals 1

    const-string v0, "adUnitLoadStrategyListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/hd;->b(Lcom/ironsource/k2;)V

    iget-object p1, p0, Lcom/ironsource/id;->e:Lcom/ironsource/fd;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/fd;->a(Z)Lcom/ironsource/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/id;->f:Lcom/ironsource/ed;

    if-nez p1, :cond_0

    const-string p1, "fullscreenAdUnit"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/ironsource/m1;->a(Lcom/ironsource/j2;)V

    return-void
.end method

.method public a(Lcom/ironsource/q1;)V
    .locals 1

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/hd;->c()Lcom/ironsource/k2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/k2;->a(Lcom/ironsource/q1;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ironsource/hd;->b()Lcom/ironsource/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/w1;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ironsource/hd;->c()Lcom/ironsource/k2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/k2;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/ironsource/q1;)V
    .locals 1

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/hd;->c()Lcom/ironsource/k2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/k2;->d(Lcom/ironsource/q1;)V

    :cond_0
    return-void
.end method

.method public final d()Lcom/ironsource/l1;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/id;->c:Lcom/ironsource/l1;

    return-object v0
.end method

.method public final e()Lcom/ironsource/hd$a;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/id;->d:Lcom/ironsource/hd$a;

    return-object v0
.end method

.method public bridge synthetic e(Lcom/ironsource/q1;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/id;->a(Lcom/ironsource/q1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
