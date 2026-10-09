.class public final Lcom/netease/mobile/link/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/a2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/a2;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y1;->a:Lcom/netease/mobile/link/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/netease/mobile/link/y1;->a:Lcom/netease/mobile/link/a2;

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

    iget-object v1, p1, Lcom/netease/mobile/link/a2;->f:Lcom/netease/mobile/link/t1;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mobile/link/a2;->g:Lcom/netease/mobile/link/m5;

    invoke-virtual {v2}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/e6;

    new-instance v4, Lcom/netease/mobile/link/c6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v5

    iget-object v6, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v6, v6, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v4, v5, v6}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 5
    iput-object v0, v4, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v1, v2}, Lcom/netease/mobile/link/c6;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;

    move-result-object v0

    new-instance v1, Lcom/netease/mobile/link/z1;

    invoke-direct {v1, p1}, Lcom/netease/mobile/link/z1;-><init>(Lcom/netease/mobile/link/a2;)V

    invoke-direct {v3, v0, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method
