.class final Lcom/ironsource/ed$a;
.super Lcom/ironsource/m1$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/yc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ironsource/ed$a;",
        "Lcom/ironsource/m1$a;",
        "Lcom/ironsource/m1;",
        "Lcom/ironsource/yc;",
        "Lcom/ironsource/xc;",
        "fullscreenInstance",
        "",
        "a",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "b",
        "Lcom/unity3d/mediation/rewarded/LevelPlayReward;",
        "reward",
        "<init>",
        "(Lcom/ironsource/ed;)V",
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
.field final synthetic b:Lcom/ironsource/ed;


# direct methods
.method public constructor <init>(Lcom/ironsource/ed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-direct {p0, p1}, Lcom/ironsource/m1$a;-><init>(Lcom/ironsource/m1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/xc;)V
    .locals 2

    const-string v0, "fullscreenInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {v0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/k0;->l(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {p1}, Lcom/ironsource/ed;->d(Lcom/ironsource/ed;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {p1}, Lcom/ironsource/ed;->c(Lcom/ironsource/ed;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {p1}, Lcom/ironsource/ed;->b(Lcom/ironsource/ed;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/m1;->j()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/v1;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/v1;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ironsource/xc;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const-string v0, "fullscreenInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {v0, p2, p1}, Lcom/ironsource/ed;->a(Lcom/ironsource/ed;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;)V

    return-void
.end method

.method public a(Lcom/ironsource/xc;Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V
    .locals 2

    const-string v0, "fullscreenInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reward"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {p1}, Lcom/ironsource/ed;->a(Lcom/ironsource/ed;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/gd;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ironsource/gd;->a(Lcom/unity3d/mediation/rewarded/LevelPlayReward;)Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/xc;)V
    .locals 2

    const-string v0, "fullscreenInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {p1}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-virtual {v0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/k0;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/ed$a;->b:Lcom/ironsource/ed;

    invoke-static {p1}, Lcom/ironsource/ed;->a(Lcom/ironsource/ed;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/gd;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/gd;->onClosed()Lkotlin/Unit;

    :cond_0
    return-void
.end method
