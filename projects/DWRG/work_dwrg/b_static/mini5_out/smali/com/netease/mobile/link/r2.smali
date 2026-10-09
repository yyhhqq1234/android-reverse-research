.class public final Lcom/netease/mobile/link/r2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/t2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/t2;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/r2;->c:Lcom/netease/mobile/link/t2;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 2
    new-instance v0, Lcom/netease/mobile/link/r2$a;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/r2$a;-><init>(Lcom/netease/mobile/link/r2;)V

    const-string v1, "unbind_mobile"

    invoke-interface {p1, v1, v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->openMobileDisabledPage(Ljava/lang/String;Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V

    return-void
.end method
