.class Lcom/netease/mpay/sharer/b$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/sharer/b;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/sharer/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/sharer/b$a;->a:Lcom/netease/mpay/sharer/b;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/sharer/b$a;-><init>(Lcom/netease/mpay/sharer/b;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/b$a;->a:Lcom/netease/mpay/sharer/b;

    iget-object v0, v0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/b$a;->a:Lcom/netease/mpay/sharer/b;

    iget-object v0, v0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/sharer/b$a;->a:Lcom/netease/mpay/sharer/b;

    iget-object v0, v0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ah:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/mpay/sharer/b$a$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/sharer/b$a$a;-><init>(Lcom/netease/mpay/sharer/b$a;Lcom/netease/mpay/sharer/c;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/mpay/sharer/b$a$a;->a:Landroid/widget/ImageView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->dp:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/mpay/sharer/b$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/b$a;->a:Lcom/netease/mpay/sharer/b;

    iget-object v0, v0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/sharer/b$b;

    iget-object v2, v1, Lcom/netease/mpay/sharer/b$a$a;->a:Landroid/widget/ImageView;

    iget v3, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/netease/mpay/sharer/b$a$a;->b:Landroid/widget/TextView;

    iget v0, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/sharer/b$a$a;

    move-object v1, v0

    goto :goto_0
.end method
