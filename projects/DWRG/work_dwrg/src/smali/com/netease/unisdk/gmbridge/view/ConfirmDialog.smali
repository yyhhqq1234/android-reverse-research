.class public Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;
.super Lcom/netease/unisdk/gmbridge/view/BaseDialog;
.source "ConfirmDialog.java"


# static fields
.field private static final RES_ID_CANCEL:Ljava/lang/String; = "cancel"

.field private static final RES_ID_SURE:Ljava/lang/String; = "sure"


# instance fields
.field private mPressTextColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mTextColor:I

    .line 22
    const-string v0, "#80ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mPressTextColor:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    .prologue
    .line 16
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mPressTextColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    .prologue
    .line 16
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mTextColor:I

    return v0
.end method

.method private setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "btnName"    # Ljava/lang/String;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_tv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;

    invoke-direct {v1, p0, v0, p3}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$3;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getDialogHeight()I
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_f_confirm_dialog_height"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getDialogWidth()I
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v2, "uni_gm_f_confirm_dialog_width"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->mContext:Landroid/content/Context;

    const-string v3, "uni_gm_confirm_dialog"

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    const-string v1, "cancel"

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$1;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 38
    const-string v1, "sure"

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog$2;-><init>(Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v0
.end method
