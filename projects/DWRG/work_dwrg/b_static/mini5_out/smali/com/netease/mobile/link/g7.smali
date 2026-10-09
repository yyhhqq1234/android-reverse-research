.class public final Lcom/netease/mobile/link/g7;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroid/widget/ToggleButton;

.field public final synthetic d:Lcom/netease/mobile/link/n7;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/n7;Landroid/widget/ToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/g7;->d:Lcom/netease/mobile/link/n7;

    iput-object p2, p0, Lcom/netease/mobile/link/g7;->c:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/g7;->c:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/netease/mobile/link/k4;

    iget-object v0, p0, Lcom/netease/mobile/link/g7;->d:Lcom/netease/mobile/link/n7;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    new-instance v1, Lcom/netease/mobile/link/g7$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/g7$a;-><init>(Lcom/netease/mobile/link/g7;)V

    invoke-direct {p1, v0, v1}, Lcom/netease/mobile/link/k4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {p1}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/g7;->d:Lcom/netease/mobile/link/n7;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 4
    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__error_protocol_unchecked:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/g7;->d:Lcom/netease/mobile/link/n7;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 6
    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
