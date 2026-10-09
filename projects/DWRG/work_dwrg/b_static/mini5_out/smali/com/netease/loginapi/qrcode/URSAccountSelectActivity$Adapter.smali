.class public Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

.field public tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;-><init>(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->tokens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->access$100(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->tokens:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->tokens:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/netease/loginapi/R$layout;->item_qr_account:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/loginapi/qrcode/TokenBundle;

    .line 6
    sget p3, Lcom/netease/loginapi/R$id;->text_account:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/TokenBundle;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->fixUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->proguardUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/loginapi/qrcode/TokenBundle;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->access$200(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {}, Lcom/netease/loginapi/qrcode/TokenBundle;->intentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRAS_SCAN_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {v1, v0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->fillIntent(Landroid/content/Intent;)V

    .line 7
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->onAccountSelected(Lcom/netease/loginapi/qrcode/TokenBundle;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    const/4 v0, 0x0

    const-string v1, "\u5185\u90e8\u9519\u8bef[-1]"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;->this$0:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
