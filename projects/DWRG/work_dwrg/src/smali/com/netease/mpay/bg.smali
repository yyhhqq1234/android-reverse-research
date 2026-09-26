.class Lcom/netease/mpay/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/view/ScrollableView$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/bc;

.field private b:Z

.field private c:F


# direct methods
.method constructor <init>(Lcom/netease/mpay/bc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/bg;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/bg;->c:F

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    iget-object v0, v0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    iget-object v0, v0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    iget-object v0, v0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v0}, Lcom/netease/mpay/bc$b;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    iget-object v1, v1, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/bg;->b:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/mpay/bg;->c:F

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/netease/mpay/bg;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/mpay/bg;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    invoke-static {v1}, Lcom/netease/mpay/bc;->a(Lcom/netease/mpay/bc;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/bg;->a:Lcom/netease/mpay/bc;

    iget v1, p0, Lcom/netease/mpay/bg;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/bc;->a(Lcom/netease/mpay/bc;I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/bg;->b:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
