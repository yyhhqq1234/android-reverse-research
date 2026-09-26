.class public Lcom/netease/epay/sdk/pay/ui/d;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DiscountExpandableAdapter.java"


# instance fields
.field a:I

.field private b:Landroid/widget/ExpandableListView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->a:I

    .line 33
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/d;->b:Landroid/widget/ExpandableListView;

    .line 34
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->getGroupList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    if-eqz v0, :cond_1

    .line 37
    iput v1, p0, Lcom/netease/epay/sdk/pay/ui/d;->a:I

    .line 41
    :cond_0
    return-void

    .line 35
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/d;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->b:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v0, :cond_1

    .line 194
    iput p1, p0, Lcom/netease/epay/sdk/pay/ui/d;->a:I

    move v1, v2

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/d;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    .line 195
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 196
    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/d;->notifyDataSetChanged()V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/d;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/d;->a(I)V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 73
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x1

    const v3, -0xc3031

    const v4, -0x333334

    .line 150
    if-nez p4, :cond_0

    .line 151
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_item_redpaper:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 152
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/a;

    invoke-direct {v0, p4}, Lcom/netease/epay/sdk/pay/ui/a;-><init>(Landroid/view/View;)V

    .line 153
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 157
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/RedPaper;

    .line 158
    iget-boolean v7, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->isMark:Z

    .line 159
    if-eqz v7, :cond_1

    const/16 v1, -0x304

    :goto_1
    invoke-virtual {p4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    if-eqz p2, :cond_3

    if-nez v7, :cond_3

    .line 161
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/RedPaper;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/RedPaper;->isMark:Z

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->d:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    :goto_2
    iget-object v8, v2, Lcom/netease/epay/sdk/pay/ui/a;->f:Landroid/view/View;

    if-eqz p3, :cond_4

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v8, v2, Lcom/netease/epay/sdk/pay/ui/a;->f:Landroid/view/View;

    if-eqz v7, :cond_5

    move v1, v3

    :goto_4
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    iget-object v8, v2, Lcom/netease/epay/sdk/pay/ui/a;->e:Landroid/view/View;

    if-eqz v7, :cond_6

    move v1, v3

    :goto_5
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    iget-object v8, v2, Lcom/netease/epay/sdk/pay/ui/a;->g:Landroid/view/View;

    if-eqz v7, :cond_7

    move v1, v3

    :goto_6
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->h:Landroid/view/View;

    if-eqz v7, :cond_8

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->hongbaoAmount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v4, 0x0

    const/16 v8, 0x12

    invoke-virtual {v1, v3, v4, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v8, 0x12

    invoke-virtual {v1, v3, v9, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 178
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/a;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    move v1, v5

    :goto_8
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 180
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->deadline:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/a;->b:Landroid/widget/TextView;

    if-eqz v7, :cond_a

    move v1, v5

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 182
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->c:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, v2, Lcom/netease/epay/sdk/pay/ui/a;->c:Landroid/widget/TextView;

    if-eqz v7, :cond_b

    :goto_a
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 184
    return-object p4

    .line 155
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/a;

    move-object v2, v0

    goto/16 :goto_0

    .line 159
    :cond_1
    const v1, -0xc0c0d

    goto/16 :goto_1

    .line 165
    :cond_2
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->d:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 168
    :cond_3
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/a;->d:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 170
    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_5
    move v1, v4

    .line 171
    goto/16 :goto_4

    :cond_6
    move v1, v4

    .line 172
    goto/16 :goto_5

    :cond_7
    move v1, v4

    .line 173
    goto/16 :goto_6

    :cond_8
    move v3, v4

    .line 174
    goto/16 :goto_7

    :cond_9
    move v1, v6

    .line 179
    goto :goto_8

    :cond_a
    move v1, v6

    .line 181
    goto :goto_9

    :cond_b
    move v5, v6

    .line 183
    goto :goto_a
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->hasChild:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 84
    if-nez p3, :cond_1

    .line 85
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_view_discount_parent:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 86
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/f;

    invoke-direct {v0, p3}, Lcom/netease/epay/sdk/pay/ui/f;-><init>(Landroid/view/View;)V

    .line 87
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    .line 92
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_redpaper:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 93
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    if-nez p1, :cond_3

    move v3, v4

    :goto_2
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_0
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/d$1;

    invoke-direct {v3, p0, p1}, Lcom/netease/epay/sdk/pay/ui/d$1;-><init>(Lcom/netease/epay/sdk/pay/ui/d;I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->g:Landroid/view/View;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v1, :cond_4

    const v1, -0xc3031

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->a:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v1, :cond_5

    move v1, v5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 107
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->c:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v7

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->b:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isNeedExpand:Z

    if-eqz v1, :cond_7

    move v1, v4

    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_collapse:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/d$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/epay/sdk/pay/ui/d$2;-><init>(Lcom/netease/epay/sdk/pay/ui/d;ZI)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->h:Landroid/widget/ImageView;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    if-eqz v1, :cond_9

    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_choose:I

    :goto_8
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    const-string v8, "\uffe5"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 129
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xa

    invoke-direct {v3, v8, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v8, 0x12

    invoke-virtual {v1, v3, v4, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xf

    invoke-direct {v3, v8, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-virtual {v1, v3, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    :goto_9
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, v2, Lcom/netease/epay/sdk/pay/ui/f;->d:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v1, :cond_b

    move v1, v5

    :goto_a
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 136
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->deadline:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 138
    iget-object v0, v2, Lcom/netease/epay/sdk/pay/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_b
    return-object p3

    .line 89
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/f;

    move-object v2, v0

    goto/16 :goto_0

    .line 92
    :cond_2
    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_redpaper_disable:I

    goto/16 :goto_1

    .line 95
    :cond_3
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v8, 0x5

    invoke-static {v3, v8}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    goto/16 :goto_2

    .line 104
    :cond_4
    const v1, -0x333334

    goto/16 :goto_3

    :cond_5
    move v1, v6

    .line 106
    goto/16 :goto_4

    :cond_6
    move v1, v4

    .line 107
    goto/16 :goto_5

    :cond_7
    move v1, v7

    .line 109
    goto/16 :goto_6

    .line 111
    :cond_8
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_expand:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 126
    :cond_9
    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_not_choose:I

    goto/16 :goto_8

    .line 132
    :cond_a
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0xf

    invoke-direct {v3, v8, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v8, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-virtual {v1, v3, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_b
    move v1, v6

    .line 135
    goto :goto_a

    .line 140
    :cond_c
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->f:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v3, :cond_d

    :goto_c
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 142
    iget-object v1, v2, Lcom/netease/epay/sdk/pay/ui/f;->f:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->deadline:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_d
    move v5, v6

    .line 141
    goto :goto_c
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method
