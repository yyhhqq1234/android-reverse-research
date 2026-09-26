.class public Lcom/netease/mpay/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b$b;,
        Lcom/netease/mpay/b$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 1

    invoke-static {p1}, Lcom/netease/mpay/b$a;->a(Lcom/netease/mpay/b$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/netease/mpay/b$a;->a(Lcom/netease/mpay/b$a;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 1

    invoke-static {p1, p0, p2, p3}, Lcom/netease/mpay/b$a;->a(Lcom/netease/mpay/b$a;Landroid/app/Activity;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    return-void
.end method
