.class public Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardBankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

.field public divider:Landroid/view/View;

.field public dividerFooter:Landroid/view/View;

.field public ivNext:Landroid/widget/ImageView;

.field public txtBankDiscount:Landroid/widget/TextView;

.field public txtBankName:Landroid/widget/TextView;

.field public txtCardAdd:Landroid/widget/TextView;

.field public txtTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
