.class Lcom/netease/mpay/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/s;

.field final synthetic b:Lcom/netease/mpay/dd;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dd;Lcom/netease/mpay/widget/s;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iput-object p2, p0, Lcom/netease/mpay/df;->a:Lcom/netease/mpay/widget/s;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/df;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, v1, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v2, v2, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/dh;

    invoke-direct {v3, p0}, Lcom/netease/mpay/dh;-><init>(Lcom/netease/mpay/df;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/df;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, v1, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/di;

    invoke-direct {v3, p0}, Lcom/netease/mpay/di;-><init>(Lcom/netease/mpay/df;)V

    iget-object v1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, v1, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/dj;

    invoke-direct {v5, p0}, Lcom/netease/mpay/dj;-><init>(Lcom/netease/mpay/df;)V

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/df;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, v1, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/dk;

    invoke-direct {v2, p0}, Lcom/netease/mpay/dk;-><init>(Lcom/netease/mpay/df;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/l;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/server/response/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->b(Lcom/netease/mpay/dd;)Lcom/netease/mpay/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0, p1}, Lcom/netease/mpay/dd;->a(Lcom/netease/mpay/dd;Lcom/netease/mpay/server/response/l;)Lcom/netease/mpay/server/response/l;

    iget-object v0, p1, Lcom/netease/mpay/server/response/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/netease/mpay/server/response/l;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/server/response/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->c(Lcom/netease/mpay/dd;)V

    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, p1, Lcom/netease/mpay/server/response/l;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/dd;->a(Lcom/netease/mpay/dd;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    iget-object v1, v1, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/dd;->a(Lcom/netease/mpay/dd;Lcom/netease/mpay/widget/av;)Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->d(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/av;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->d(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/dg;

    invoke-direct {v1, p0}, Lcom/netease/mpay/dg;-><init>(Lcom/netease/mpay/df;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/av;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->d(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    iget-object v0, p0, Lcom/netease/mpay/df;->b:Lcom/netease/mpay/dd;

    invoke-static {v0}, Lcom/netease/mpay/dd;->e(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/webview/js/WebViewEx;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/server/response/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/l;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/df;->a(Lcom/netease/mpay/server/response/l;)V

    return-void
.end method
