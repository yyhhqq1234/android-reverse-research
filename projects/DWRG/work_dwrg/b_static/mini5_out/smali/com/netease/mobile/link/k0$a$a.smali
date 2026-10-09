.class public final Lcom/netease/mobile/link/k0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/k0$a;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/k0$a;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/k0$a$a;->a:Lcom/netease/mobile/link/k0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/k0$a$a;->a:Lcom/netease/mobile/link/k0$a;

    iget-object v0, v0, Lcom/netease/mobile/link/k0$a;->a:Lcom/netease/mobile/link/k0;

    check-cast v0, Lcom/netease/mobile/link/g3;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/l3;->a(Z)V

    return-void
.end method
