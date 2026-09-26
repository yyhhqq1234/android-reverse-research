.class Lcom/netease/mpay/d/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/af$a$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/d/a/a/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/n;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/o;->c:Lcom/netease/mpay/d/a/a/n;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/o;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/d/a/a/o;->b:Ljava/lang/String;

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
.method public a(Landroid/view/View;Lcom/netease/mpay/server/response/w$a;I)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/o;->c:Lcom/netease/mpay/d/a/a/n;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/o;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/o;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/response/w$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netease/mpay/d/a/a/n;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/netease/mpay/server/response/w$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/d/a/a/o;->a(Landroid/view/View;Lcom/netease/mpay/server/response/w$a;I)V

    return-void
.end method
