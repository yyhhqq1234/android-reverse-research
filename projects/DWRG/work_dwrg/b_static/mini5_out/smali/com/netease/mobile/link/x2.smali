.class public final Lcom/netease/mobile/link/x2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/a3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/a3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/x2;->c:Lcom/netease/mobile/link/a3;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/a5;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/x2;->c:Lcom/netease/mobile/link/a3;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 2
    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-interface {p1}, Lcom/netease/mobile/link/r3;->b()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netease/mobile/link/b5;->k:Lcom/netease/mobile/link/b5;

    iget-object v0, p0, Lcom/netease/mobile/link/x2;->c:Lcom/netease/mobile/link/a3;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 4
    iget-object v1, v0, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {p1, v1, v0}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/x2;->c:Lcom/netease/mobile/link/a3;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 6
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_0
    return-void
.end method
