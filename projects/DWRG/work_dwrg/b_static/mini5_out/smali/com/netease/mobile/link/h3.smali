.class public final Lcom/netease/mobile/link/h3;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/l3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/h3;->c:Lcom/netease/mobile/link/l3;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/h3;->c:Lcom/netease/mobile/link/l3;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/l3;->b:Lcom/netease/mobile/link/g3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/l3;->a(Z)V

    :cond_0
    return-void
.end method
