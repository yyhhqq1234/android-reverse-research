.class public Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;
.super Lcom/netease/loginapi/qrcode/URSBaseQRActivity;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "CLOSE"


# instance fields
.field public mAdapter:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;

.field public mListView:Landroid/widget/ListView;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;-><init>()V

    .line 5
    new-instance v0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$1;-><init>(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$100(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->getAvaiableTokens()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->getAuthConfirmActivity()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getAuthConfirmActivity()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/loginapi/qrcode/URSQRAuthActivity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private getAvaiableTokens()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/netease/loginapi/qrcode/TokenBundle;->intentListKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/netease/loginapi/R$string;->text_account_selection:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final interruptError(IILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->interruptError(IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mAdapter:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAccountSelected(Lcom/netease/loginapi/qrcode/TokenBundle;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/netease/loginapi/R$layout;->activity_qr_account_selection:I

    invoke-virtual {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->setContentView(I)V

    .line 3
    sget p1, Lcom/netease/loginapi/R$id;->list_account:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mListView:Landroid/widget/ListView;

    .line 4
    new-instance v0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;-><init>(Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$1;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mAdapter:Lcom/netease/loginapi/qrcode/URSAccountSelectActivity$Adapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public proguardUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "@"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    if-le p1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final useLinearLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
