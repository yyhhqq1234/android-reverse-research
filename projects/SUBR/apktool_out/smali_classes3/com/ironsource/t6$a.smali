.class public final Lcom/ironsource/t6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/iu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t6;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/ironsource/t6$a",
        "Lcom/ironsource/iu;",
        "Landroid/view/View;",
        "view",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "layoutParams",
        "Lcom/ironsource/t2;",
        "adTools",
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
.field final synthetic a:Lcom/ironsource/t6;


# direct methods
.method public static synthetic $r8$lambda$390crl3ViCH6SkwX6DEhy7QHlik(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/t6$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEdjbSKuaBxoAYflii3vNBZzAn8(Lcom/ironsource/t2;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/t6$a;->a(Lcom/ironsource/t2;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hGPk3iqIULoueXSUc29YxlIQ6tQ(Lcom/ironsource/t2;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/t6$a;->d(Lcom/ironsource/t2;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kR8gu1hqJC1JYMpRtHvwSXAtdoY(Lcom/ironsource/t2;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/t6$a;->c(Lcom/ironsource/t2;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$raKUqEiPWp4FTIFd4IPbxvIAtp8(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/t6$a;->a(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjvpIXOtBS5YU8ksLEltU4woHWA(Lcom/ironsource/t2;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/t6$a;->b(Lcom/ironsource/t2;J)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/t6;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static final a(Lcom/ironsource/t2;J)V
    .locals 1

    const-string v0, "$adTools"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/zt;->a(ZJ)V

    return-void
.end method

.method private static final a(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static final b(Lcom/ironsource/t2;J)V
    .locals 1

    const-string v0, "$adTools"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/zt;->a(ZJ)V

    return-void
.end method

.method private static final c(Lcom/ironsource/t2;J)V
    .locals 1

    const-string v0, "$adTools"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/t2;J)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sk;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final d(Lcom/ironsource/t2;J)V
    .locals 1

    const-string v0, "$adTools"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/zt;->a(J)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/t2;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v1}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/ye;->d()Lcom/ironsource/qe;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/gb;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-object v3, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/ironsource/t6$a$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v1, v2}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/t2;J)V

    invoke-virtual {p3, p1}, Lcom/ironsource/sk;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v3, Lcom/ironsource/t6$a$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, v1, v2}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/t2;J)V

    invoke-virtual {p3, v3}, Lcom/ironsource/sk;->d(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    invoke-virtual {v4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/ironsource/t6$a;->a:Lcom/ironsource/t6;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/ironsource/t6$a$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/ironsource/t6$a$$ExternalSyntheticLambda4;

    invoke-direct {v4, p2, v0, v0}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/ironsource/t6$a$$ExternalSyntheticLambda5;

    invoke-direct {p2, p3, v1, v2}, Lcom/ironsource/t6$a$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/t2;J)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
