.class public abstract Lcom/netease/mpay/d/a/a/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a/q$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/netease/mpay/d/a/a/q$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/d/a/a/q$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/q;->b:Lcom/netease/mpay/d/a/a/q$a;

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
.method protected a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aE:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aF:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
.end method
