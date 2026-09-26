.class Lcom/netease/mpay/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ed;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ed;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/eh;->a:Lcom/netease/mpay/ed;

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

    iget-object v0, p0, Lcom/netease/mpay/eh;->a:Lcom/netease/mpay/ed;

    iget-object v0, v0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cl:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/eh;->a:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->b(Lcom/netease/mpay/ed;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/netease/mpay/ei;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/ei;-><init>(Lcom/netease/mpay/eh;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
