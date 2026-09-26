.class public abstract Lcom/netease/mpay/b/al;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/al$a;
    }
.end annotation


# instance fields
.field a:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mpay/b/al;->a:I

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

.method public static a(ILandroid/content/Intent;)Lcom/netease/mpay/b/al;
    .locals 1

    const/16 v0, 0x3ea

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ao;-><init>(Landroid/content/Intent;)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3eb

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ed

    if-ne v0, p0, :cond_2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ee

    if-ne v0, p0, :cond_3

    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3ef

    if-ne v0, p0, :cond_4

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f0

    if-ne v0, p0, :cond_5

    new-instance v0, Lcom/netease/mpay/b/at;

    invoke-direct {v0}, Lcom/netease/mpay/b/at;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x3ec

    if-ne v0, p0, :cond_6

    new-instance v0, Lcom/netease/mpay/b/an;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/an;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3f1

    if-ne v0, p0, :cond_7

    new-instance v0, Lcom/netease/mpay/b/ar;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ar;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/ar;->a(Landroid/content/Intent;)Lcom/netease/mpay/b/ar;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/netease/mpay/b/al$a;

    invoke-direct {v0}, Lcom/netease/mpay/b/al$a;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/netease/mpay/b/al;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget v1, p0, Lcom/netease/mpay/b/al;->a:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method abstract a(Landroid/os/Bundle;)V
.end method
