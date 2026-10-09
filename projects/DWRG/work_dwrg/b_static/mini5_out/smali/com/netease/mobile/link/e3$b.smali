.class public final Lcom/netease/mobile/link/e3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/e3;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/e3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/e3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/e3;->c:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mobile/link/e3$c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    .line 3
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/e3;->a(Lcom/netease/mobile/link/e3$c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p1, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    .line 7
    iget-object p1, p1, Lcom/netease/mobile/link/e3;->a:Landroid/view/View;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/netease/mobile/link/e3$b;->a:Lcom/netease/mobile/link/e3;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/netease/mobile/link/e3;->d:Z

    :goto_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
