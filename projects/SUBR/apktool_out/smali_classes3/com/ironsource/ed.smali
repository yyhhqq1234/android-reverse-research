.class public final Lcom/ironsource/ed;
.super Lcom/ironsource/m1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ed$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0016\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001f\u0010 J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0008\u0010\t\u001a\u00020\u0010H\u0014R\"\u0010\u0016\u001a\u0010\u0012\u000c\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u00060\u0017R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/ironsource/ed;",
        "Lcom/ironsource/m1;",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "p",
        "",
        "o",
        "m",
        "n",
        "error",
        "a",
        "Lcom/ironsource/xc;",
        "instance",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/ironsource/v1;",
        "displayListener",
        "Lcom/ironsource/b0;",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/gd;",
        "kotlin.jvm.PlatformType",
        "i",
        "Ljava/lang/ref/WeakReference;",
        "listener",
        "Lcom/ironsource/ed$a;",
        "j",
        "Lcom/ironsource/ed$a;",
        "adInstanceListener",
        "Lcom/ironsource/l1;",
        "adTools",
        "Lcom/ironsource/t1;",
        "adUnitData",
        "<init>",
        "(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/gd;)V",
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
.field private final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/ironsource/ed$a;


# direct methods
.method public static synthetic $r8$lambda$OqDr68P4dMtM-nJGqL_LTVFEP3E(Lcom/ironsource/ed;Lcom/ironsource/z;)Lcom/ironsource/y;
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/ed;->a(Lcom/ironsource/ed;Lcom/ironsource/z;)Lcom/ironsource/y;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/gd;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/m1;-><init>(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/h2;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ironsource/ed;->i:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/ironsource/ed$a;

    invoke-direct {p1, p0}, Lcom/ironsource/ed$a;-><init>(Lcom/ironsource/ed;)V

    iput-object p1, p0, Lcom/ironsource/ed;->j:Lcom/ironsource/ed$a;

    return-void
.end method

.method private static final a(Lcom/ironsource/ed;Lcom/ironsource/z;)Lcom/ironsource/y;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/xc;

    new-instance v1, Lcom/ironsource/t2;

    invoke-virtual {p0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object v2

    sget-object v3, Lcom/ironsource/b2$b;->b:Lcom/ironsource/b2$b;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/t2;-><init>(Lcom/ironsource/t2;Lcom/ironsource/b2$b;)V

    iget-object p0, p0, Lcom/ironsource/ed;->j:Lcom/ironsource/ed$a;

    invoke-direct {v0, v1, p1, p0}, Lcom/ironsource/xc;-><init>(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/yc;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/ed;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/ed;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic a(Lcom/ironsource/ed;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/ed;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/ed;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/ed;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;)V

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 5

    invoke-virtual {p0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ironsource/k0;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/m1;->j()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/v1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ironsource/v1;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/xc;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/ironsource/k0;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/m1;->j()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/v1;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/ironsource/v1;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/ed;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/ed;->m()V

    return-void
.end method

.method public static final synthetic c(Lcom/ironsource/ed;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/ed;->n()V

    return-void
.end method

.method public static final synthetic d(Lcom/ironsource/ed;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/ed;->o()V

    return-void
.end method

.method private final m()V
    .locals 3

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->x()Lcom/ironsource/af;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/c1;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/af;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/i8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/k0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v1}, Lcom/ironsource/jl$b;->a()Lcom/ironsource/xe;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/xe;->v()Lcom/ironsource/ie$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/ie$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final o()V
    .locals 3

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->a()Lcom/ironsource/xe;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xe;->a()Lcom/ironsource/af$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/c1;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/af$a;->b(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    :cond_1
    return-void
.end method

.method private final p()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 4

    invoke-super {p0}, Lcom/ironsource/m1;->e()Lcom/ironsource/g1;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/g1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x1fd

    const-string v2, "show called while ad unit is not ready to show"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, " is capped"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->x()Lcom/ironsource/af;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/c1;->c()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/ironsource/af;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "placement "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x20c

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->t()Lcom/ironsource/ie;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ironsource/ie;->a(Ljava/lang/String;)Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adUnitId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/m1;->f()Lcom/ironsource/t1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x212

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method


# virtual methods
.method protected a()Lcom/ironsource/b0;
    .locals 1

    new-instance v0, Lcom/ironsource/ed$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/ed$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/ed;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/ironsource/v1;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/m1;->a(Ljava/lang/ref/WeakReference;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "showAd called"

    invoke-virtual {p0, v1}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/m1;->g()Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/m1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/k0;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/ed;->p()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ironsource/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/ed;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ironsource/zc;

    invoke-direct {v0, p1}, Lcom/ironsource/zc;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0, p2}, Lcom/ironsource/m1;->a(Lcom/ironsource/g0;Lcom/ironsource/v1;)V

    return-void
.end method
