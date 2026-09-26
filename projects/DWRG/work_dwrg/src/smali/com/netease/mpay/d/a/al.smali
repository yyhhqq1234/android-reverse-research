.class Lcom/netease/mpay/d/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/netease/mpay/d/a/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/al;->c:Lcom/netease/mpay/d/a/af;

    iput-object p2, p0, Lcom/netease/mpay/d/a/al;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/d/a/al;->b:Landroid/widget/ImageView;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/d/a/al;->c:Lcom/netease/mpay/d/a/af;

    iget-object v1, p0, Lcom/netease/mpay/d/a/al;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/d/a/al;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method
