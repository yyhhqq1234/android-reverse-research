.class public abstract Lcom/netease/mpay/widget/b/q;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

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
.method abstract a()V
.end method

.method a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file:///android_asset/netease_mpay/loading.html"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cb:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/r;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/r;-><init>(Lcom/netease/mpay/widget/b/q;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ch:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/u;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/u;-><init>(Lcom/netease/mpay/widget/b/q;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "*** ERROR_BAD_URL ***"

    invoke-static {v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bU:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/s;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/widget/b/s;-><init>(Lcom/netease/mpay/widget/b/q;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cf:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/t;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/t;-><init>(Lcom/netease/mpay/widget/b/q;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
