.class public Lcom/netease/mpay/f/bo;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "webPay"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p3, p0, Lcom/netease/mpay/f/bo;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/f/bo;->b:Ljava/lang/String;

    iput p5, p0, Lcom/netease/mpay/f/bo;->j:I

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->g()V

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 5

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/bo;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/bo;->d:Ljava/lang/String;

    const-string v3, "webPay"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/au;

    iget-object v2, p0, Lcom/netease/mpay/f/bo;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bo;->b:Ljava/lang/String;

    iget v4, p0, Lcom/netease/mpay/f/bo;->j:I

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/a/au;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/bo;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
