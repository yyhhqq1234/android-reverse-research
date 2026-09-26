.class Lcom/netease/mpay/f/a/d$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/widget/av;

.field final synthetic b:Lcom/netease/mpay/f/a/d;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/f/a/d;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/a/d$a;-><init>(Lcom/netease/mpay/f/a/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/netease/mpay/f/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    invoke-static {v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/d;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->f:Lcom/netease/mpay/f/a/b;

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/a/d$a;->a([Ljava/lang/Void;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/f/a/a$b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/a/d$a;->a(Lcom/netease/mpay/f/a/a$b;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->g:Lcom/netease/mpay/f/a/d$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/f/a/g;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->g:Lcom/netease/mpay/f/a/d$e;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d$e;->a:Lcom/netease/mpay/f/a/d$f;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    invoke-virtual {v0}, Lcom/netease/mpay/f/a/d;->a()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "file:///android_asset/netease_mpay/loading.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$a;->a:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
