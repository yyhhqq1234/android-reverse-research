.class Lcom/netease/mpay/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:I

.field final synthetic d:Lcom/netease/mpay/widget/s;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/s;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/w;->d:Lcom/netease/mpay/widget/s;

    iput-object p2, p0, Lcom/netease/mpay/widget/w;->a:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/mpay/widget/w;->b:Landroid/app/AlertDialog;

    iput p4, p0, Lcom/netease/mpay/widget/w;->c:I

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/widget/w;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/netease/mpay/widget/w;->b:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/netease/mpay/widget/w;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/w;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
