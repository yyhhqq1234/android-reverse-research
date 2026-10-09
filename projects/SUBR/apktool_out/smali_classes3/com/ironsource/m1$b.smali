.class public final Lcom/ironsource/m1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/vu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/m1;->c()Lcom/ironsource/m1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/ironsource/m1$b",
        "Lcom/ironsource/vu;",
        "Lcom/ironsource/y;",
        "instance",
        "",
        "b",
        "",
        "errorCode",
        "",
        "errorReason",
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
.field final synthetic a:Lcom/ironsource/m1;


# direct methods
.method constructor <init>(Lcom/ironsource/m1;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/m1;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/y;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {v1}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->k()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/j2;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ironsource/q1;

    iget-object v2, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {p1}, Lcom/ironsource/y;->d()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/q1;-><init>(Lcom/ironsource/m1;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-interface {v0, v1}, Lcom/ironsource/j2;->c(Lcom/ironsource/q1;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ironsource/y;)V
    .locals 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-static {v0}, Lcom/ironsource/m1;->c(Lcom/ironsource/m1;)Lcom/ironsource/xa;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-static {v2}, Lcom/ironsource/m1;->a(Lcom/ironsource/m1;)Lcom/ironsource/pb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/ironsource/wk;->a(JZ)V

    iget-object v0, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {v0}, Lcom/ironsource/m1;->k()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/j2;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ironsource/q1;

    iget-object v2, p0, Lcom/ironsource/m1$b;->a:Lcom/ironsource/m1;

    invoke-virtual {p1}, Lcom/ironsource/y;->d()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ironsource/q1;-><init>(Lcom/ironsource/m1;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    invoke-interface {v0, v1}, Lcom/ironsource/j2;->e(Lcom/ironsource/q1;)Lkotlin/Unit;

    :cond_0
    return-void
.end method
