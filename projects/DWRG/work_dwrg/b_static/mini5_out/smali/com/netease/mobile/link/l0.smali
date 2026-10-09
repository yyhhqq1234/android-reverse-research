.class public final Lcom/netease/mobile/link/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/k0$e;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0$e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/l0;->a:Lcom/netease/mobile/link/k0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/l0;->a:Lcom/netease/mobile/link/k0$e;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netease/mobile/link/l3$a;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/l3$a;->a:Lcom/netease/mobile/link/l3;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l3;->d()V

    :cond_0
    return-void
.end method
