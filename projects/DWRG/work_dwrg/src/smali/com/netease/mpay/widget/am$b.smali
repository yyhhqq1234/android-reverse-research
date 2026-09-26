.class Lcom/netease/mpay/widget/am$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/am;

.field private b:Lcom/netease/mpay/widget/am$a;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/widget/am$b;->b:Lcom/netease/mpay/widget/am$a;

    iput p3, p0, Lcom/netease/mpay/widget/am$b;->c:I

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

.method static synthetic a(Lcom/netease/mpay/widget/am$b;)Lcom/netease/mpay/widget/am$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->b:Lcom/netease/mpay/widget/am$a;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/am$b;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/am$b;->c:I

    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->b(Lcom/netease/mpay/widget/am;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->b(Lcom/netease/mpay/widget/am;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    new-instance v1, Lcom/netease/mpay/widget/an;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/an;-><init>(Lcom/netease/mpay/widget/am$b;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v0}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->b(Lcom/netease/mpay/widget/am;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/am$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/am$b;->a(Ljava/lang/Void;)V

    return-void
.end method
