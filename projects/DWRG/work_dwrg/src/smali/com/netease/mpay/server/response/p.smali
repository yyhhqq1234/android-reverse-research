.class Lcom/netease/mpay/server/response/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Z

.field final synthetic f:Lcom/netease/mpay/server/response/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/server/response/n;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/server/response/p;->f:Lcom/netease/mpay/server/response/n;

    iput-object p2, p0, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/server/response/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/response/p;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/server/response/p;->d:Landroid/widget/ImageView;

    iput-boolean p6, p0, Lcom/netease/mpay/server/response/p;->e:Z

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/server/response/p;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/server/response/p;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/e/c/j$a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/server/response/p;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/server/response/q;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/server/response/q;-><init>(Lcom/netease/mpay/server/response/p;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
