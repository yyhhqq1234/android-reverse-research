.class public Lcom/netease/mpay/d/a/a/l;
.super Lcom/netease/mpay/d/a/a/q;


# instance fields
.field private c:Lcom/netease/mpay/server/response/w$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/server/response/w$a;Lcom/netease/mpay/d/a/a/q$a;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/d/a/a/q;-><init>(Ljava/lang/String;Lcom/netease/mpay/d/a/a/q$a;)V

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/l;->c:Lcom/netease/mpay/server/response/w$a;

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/l;)Lcom/netease/mpay/server/response/w$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/l;->c:Lcom/netease/mpay/server/response/w$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bR:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bU:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bT:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/l;->c:Lcom/netease/mpay/server/response/w$a;

    iget-object v1, v1, Lcom/netease/mpay/server/response/w$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/mpay/d/a/a/l;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/d/a/a/m;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/m;-><init>(Lcom/netease/mpay/d/a/a/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
