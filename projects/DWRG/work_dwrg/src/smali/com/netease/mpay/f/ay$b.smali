.class Lcom/netease/mpay/f/ay$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Lcom/netease/mpay/MpayConfig;

.field d:Ljava/lang/String;

.field e:Lcom/netease/mpay/f/ay$a;

.field f:Lcom/netease/mpay/e/b/o;

.field g:Ljava/lang/Integer;

.field h:Lcom/netease/mpay/widget/s;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/f/ay$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/f/ay$b;->c:Lcom/netease/mpay/MpayConfig;

    iput-object p4, p0, Lcom/netease/mpay/f/ay$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/ay$b;->e:Lcom/netease/mpay/f/ay$a;

    iput-object p6, p0, Lcom/netease/mpay/f/ay$b;->f:Lcom/netease/mpay/e/b/o;

    iput-object p7, p0, Lcom/netease/mpay/f/ay$b;->g:Ljava/lang/Integer;

    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/f/ay$b;->h:Lcom/netease/mpay/widget/s;

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
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/f/ay$b;->h:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/ay$b;->b:Ljava/lang/String;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->aJ:I

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/f/az;

    invoke-direct {v3, p0}, Lcom/netease/mpay/f/az;-><init>(Lcom/netease/mpay/f/ay$b;)V

    iget-object v4, p0, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->cI:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/f/ba;

    invoke-direct {v5, p0}, Lcom/netease/mpay/f/ba;-><init>(Lcom/netease/mpay/f/ay$b;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/x;)V
    .locals 7

    invoke-virtual {p1}, Lcom/netease/mpay/server/response/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/ay$b;->e:Lcom/netease/mpay/f/ay$a;

    invoke-interface {v0}, Lcom/netease/mpay/f/ay$a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/b/m$g;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/f/ay$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/ay$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/ay$b;->c:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/f/ay$b;->f:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v5, Lcom/netease/mpay/b/m$b;->b:Lcom/netease/mpay/b/m$b;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v3, p0, Lcom/netease/mpay/f/ay$b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/x;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ay$b;->a(Lcom/netease/mpay/server/response/x;)V

    return-void
.end method
