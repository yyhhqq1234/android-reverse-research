.class public final Lcom/netease/mobile/link/j2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/netease/mobile/link/o2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/o2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/j2;->d:Lcom/netease/mobile/link/o2;

    iput-object p2, p0, Lcom/netease/mobile/link/j2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/netease/mobile/link/j2;->d:Lcom/netease/mobile/link/o2;

    iget-object v3, p0, Lcom/netease/mobile/link/j2;->c:Ljava/lang/String;

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

    new-instance v7, Lcom/netease/mobile/link/e5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v1

    iget-object v0, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 5
    iget-object v2, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 6
    new-instance v6, Lcom/netease/mobile/link/m2;

    invoke-direct {v6, p1}, Lcom/netease/mobile/link/m2;-><init>(Lcom/netease/mobile/link/o2;)V

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mobile/link/e5;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;IILcom/netease/mobile/link/n;)V

    invoke-virtual {v7}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method
