.class public Lcom/netease/mpay/d/a/a/d;
.super Lcom/netease/mpay/d/a/a/e;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netease/mpay/d/a/a/e$a;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/netease/mpay/d/a/a/e;-><init>(Lcom/netease/mpay/d/a/a/e$a;)V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/d;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/mpay/d/a/a/d;->e:Z

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
.method public a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aM:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->F:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/d;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/d;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/mpay/cq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/a/d;->e:Z

    return v0
.end method
