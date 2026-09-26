.class Lcom/netease/mpay/oc$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/widget/av;

.field b:Lcom/netease/mpay/c/a;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/netease/mpay/oc;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/oc$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oc$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oc$b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oc$b;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/oc$b;->g:Ljava/lang/String;

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
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->b:Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/oc$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/c/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oc$b;->a:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    new-instance v0, Lcom/netease/mpay/sharer/ShareContent;

    invoke-direct {v0}, Lcom/netease/mpay/sharer/ShareContent;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/sharer/ShareContent;->setType(I)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oc$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/ShareContent;->setText(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oc$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/ShareContent;->setTitle(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oc$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/ShareContent;->setDesc(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oc$b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/ShareContent;->setWebUrl(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/sharer/ShareContent;->setThumb(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mpay/sharer/ShareContent;->setImage(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;

    iget-object v1, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v1, v1, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->h:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/ab;

    iget-object v4, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    invoke-static {v4}, Lcom/netease/mpay/oc;->g(Lcom/netease/mpay/oc;)Lcom/netease/mpay/b/ag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/ag;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v5, v5, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;)Z

    move-result v5

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/netease/mpay/b/ab;-><init>(Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/sharer/ShareContent;Ljava/lang/String;)V

    const/16 v0, 0x439

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v6, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$a;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oc$b;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oc$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oc$b;->a:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/oc$b;->a:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    new-instance v0, Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    iget-object v1, v1, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/oc$b;->h:Lcom/netease/mpay/oc;

    invoke-static {v2}, Lcom/netease/mpay/oc;->g(Lcom/netease/mpay/oc;)Lcom/netease/mpay/b/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/ag;->a()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->A:I

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/mpay/oc$b;->b:Lcom/netease/mpay/c/a;

    return-void
.end method
