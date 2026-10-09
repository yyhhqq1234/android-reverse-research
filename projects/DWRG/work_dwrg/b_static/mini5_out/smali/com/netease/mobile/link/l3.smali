.class public abstract Lcom/netease/mobile/link/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Lcom/netease/mobile/link/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mobile/link/k0<",
            "Lcom/netease/mobile/link/b0;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public final d:Lcom/netease/mobile/link/k3;

.field public e:Z

.field public final f:Landroid/view/View;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/netease/mobile/link/l3;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, v12, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    const-string v0, ""

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->b(Ljava/lang/String;)Lcom/netease/mobile/link/r0$a;

    move-result-object v14

    iget-object v0, v14, Lcom/netease/mobile/link/r0$a;->a:Ljava/lang/String;

    iput-object v0, v12, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/netease/mobile/link/l3;->e:Z

    sget v1, Lcom/netease/mobile/link/R$id;->mobile_link__zone_view_placeholder:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v12, Lcom/netease/mobile/link/l3;->f:Landroid/view/View;

    sget v2, Lcom/netease/mobile/link/R$id;->mobile_link__show_area_zone_view:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/netease/mobile/link/l3;->g:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/mobile/link/l3;->a()Ljava/util/ArrayList;

    move-result-object v3

    sget v4, Lcom/netease/mobile/link/R$id;->mobile_link__mobile_international_area_zone:I

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v12, Lcom/netease/mobile/link/l3;->h:Landroid/view/View;

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v12, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "86"

    iput-object v0, v12, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__mobile_area_zone:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    iget-object v0, v12, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__mobile_area_zone_selector:I

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v9, Lcom/netease/mobile/link/g3;

    sget v4, Lcom/netease/mobile/link/R$layout;->mobile_link__popup_country_zone_list:I

    sget v5, Lcom/netease/mobile/link/R$id;->mobile_link__mobile_zone_list:I

    sget v6, Lcom/netease/mobile/link/R$layout;->mobile_link__popup_country_zone_list_item:I

    sget v7, Lcom/netease/mobile/link/R$dimen;->mobile_link__popup_country_zone_list_item_height:I

    sget v8, Lcom/netease/mobile/link/R$dimen;->mobile_link__border_1_5:I

    sget v16, Lcom/netease/mobile/link/R$dimen;->mobile_link__country_zone_list_item_width:I

    sget v17, Lcom/netease/mobile/link/R$dimen;->mobile_link__space_0:I

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v16

    move-object/from16 p1, v14

    move-object v14, v9

    move-object/from16 v9, p2

    move-object v13, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v11}, Lcom/netease/mobile/link/g3;-><init>(Lcom/netease/mobile/link/l3;Ljava/util/ArrayList;IIIIIILandroid/view/View;ILandroid/widget/TextView;)V

    iput-object v14, v12, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    new-instance v0, Lcom/netease/mobile/link/h3;

    invoke-direct {v0, v12}, Lcom/netease/mobile/link/h3;-><init>(Lcom/netease/mobile/link/l3;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mobile/link/i3;

    invoke-direct {v0, v13}, Lcom/netease/mobile/link/i3;-><init>(Landroid/view/View;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 p1, v14

    invoke-virtual {v15, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v0, Lcom/netease/mobile/link/k3;

    sget v1, Lcom/netease/mobile/link/R$id;->mobile_link__phone:I

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget v3, Lcom/netease/mobile/link/R$id;->mobile_link__delete:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/j3;

    invoke-direct {v3, v12}, Lcom/netease/mobile/link/j3;-><init>(Lcom/netease/mobile/link/l3;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mobile/link/k3;-><init>(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, v12, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/mobile/link/l3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/l;->a(Ljava/lang/String;)V

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/netease/mobile/link/r0$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/netease/mobile/link/r0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/l;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/b0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/netease/mobile/link/l3;->e:Z

    if-nez p1, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object p1, v0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    iget-object v0, p0, Lcom/netease/mobile/link/l3;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mobile/link/l3$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/l3$a;-><init>(Lcom/netease/mobile/link/l3;)V

    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/k0;->a(Landroid/app/Activity;Lcom/netease/mobile/link/k0$e;)V

    goto :goto_2

    .line 3
    :cond_3
    iget-object p1, v0, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    .line 5
    iget-object v0, p1, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/netease/mobile/link/k0;->a:Landroid/widget/PopupWindow;

    .line 6
    :cond_5
    iget-boolean p1, p0, Lcom/netease/mobile/link/l3;->e:Z

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/netease/mobile/link/l3;->d()V

    :cond_7
    :goto_2
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/l3;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/netease/mobile/link/l3;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/netease/mobile/link/l3;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/netease/mobile/link/l3;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mobile/link/r0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()V
.end method
