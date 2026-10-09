.class public final Lcom/netease/mobile/link/s0;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/v0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/v0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/s0;->c:Lcom/netease/mobile/link/v0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/netease/mobile/link/s0;->c:Lcom/netease/mobile/link/v0;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 4
    iget-object v1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mobile/link/u0;

    invoke-direct {v2, p1}, Lcom/netease/mobile/link/u0;-><init>(Lcom/netease/mobile/link/v0;)V

    const/4 p1, 0x1

    const-string v3, "login_guide"

    invoke-interface {v0, p1, v3, v1, v2}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->updateRelatedLoginStatus(ZLjava/lang/String;Landroid/app/Activity;Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V

    return-void
.end method
