.class Lcom/netease/mpay/kv$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/kv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/kv;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/kv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kv$a;->a:Lcom/netease/mpay/kv;

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

.method synthetic constructor <init>(Lcom/netease/mpay/kv;Lcom/netease/mpay/kw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kv$a;-><init>(Lcom/netease/mpay/kv;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv$a;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->g(Lcom/netease/mpay/kv;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/e/c/j$a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kv$a;->a:Lcom/netease/mpay/kv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kv$a;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cH:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netease/mpay/kv$a;->a:Lcom/netease/mpay/kv;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/kv$a;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/kv$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
