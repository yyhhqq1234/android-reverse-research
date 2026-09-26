.class Lcom/netease/epay/sdk/psw/verifypwd/d$1;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "VerifyLongPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/verifypwd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/verifypwd/d;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/d;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/d$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/d;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/d;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/verifypwd/d;->a(Lcom/netease/epay/sdk/psw/verifypwd/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/d;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/verifypwd/d;->a(Lcom/netease/epay/sdk/psw/verifypwd/d;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/verifypwd/d$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/d;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/verifypwd/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/psw/R$drawable;->epaysdk_icon_cleanup:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
