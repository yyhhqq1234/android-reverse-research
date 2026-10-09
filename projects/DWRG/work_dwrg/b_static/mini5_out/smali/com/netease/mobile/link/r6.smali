.class public final Lcom/netease/mobile/link/r6;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/x6;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/x6;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/r6;->c:Lcom/netease/mobile/link/x6;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/netease/mobile/link/r6;->c:Lcom/netease/mobile/link/x6;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 2
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 3
    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v2, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v2, p1}, Lcom/netease/mobile/link/p0;->c(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    return-void
.end method
