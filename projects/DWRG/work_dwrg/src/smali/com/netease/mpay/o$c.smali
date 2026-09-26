.class Lcom/netease/mpay/o$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/view/View$OnClickListener;

.field final synthetic d:Lcom/netease/mpay/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/o;Lcom/netease/mpay/o$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/s;->a:[I

    invoke-virtual {p2}, Lcom/netease/mpay/o$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->k:I

    iput v0, p0, Lcom/netease/mpay/o$c;->a:I

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->b:I

    iput v0, p0, Lcom/netease/mpay/o$c;->b:I

    new-instance v0, Lcom/netease/mpay/v;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/v;-><init>(Lcom/netease/mpay/o$c;Lcom/netease/mpay/o;)V

    iput-object v0, p0, Lcom/netease/mpay/o$c;->c:Landroid/view/View$OnClickListener;

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->l:I

    iput v0, p0, Lcom/netease/mpay/o$c;->a:I

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->c:I

    iput v0, p0, Lcom/netease/mpay/o$c;->b:I

    new-instance v0, Lcom/netease/mpay/t;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/t;-><init>(Lcom/netease/mpay/o$c;Lcom/netease/mpay/o;)V

    iput-object v0, p0, Lcom/netease/mpay/o$c;->c:Landroid/view/View$OnClickListener;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/server/a/ax;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/server/a/ax;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v2, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v2, v2, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v3}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v4}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/netease/mpay/server/d;->b(Lcom/netease/mpay/server/a/ax;)Lcom/netease/mpay/server/response/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bU:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
