.class Lcom/netease/mpay/nh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/af$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

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
    .locals 2

    sget-object v0, Lcom/netease/mpay/nl;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->c(Lcom/netease/mpay/nc;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/netease/mpay/server/response/ah;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

    invoke-static {v0, p2}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

    iget-object v1, p1, Lcom/netease/mpay/server/response/ah;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nh;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->e(Lcom/netease/mpay/nc;)V

    :cond_0
    return-void
.end method
