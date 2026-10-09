.class public final Lcom/netease/mobile/link/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/e3$c;
    }
.end annotation


# static fields
.field public static final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/netease/mobile/link/e3;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/mobile/link/e3$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Landroid/os/Handler;

.field public f:Landroid/view/animation/AlphaAnimation;

.field public g:Landroid/view/animation/AlphaAnimation;

.field public final h:Lcom/netease/mobile/link/e3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/mobile/link/e3;->i:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/mobile/link/e3;->c:Ljava/util/LinkedList;

    new-instance v0, Lcom/netease/mobile/link/e3$a;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/e3$a;-><init>(Lcom/netease/mobile/link/e3;)V

    iput-object v0, p0, Lcom/netease/mobile/link/e3;->h:Lcom/netease/mobile/link/e3$a;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/netease/mobile/link/R$layout;->mobile_link__toast:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/e3;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/netease/mobile/link/R$id;->netease_mpay_oversea__toast_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__toast_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mobile/link/e3;->b:Landroid/widget/TextView;

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/netease/mobile/link/e3;->f:Landroid/view/animation/AlphaAnimation;

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/netease/mobile/link/e3;->g:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/netease/mobile/link/e3;->g:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Lcom/netease/mobile/link/e3$b;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/e3$b;-><init>(Lcom/netease/mobile/link/e3;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/e3;->e:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/netease/mobile/link/e3$c;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mobile/link/e3;->d:Z

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mobile/link/e3$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/netease/mobile/link/e3$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->b:Landroid/widget/TextView;

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/e3;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->f:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/mobile/link/e3;->f:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/mobile/link/e3;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mobile/link/e3;->h:Lcom/netease/mobile/link/e3$a;

    iget p1, p1, Lcom/netease/mobile/link/e3$c;->e:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
