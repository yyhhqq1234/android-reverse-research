.class Lcom/netease/mpay/kd$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/kd;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/kd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

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

.method synthetic constructor <init>(Lcom/netease/mpay/kd;Lcom/netease/mpay/ke;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kd$c;-><init>(Lcom/netease/mpay/kd;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->i(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/GridViewNoScroll;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->i(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/GridViewNoScroll;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->j(Lcom/netease/mpay/kd;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netease/mpay/widget/GridViewNoScroll;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    iget-object v2, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    invoke-static {v2}, Lcom/netease/mpay/kd;->j(Lcom/netease/mpay/kd;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;Z)Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/kd$c;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->k(Lcom/netease/mpay/kd;)Lcom/netease/mpay/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/eu;->a()V

    goto :goto_1
.end method
