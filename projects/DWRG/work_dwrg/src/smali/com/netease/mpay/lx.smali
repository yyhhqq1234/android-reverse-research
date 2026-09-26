.class Lcom/netease/mpay/lx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/lq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/lq;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lx;->a:Lcom/netease/mpay/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/lx;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/lx;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->f(Lcom/netease/mpay/lq;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/lx;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->g(Lcom/netease/mpay/lq;)V

    return-void
.end method
