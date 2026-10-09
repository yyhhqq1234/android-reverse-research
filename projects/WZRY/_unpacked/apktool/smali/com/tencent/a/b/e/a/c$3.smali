.class final Lcom/tencent/a/b/e/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/e/a/c;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/a/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->i(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->A()Lcom/tencent/a/b/h/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/a/b/h/a/b;->a(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->j(Lcom/tencent/a/b/e/a/c;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->b(Lcom/tencent/a/b/e/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->c(Lcom/tencent/a/b/e/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0, v2}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;Z)Z

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v1}, Lcom/tencent/a/b/e/a/c;->e(Lcom/tencent/a/b/e/a/c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->e(Lcom/tencent/a/b/e/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->d()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0, v2}, Lcom/tencent/a/b/e/a/c;->b(Lcom/tencent/a/b/e/a/c;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->e()Lcom/tencent/b/a/a/i$i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->e()Lcom/tencent/b/a/a/i$i;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/g;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {v1, v2}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/b/a/a/i$i;->b(Lcom/tencent/a/a/a/g;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->b(Lcom/tencent/a/b/e/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->c(Lcom/tencent/a/b/e/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->c()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v1}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/a/b/d/f;->c()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v3}, Lcom/tencent/a/b/e/a/c;->f(Lcom/tencent/a/b/e/a/c;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v2, v0, v3}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;FF)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->e()Lcom/tencent/b/a/a/i$i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->e()Lcom/tencent/b/a/a/i$i;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/g;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$3;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {v1, v2}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/b/a/a/i$i;->a(Lcom/tencent/a/a/a/g;)V

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
