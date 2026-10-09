.class final Lcom/tencent/a/b/e/a/c$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/e/a/c$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/a/b/e/a/c$6;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/e/a/c$6;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v0, v0, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->d(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/b/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v1, v1, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v1}, Lcom/tencent/a/b/e/a/c;->m(Lcom/tencent/a/b/e/a/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v0, v0, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->g()Lcom/tencent/b/a/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v0, v0, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->i(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->h()Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->g()Lcom/tencent/b/a/a/i$a;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/g;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v2, v2, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {v1, v2}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v2, v2, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v2}, Lcom/tencent/a/b/e/a/c;->m(Lcom/tencent/a/b/e/a/c;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/b/a/a/i$a;->a(Lcom/tencent/a/a/a/g;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$6$1;->a:Lcom/tencent/a/b/e/a/c$6;

    iget-object v0, v0, Lcom/tencent/a/b/e/a/c$6;->a:Lcom/tencent/a/b/e/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
