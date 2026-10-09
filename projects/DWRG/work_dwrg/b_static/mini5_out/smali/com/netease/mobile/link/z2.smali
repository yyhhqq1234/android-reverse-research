.class public final Lcom/netease/mobile/link/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/netease/mobile/link/a3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/a3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/z2;->b:Lcom/netease/mobile/link/a3;

    iput-boolean p2, p0, Lcom/netease/mobile/link/z2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/z2;->b:Lcom/netease/mobile/link/a3;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    invoke-static {p1, p2}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mobile/link/z2;->b:Lcom/netease/mobile/link/a3;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/a3;->f:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/z2;->b:Lcom/netease/mobile/link/a3;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v0, "\u66f4\u65b0\u6210\u529f"

    .line 2
    invoke-static {p1, v0}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/netease/mobile/link/z2;->a:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mobile/link/a5;->q:Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mobile/link/a5;->q:Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;

    invoke-interface {p1}, Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;->onRelatedLoginDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/z2;->b:Lcom/netease/mobile/link/a3;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-interface {p1}, Lcom/netease/mobile/link/r3;->b()V

    :cond_0
    return-void
.end method
