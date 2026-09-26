.class Lcom/netease/mpay/ed$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/ed;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/ed;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

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

.method synthetic constructor <init>(Lcom/netease/mpay/ed;Lcom/netease/mpay/ee;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ed$c;-><init>(Lcom/netease/mpay/ed;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->g(Lcom/netease/mpay/ed;)Lcom/netease/mpay/widget/GridViewNoScroll;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->g(Lcom/netease/mpay/ed;)Lcom/netease/mpay/widget/GridViewNoScroll;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->h(Lcom/netease/mpay/ed;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netease/mpay/widget/GridViewNoScroll;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    iget-object v2, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    invoke-static {v2}, Lcom/netease/mpay/ed;->h(Lcom/netease/mpay/ed;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->b(Lcom/netease/mpay/ed;Z)Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ed$c;->a:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->i(Lcom/netease/mpay/ed;)Lcom/netease/mpay/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/eu;->a()V

    goto :goto_1
.end method
