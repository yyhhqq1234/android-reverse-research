.class Lcom/netease/mpay/ed$a$a;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ed$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/ed$a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ed$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ed$a$a;->a:Lcom/netease/mpay/ed$a;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

    iput p2, p0, Lcom/netease/mpay/ed$a$a;->b:I

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
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ed$a$a;->a:Lcom/netease/mpay/ed$a;

    iget-object v0, v0, Lcom/netease/mpay/ed$a;->a:Lcom/netease/mpay/ed;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    iget v0, p0, Lcom/netease/mpay/ed$a$a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed$a$a;->a:Lcom/netease/mpay/ed$a;

    iget-object v1, v1, Lcom/netease/mpay/ed$a;->a:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed$a$a;->a:Lcom/netease/mpay/ed$a;

    iget-object v0, v0, Lcom/netease/mpay/ed$a;->a:Lcom/netease/mpay/ed;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ed$a$a;->a:Lcom/netease/mpay/ed$a;

    iget-object v0, v0, Lcom/netease/mpay/ed$a;->a:Lcom/netease/mpay/ed;

    iget v1, p0, Lcom/netease/mpay/ed$a$a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
