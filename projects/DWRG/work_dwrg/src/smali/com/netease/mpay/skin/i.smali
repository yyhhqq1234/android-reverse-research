.class public Lcom/netease/mpay/skin/i;
.super Lcom/netease/mpay/skin/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/skin/d;-><init>()V

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
.method public a(Landroid/view/View;)V
    .locals 2

    const-string v0, "color"

    iget-object v1, p0, Lcom/netease/mpay/skin/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mpay/skin/SkinManager;->getInstance()Lcom/netease/mpay/skin/SkinManager;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/skin/i;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/skin/SkinManager;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/skin/i;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/mpay/skin/i;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lcom/netease/mpay/skin/h;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColorHint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/netease/mpay/skin/h;->b(Landroid/view/View;I)V

    goto :goto_0
.end method
