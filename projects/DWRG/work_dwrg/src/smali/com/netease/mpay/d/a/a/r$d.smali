.class public Lcom/netease/mpay/d/a/a/r$d;
.super Lcom/netease/mpay/d/a/a/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field b:Z

.field c:Z

.field final synthetic d:Lcom/netease/mpay/d/a/a/r;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/d/a/a/r;ZZ)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/r$d;->d:Lcom/netease/mpay/d/a/a/r;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/d/a/a/r$a;-><init>(Lcom/netease/mpay/d/a/a/r;Lcom/netease/mpay/d/a/a/s;)V

    iput-boolean p2, p0, Lcom/netease/mpay/d/a/a/r$d;->b:Z

    iput-boolean p3, p0, Lcom/netease/mpay/d/a/a/r$d;->c:Z

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
.method public a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/a/r$d;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aN:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aM:I

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    new-instance v1, Lcom/netease/mpay/d/a/a/y;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/y;-><init>(Lcom/netease/mpay/d/a/a/r$d;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->F:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aa:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->i:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/netease/mpay/d/a/a/r$d;->b:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/d/a/a/z;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/z;-><init>(Lcom/netease/mpay/d/a/a/r$d;)V

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dP:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->j:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    return-void
.end method
