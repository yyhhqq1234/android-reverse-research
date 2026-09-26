.class Lcom/netease/mpay/server/response/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/netease/mpay/server/response/p;


# direct methods
.method constructor <init>(Lcom/netease/mpay/server/response/p;Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iput-object p2, p0, Lcom/netease/mpay/server/response/q;->a:Landroid/graphics/Bitmap;

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
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v0, v0, Lcom/netease/mpay/server/response/p;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v0, v0, Lcom/netease/mpay/server/response/p;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v1, v0, Lcom/netease/mpay/server/response/p;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v0, v0, Lcom/netease/mpay/server/response/p;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v0, v0, Lcom/netease/mpay/server/response/p;->d:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-object v2, v2, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/server/response/q;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/netease/mpay/server/response/q;->b:Lcom/netease/mpay/server/response/p;

    iget-boolean v2, v2, Lcom/netease/mpay/server/response/p;->e:Z

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
