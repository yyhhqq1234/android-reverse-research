.class Lcom/netease/epay/sdk/risk/ui/c$2;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "RiskGeneralFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/risk/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/c;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$2;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$2;->a:Lcom/netease/epay/sdk/risk/ui/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/c$2;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-static {v1}, Lcom/netease/epay/sdk/risk/ui/c;->a(Lcom/netease/epay/sdk/risk/ui/c;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/risk/ui/c;->a(Ljava/lang/String;Z)V

    .line 150
    return-void
.end method
