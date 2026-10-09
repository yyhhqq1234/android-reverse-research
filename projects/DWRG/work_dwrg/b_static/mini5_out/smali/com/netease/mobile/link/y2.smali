.class public final Lcom/netease/mobile/link/y2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/a3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/a3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y2;->c:Lcom/netease/mobile/link/a3;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/netease/mobile/link/p5;->a()Lcom/netease/mobile/link/p5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/p5;->b()V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/y2;->c:Lcom/netease/mobile/link/a3;

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    iget-object v0, v0, Lcom/netease/mobile/link/a3;->f:Landroid/widget/ToggleButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "switch_on"

    goto :goto_0

    :cond_0
    const-string v0, "switch_off"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mobile/link/y2;->c:Lcom/netease/mobile/link/a3;

    .line 4
    iget-object v0, p1, Lcom/netease/mobile/link/a3;->f:Landroid/widget/ToggleButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 8
    iget-object v2, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mobile/link/z2;

    invoke-direct {v3, p1, v0}, Lcom/netease/mobile/link/z2;-><init>(Lcom/netease/mobile/link/a3;Z)V

    const-string p1, "user_center"

    invoke-interface {v1, v0, p1, v2, v3}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->updateRelatedLoginStatus(ZLjava/lang/String;Landroid/app/Activity;Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V

    return-void
.end method
