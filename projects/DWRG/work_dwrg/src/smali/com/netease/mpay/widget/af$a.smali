.class public Lcom/netease/mpay/widget/af$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/af$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/netease/mpay/widget/af$a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/af$a;->c:Z

    iput-object p1, p0, Lcom/netease/mpay/widget/af$a;->d:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/mpay/widget/af$a;->e:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/netease/mpay/widget/af$a;->b:I

    iput-object p2, p0, Lcom/netease/mpay/widget/af$a;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/mpay/widget/af$a;->f:Lcom/netease/mpay/widget/af$a$a;

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

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->e:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->f:Lcom/netease/mpay/widget/af$a$a;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/af$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1, p1}, Lcom/netease/mpay/widget/af$a$a;->a(Landroid/view/View;Ljava/lang/Object;I)V

    return-object p2
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/netease/mpay/widget/af$a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/widget/af$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/netease/mpay/widget/af$a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/widget/af$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/af$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/af$a;->b:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/widget/af$a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/af$a;->c:Z

    return-void
.end method
