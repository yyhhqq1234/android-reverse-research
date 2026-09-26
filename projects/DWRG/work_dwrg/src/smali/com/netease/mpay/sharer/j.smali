.class Lcom/netease/mpay/sharer/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/mpay/sharer/UrlShareContent$a;

.field final synthetic b:Lcom/netease/mpay/sharer/UrlShareContent;


# direct methods
.method constructor <init>(Lcom/netease/mpay/sharer/UrlShareContent;Lcom/netease/mpay/sharer/UrlShareContent$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/sharer/j;->b:Lcom/netease/mpay/sharer/UrlShareContent;

    iput-object p2, p0, Lcom/netease/mpay/sharer/j;->a:Lcom/netease/mpay/sharer/UrlShareContent$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/sharer/j;->b:Lcom/netease/mpay/sharer/UrlShareContent;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/netease/mpay/sharer/j;->b:Lcom/netease/mpay/sharer/UrlShareContent;

    iget-object v3, v3, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/UrlShareContent;->setImage(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;

    iget-object v1, p0, Lcom/netease/mpay/sharer/j;->b:Lcom/netease/mpay/sharer/UrlShareContent;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/netease/mpay/sharer/j;->b:Lcom/netease/mpay/sharer/UrlShareContent;

    iget-object v3, v3, Lcom/netease/mpay/sharer/UrlShareContent;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/sharer/UrlShareContent;->setThumb(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/sharer/j;->a:Lcom/netease/mpay/sharer/UrlShareContent$a;

    invoke-interface {v1, v0}, Lcom/netease/mpay/sharer/UrlShareContent$a;->a(Z)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
