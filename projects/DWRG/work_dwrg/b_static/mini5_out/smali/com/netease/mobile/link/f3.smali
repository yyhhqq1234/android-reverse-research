.class public final Lcom/netease/mobile/link/f3;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/b0;

.field public final synthetic d:Lcom/netease/mobile/link/g3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/g3;Lcom/netease/mobile/link/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/f3;->d:Lcom/netease/mobile/link/g3;

    iput-object p2, p0, Lcom/netease/mobile/link/f3;->c:Lcom/netease/mobile/link/b0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/f3;->d:Lcom/netease/mobile/link/g3;

    iget-object p1, p1, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/l3;->a(Z)V

    iget-object p1, p0, Lcom/netease/mobile/link/f3;->d:Lcom/netease/mobile/link/g3;

    iget-object p1, p1, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/f3;->c:Lcom/netease/mobile/link/b0;

    iget-object v0, v0, Lcom/netease/mobile/link/b0;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/f3;->d:Lcom/netease/mobile/link/g3;

    iget-object v0, p1, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    iget-object v1, p0, Lcom/netease/mobile/link/f3;->c:Lcom/netease/mobile/link/b0;

    iget-object v1, v1, Lcom/netease/mobile/link/b0;->a:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lcom/netease/mobile/link/l3;->c:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/g3;->o:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netease/mobile/link/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/netease/mobile/link/f3;->d:Lcom/netease/mobile/link/g3;

    iget-object p1, p1, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    .line 5
    iget-object p1, p1, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    .line 6
    invoke-virtual {p1}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
