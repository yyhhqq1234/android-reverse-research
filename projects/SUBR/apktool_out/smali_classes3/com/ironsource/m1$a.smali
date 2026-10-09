.class public Lcom/ironsource/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0094\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/ironsource/m1$a;",
        "Lcom/ironsource/c0;",
        "Lcom/ironsource/y;",
        "instance",
        "",
        "b",
        "a",
        "<init>",
        "(Lcom/ironsource/m1;)V",
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
.field final synthetic a:Lcom/ironsource/m1;


# direct methods
.method public constructor <init>(Lcom/ironsource/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-static {p1}, Lcom/ironsource/m1;->a(Lcom/ironsource/m1;)Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/k0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-static {p1}, Lcom/ironsource/m1;->b(Lcom/ironsource/m1;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/h2;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ironsource/h2;->b()Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/y;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {p1}, Lcom/ironsource/y;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->l()Lcom/ironsource/pu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/pu;->b(Lcom/ironsource/y;)V

    iget-object p1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-static {p1}, Lcom/ironsource/m1;->a(Lcom/ironsource/m1;)Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/k0;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {p1}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/t2;->m()Lcom/ironsource/zg$a;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/m1$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/c1;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/zg$a;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    return-void
.end method
