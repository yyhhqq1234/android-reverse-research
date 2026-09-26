.class public Lcom/netease/mpay/widget/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/b/m$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;

.field private c:Lcom/netease/mpay/widget/s;

.field private d:Lcom/netease/mpay/widget/b/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/mpay/widget/b/m$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/widget/b/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/widget/b/m;->d:Lcom/netease/mpay/widget/b/m$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/m;->c:Lcom/netease/mpay/widget/s;

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

.method static synthetic a(Lcom/netease/mpay/widget/b/m;)Lcom/netease/mpay/widget/b/m$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->d:Lcom/netease/mpay/widget/b/m$a;

    return-object v0
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/widget/aq;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->c:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ca:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->Y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->d:Lcom/netease/mpay/widget/b/m$a;

    invoke-interface {v0}, Lcom/netease/mpay/widget/b/m$a;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/widget/aq;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->c:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->m:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/n;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/widget/b/n;-><init>(Lcom/netease/mpay/widget/b/m;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/mpay/widget/b/m;->b:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->h:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/widget/b/o;

    invoke-direct {v5, p0}, Lcom/netease/mpay/widget/b/o;-><init>(Lcom/netease/mpay/widget/b/m;)V

    const/4 v6, 0x1

    new-instance v7, Lcom/netease/mpay/widget/b/p;

    invoke-direct {v7, p0}, Lcom/netease/mpay/widget/b/p;-><init>(Lcom/netease/mpay/widget/b/m;)V

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLcom/netease/mpay/widget/s$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/m;->d:Lcom/netease/mpay/widget/b/m$a;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/b/m$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
