.class public Lcom/netease/mpay/widget/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/m$a;
    }
.end annotation


# static fields
.field public static a:Lcom/netease/mpay/widget/al;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/netease/mpay/widget/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/widget/m;->a:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/mpay/widget/m$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/m$a;-><init>(Lcom/netease/mpay/widget/m;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

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

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    const-class v2, Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "0"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->a:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/m$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->b:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/m$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "2"

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->c:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/m$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3"

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->d:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/m$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "4"

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget v2, v2, Lcom/netease/mpay/widget/m$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, v2, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/m$a;->a(Lcom/netease/mpay/widget/be;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/netease/mpay/widget/m;->a:Lcom/netease/mpay/widget/al;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, v2, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v1

    const-string v3, "5"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v1, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/m$a;->a(Lcom/netease/mpay/widget/be;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/m;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/widget/be;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iput-object p1, v0, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/widget/bd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/widget/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    const-string v1, "com.netease.mpay.widget.AlerterWindowService"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/at;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/m;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/l;

    iget-object v1, p0, Lcom/netease/mpay/widget/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/widget/m;->c:Lcom/netease/mpay/widget/m$a;

    iget-object v2, v2, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

    invoke-interface {v2}, Lcom/netease/mpay/widget/be;->a()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/l;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/l;->show()V

    goto :goto_0
.end method
