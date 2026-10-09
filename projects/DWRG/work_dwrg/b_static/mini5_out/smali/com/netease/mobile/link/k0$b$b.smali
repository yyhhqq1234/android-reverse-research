.class public final Lcom/netease/mobile/link/k0$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/k0$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/k0$b;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/k0$b$b;->a:Lcom/netease/mobile/link/k0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/k0$b$b;->a:Lcom/netease/mobile/link/k0$b;

    iget-object v1, v0, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    iget v2, v0, Lcom/netease/mobile/link/k0$b;->a:I

    iget v3, v0, Lcom/netease/mobile/link/k0$b;->b:I

    iget-object v0, v0, Lcom/netease/mobile/link/k0$b;->c:Lcom/netease/mobile/link/k0$e;

    invoke-static {v1, v2, v3, v0}, Lcom/netease/mobile/link/k0;->a(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V

    iget-object v0, p0, Lcom/netease/mobile/link/k0$b$b;->a:Lcom/netease/mobile/link/k0$b;

    iget-object v0, v0, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/netease/mobile/link/k0;->n:Lcom/netease/mobile/link/k0$f;

    return-void
.end method
