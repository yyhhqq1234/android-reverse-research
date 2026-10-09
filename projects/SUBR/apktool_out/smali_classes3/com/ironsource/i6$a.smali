.class final Lcom/ironsource/i6$a;
.super Lcom/ironsource/m1$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/w5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/i6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0008H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0008H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/ironsource/i6$a;",
        "Lcom/ironsource/m1$a;",
        "Lcom/ironsource/m1;",
        "Lcom/ironsource/w5;",
        "Lcom/ironsource/y;",
        "instance",
        "",
        "b",
        "Lcom/ironsource/u5;",
        "c",
        "a",
        "<init>",
        "(Lcom/ironsource/i6;)V",
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
.field final synthetic b:Lcom/ironsource/i6;


# direct methods
.method public constructor <init>(Lcom/ironsource/i6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-direct {p0, p1}, Lcom/ironsource/m1$a;-><init>(Lcom/ironsource/m1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u5;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-static {p1}, Lcom/ironsource/i6;->a(Lcom/ironsource/i6;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/l6;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/l6;->c()Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/u5;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-static {p1}, Lcom/ironsource/i6;->a(Lcom/ironsource/i6;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/l6;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/l6;->f()Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/ironsource/m1$a;->b(Lcom/ironsource/y;)V

    iget-object p1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

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

.method public c(Lcom/ironsource/u5;)V
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/i6$a;->b:Lcom/ironsource/i6;

    invoke-static {p1}, Lcom/ironsource/i6;->a(Lcom/ironsource/i6;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/l6;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/l6;->d()Lkotlin/Unit;

    :cond_0
    return-void
.end method
