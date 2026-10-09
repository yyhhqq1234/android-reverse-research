.class public final Lcom/netease/mobile/link/c0;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/g0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/c0;->c:Lcom/netease/mobile/link/g0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/netease/mobile/link/b5;->f:Lcom/netease/mobile/link/b5;

    sget-object v0, Lcom/netease/mobile/link/b5;->i:Lcom/netease/mobile/link/b5;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/netease/mobile/link/c0;->c:Lcom/netease/mobile/link/g0;

    .line 3
    iget-object v1, v1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 4
    iget-object v1, v1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 5
    iget-object v1, v1, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/netease/mobile/link/b5;->k:Lcom/netease/mobile/link/b5;

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/c0;->c:Lcom/netease/mobile/link/g0;

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 8
    iget-object v1, v0, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {p1, v1, v0}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/c0;->c:Lcom/netease/mobile/link/g0;

    .line 9
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 10
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    return-void
.end method
