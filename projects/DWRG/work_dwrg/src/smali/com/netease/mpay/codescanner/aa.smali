.class Lcom/netease/mpay/codescanner/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/y;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/y;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/aa;->a:Lcom/netease/mpay/codescanner/y;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/aa;->a:Lcom/netease/mpay/codescanner/y;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/aa;->a:Lcom/netease/mpay/codescanner/y;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/y;->b(Lcom/netease/mpay/codescanner/y;)Lcom/netease/mpay/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/x;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/netease/mpay/codescanner/ab;

    invoke-direct {v4, p0}, Lcom/netease/mpay/codescanner/ab;-><init>(Lcom/netease/mpay/codescanner/aa;)V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method
