.class public final Lcom/netease/mobile/link/l4;
.super Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/l6;

.field public final synthetic b:Lcom/netease/mobile/link/m4;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/m4;Lcom/netease/mobile/link/l6;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/l4;->b:Lcom/netease/mobile/link/m4;

    iput-object p2, p0, Lcom/netease/mobile/link/l4;->a:Lcom/netease/mobile/link/l6;

    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetchMobile: onGetMobileNumberError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileLink"

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mobile/link/l4;->b:Lcom/netease/mobile/link/m4;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcom/netease/mobile/link/m4;->d:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mobile/link/l4;->a:Lcom/netease/mobile/link/l6;

    invoke-virtual {p1, p2}, Lcom/netease/mobile/link/l6;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetchMobile: onGetMobileNumberSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileLink"

    .line 1
    invoke-static {v0, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    iput-object p2, p1, Lcom/netease/mobile/link/f6;->l:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 6
    iget-object v0, p0, Lcom/netease/mobile/link/l4;->b:Lcom/netease/mobile/link/m4;

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/m4;->c:Landroid/app/Activity;

    .line 8
    invoke-static {v0}, Lcom/netease/mobile/link/m4;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mobile/link/f6;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/mobile/link/l4;->b:Lcom/netease/mobile/link/m4;

    .line 9
    iput-object p2, p1, Lcom/netease/mobile/link/m4;->d:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/netease/mobile/link/l4;->a:Lcom/netease/mobile/link/l6;

    invoke-virtual {p1, p2}, Lcom/netease/mobile/link/l6;->a(Ljava/lang/Object;)V

    return-void
.end method
