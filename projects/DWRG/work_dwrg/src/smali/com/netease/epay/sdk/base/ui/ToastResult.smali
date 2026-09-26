.class public Lcom/netease/epay/sdk/base/ui/ToastResult;
.super Ljava/lang/Object;
.source "ToastResult.java"


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSucc"    # Z
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_toastresult:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 29
    sget v0, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_bg_black_dialog:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_toastresult_msg:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_0

    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_msg_succ:I

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p4}, Landroid/widget/Toast;->setDuration(I)V

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 38
    return-void

    .line 31
    :cond_0
    sget v1, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_icon_msg_fail:I

    goto :goto_0
.end method

.method public static makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSucc"    # Z
    .param p2, "textRes"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZLjava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;ZLjava/lang/String;)Lcom/netease/epay/sdk/base/ui/ToastResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSucc"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZLjava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;ZLjava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ToastResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSucc"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ToastResult;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;-><init>()V

    .line 59
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ToastResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/ToastResult;-><init>(Landroid/content/Context;ZLjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public setGravity(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 72
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ToastResult;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_0
    return-void
.end method
