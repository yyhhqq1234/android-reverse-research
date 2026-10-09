.class public final Lcom/netease/mobile/link/w3;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/y3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/y3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/w3;->c:Lcom/netease/mobile/link/y3;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/netease/mobile/link/w3;->c:Lcom/netease/mobile/link/y3;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mobile/link/b6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/mobile/link/f6;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 5
    iget-object v6, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 8
    new-instance v8, Lcom/netease/mobile/link/x3;

    invoke-direct {v8, p1}, Lcom/netease/mobile/link/x3;-><init>(Lcom/netease/mobile/link/y3;)V

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netease/mobile/link/b6;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method
