.class Lcom/netease/mpay/kn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/h$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kd;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

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
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, p1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->e(Lcom/netease/mpay/kd;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, p1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/kp;->a:[I

    invoke-virtual {p2}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, v2}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->g(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, v2}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    iget-object v1, v1, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v1}, Lcom/netease/mpay/kd;->f(Lcom/netease/mpay/kd;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ko;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ko;-><init>(Lcom/netease/mpay/kn;)V

    invoke-virtual {v0, p3, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, v2}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->g(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->e(Lcom/netease/mpay/kd;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
