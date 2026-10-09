.class public final Lcom/netease/mobile/link/MobileLink$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/MobileLink;->checkGuideInLogin(Lcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;

.field public final synthetic b:Lcom/netease/mobile/link/MobileLink;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLink;Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLink$c;->b:Lcom/netease/mobile/link/MobileLink;

    iput-object p2, p0, Lcom/netease/mobile/link/MobileLink$c;->a:Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MobileLink"

    const-string v1, "checkGuideInLogin onLogout"

    .line 3
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/netease/mobile/link/MobileLink$c;->c()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuideInLogin onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileLink"

    .line 1
    invoke-static {v0, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mobile/link/MobileLink$c;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGuideInLogin onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileLink"

    .line 5
    invoke-static {v0, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mobile/link/MobileLink$c;->b:Lcom/netease/mobile/link/MobileLink;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/netease/mobile/link/MobileLink;->a(Lcom/netease/mobile/link/MobileLink;II)V

    iget-object p1, p0, Lcom/netease/mobile/link/MobileLink$c;->a:Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;

    invoke-interface {p1, v1}, Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;->onResult(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "MobileLink"

    const-string v1, "checkGuideInLogin onClose"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mobile/link/MobileLink$c;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    invoke-virtual {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isForceGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$c;->a:Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$c;->a:Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/netease/mobile/link/relatelogin/CheckGuideCallback;->onResult(Z)V

    return-void
.end method
