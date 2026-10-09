.class public final Lcom/netease/mobile/link/b3;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/b3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Landroid/view/LayoutInflater;

.field public final d:Lcom/netease/mobile/link/b3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mobile/link/b3$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/netease/mobile/link/b3$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I",
            "Lcom/netease/mobile/link/b3$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/netease/mobile/link/b3;->c:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/netease/mobile/link/b3;->b:I

    iput-object p2, p0, Lcom/netease/mobile/link/b3;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/mobile/link/b3;->d:Lcom/netease/mobile/link/b3$a;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/b3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mobile/link/b3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/netease/mobile/link/b3;->b:I

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/mobile/link/b3;->c:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/netease/mobile/link/b3;->d:Lcom/netease/mobile/link/b3$a;

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/b3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p3, Lcom/netease/mobile/link/k0$d;

    .line 4
    iget-object p3, p3, Lcom/netease/mobile/link/k0$d;->a:Lcom/netease/mobile/link/k0;

    check-cast p3, Lcom/netease/mobile/link/g3;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    check-cast p1, Lcom/netease/mobile/link/b0;

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__phone_zone_country:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mobile/link/b0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__phone_zone_number:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mobile/link/b0;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/mobile/link/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mobile/link/f3;

    invoke-direct {v0, p3, p1}, Lcom/netease/mobile/link/f3;-><init>(Lcom/netease/mobile/link/g3;Lcom/netease/mobile/link/b0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
