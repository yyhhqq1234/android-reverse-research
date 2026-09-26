.class Lcom/netease/mpay/hn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hx;

.field final synthetic b:Lcom/netease/mpay/hl;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hl;Lcom/netease/mpay/hx;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iput-object p2, p0, Lcom/netease/mpay/hn;->a:Lcom/netease/mpay/hx;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/hn;->a:Lcom/netease/mpay/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hn;->a:Lcom/netease/mpay/hx;

    invoke-virtual {v0}, Lcom/netease/mpay/hx;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bP:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/mpay/widget/z;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/mpay/widget/z;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cP:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cQ:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bP:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/netease/mpay/widget/aa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hn;->b:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->o:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
