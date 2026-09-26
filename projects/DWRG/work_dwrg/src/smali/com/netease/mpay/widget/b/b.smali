.class final Lcom/netease/mpay/widget/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/sharer/UrlShareContent$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/MpayConfig;

.field final synthetic e:Lcom/netease/mpay/sharer/UrlShareContent;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Lcom/netease/mpay/sharer/UrlShareContent;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/widget/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/widget/b/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/widget/b/b;->d:Lcom/netease/mpay/MpayConfig;

    iput-object p5, p0, Lcom/netease/mpay/widget/b/b;->e:Lcom/netease/mpay/sharer/UrlShareContent;

    iput-object p6, p0, Lcom/netease/mpay/widget/b/b;->f:Ljava/lang/String;

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
.method public a(Z)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/b;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/b$a;->h:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ab;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/widget/b/b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/widget/b/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/widget/b/b;->d:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/widget/b/b;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;)Z

    move-result v4

    iget-object v5, p0, Lcom/netease/mpay/widget/b/b;->e:Lcom/netease/mpay/sharer/UrlShareContent;

    iget-object v6, p0, Lcom/netease/mpay/widget/b/b;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/ab;-><init>(Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/sharer/ShareContent;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x439

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/b;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$a;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
