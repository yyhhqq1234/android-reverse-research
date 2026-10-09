.class public final Lcom/netease/mobile/link/j3;
.super Lcom/netease/mobile/link/h6$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/netease/mobile/link/l3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/j3;->b:Lcom/netease/mobile/link/l3;

    invoke-direct {p0}, Lcom/netease/mobile/link/h6$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/j3;->b:Lcom/netease/mobile/link/l3;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mobile/link/j3;->b:Lcom/netease/mobile/link/l3;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/l3;->a(Ljava/lang/String;)V

    return-void
.end method
