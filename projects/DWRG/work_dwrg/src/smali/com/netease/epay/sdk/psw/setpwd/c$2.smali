.class Lcom/netease/epay/sdk/psw/setpwd/c$2;
.super Ljava/lang/Object;
.source "SetShortyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/setpwd/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/setpwd/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/setpwd/c;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$2;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$2;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->a()V

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$2;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->b(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$2;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$2;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Landroid/view/View;)V

    .line 78
    return-void
.end method
