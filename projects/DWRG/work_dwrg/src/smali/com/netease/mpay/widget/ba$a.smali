.class Lcom/netease/mpay/widget/ba$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:I

.field d:I

.field e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;ILjava/util/List;)V
    .locals 2

    invoke-direct {p0, p1, p2, p6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/netease/mpay/widget/ba$a;->a:Landroid/content/Context;

    iput p2, p0, Lcom/netease/mpay/widget/ba$a;->b:I

    iput p5, p0, Lcom/netease/mpay/widget/ba$a;->c:I

    iput p3, p0, Lcom/netease/mpay/widget/ba$a;->d:I

    iput-object p4, p0, Lcom/netease/mpay/widget/ba$a;->e:Landroid/graphics/drawable/Drawable;

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
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/ba$a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/widget/ba$a;->b:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget v0, p0, Lcom/netease/mpay/widget/ba$a;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/widget/ba$a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    iget v0, p0, Lcom/netease/mpay/widget/ba$a;->c:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/ba$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
