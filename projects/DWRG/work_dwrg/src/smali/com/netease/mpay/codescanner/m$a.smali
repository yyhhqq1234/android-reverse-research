.class Lcom/netease/mpay/codescanner/m$a;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/codescanner/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/m$a;-><init>(Lcom/netease/mpay/codescanner/m;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->g(Lcom/netease/mpay/codescanner/m;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/netease/mpay/codescanner/x;

    invoke-direct {v6, p0}, Lcom/netease/mpay/codescanner/x;-><init>(Lcom/netease/mpay/codescanner/m$a;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0
.end method
