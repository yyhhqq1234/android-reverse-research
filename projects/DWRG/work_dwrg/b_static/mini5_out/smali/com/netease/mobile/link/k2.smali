.class public final Lcom/netease/mobile/link/k2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/o2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/o2;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/k2;->c:Lcom/netease/mobile/link/o2;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/k2;->c:Lcom/netease/mobile/link/o2;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 2
    iget-object v0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/p0;->b(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/k2;->c:Lcom/netease/mobile/link/o2;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    return-void
.end method
