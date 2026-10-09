.class public final Lcom/netease/mobile/link/d0;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/g0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/d0;->c:Lcom/netease/mobile/link/g0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 2
    iget-boolean p1, p1, Lcom/netease/mobile/link/f6;->p:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/d0;->c:Lcom/netease/mobile/link/g0;

    invoke-static {p1}, Lcom/netease/mobile/link/g0;->a(Lcom/netease/mobile/link/g0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/d0;->c:Lcom/netease/mobile/link/g0;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mobile/link/e6;

    new-instance v2, Lcom/netease/mobile/link/c6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v3

    iget-object v4, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v4, v4, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v2, v3, v4}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 7
    iput-object v0, v2, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    const/4 v0, 0x6

    .line 8
    iput v0, v2, Lcom/netease/mobile/link/c6;->j:I

    .line 9
    new-instance v0, Lcom/netease/mobile/link/f0;

    invoke-direct {v0, p1}, Lcom/netease/mobile/link/f0;-><init>(Lcom/netease/mobile/link/g0;)V

    invoke-direct {v1, v2, v0}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    :goto_0
    return-void
.end method
