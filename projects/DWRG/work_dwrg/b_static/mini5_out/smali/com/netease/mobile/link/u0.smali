.class public final Lcom/netease/mobile/link/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/v0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/v0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/u0;->a:Lcom/netease/mobile/link/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/u0;->a:Lcom/netease/mobile/link/v0;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    invoke-static {p1, p2}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mobile/link/u0;->a:Lcom/netease/mobile/link/v0;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-interface {p1}, Lcom/netease/mobile/link/r3;->b()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/u0;->a:Lcom/netease/mobile/link/v0;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 2
    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-interface {p1}, Lcom/netease/mobile/link/r3;->b()V

    return-void
.end method
