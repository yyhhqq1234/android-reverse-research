.class Lcom/netease/mpay/ah$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ah$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/ah;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ah;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/ah$a;->b:Ljava/util/ArrayList;

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
.method public a(I)Lcom/netease/mpay/ah$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/ah$b;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ah$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/ah$a;->a(I)Lcom/netease/mpay/ah$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    iget-object v0, v0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->C:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/ah$a;->a(I)Lcom/netease/mpay/ah$b;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    iget-object v0, v0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v2}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget v2, v1, Lcom/netease/mpay/ah$b;->a:I

    invoke-virtual {v0, v2}, Lcom/netease/mpay/server/response/u;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aA:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    iget-object v3, v3, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v4}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/netease/mpay/server/response/s;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance v3, Lcom/netease/mpay/ah$a$a;

    invoke-direct {v3, p0, v1}, Lcom/netease/mpay/ah$a$a;-><init>(Lcom/netease/mpay/ah$a;Lcom/netease/mpay/ah$b;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aC:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    iget-object v1, v1, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/server/response/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
