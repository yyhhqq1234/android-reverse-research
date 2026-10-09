.class public final Lcom/netease/mobile/link/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/h6$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/k0;->a(Landroid/app/Activity;Lcom/netease/mobile/link/k0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/netease/mobile/link/k0$e;

.field public final synthetic d:Lcom/netease/mobile/link/k0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    iput p2, p0, Lcom/netease/mobile/link/k0$b;->a:I

    iput p3, p0, Lcom/netease/mobile/link/k0$b;->b:I

    iput-object p4, p0, Lcom/netease/mobile/link/k0$b;->c:Lcom/netease/mobile/link/k0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    new-instance v1, Lcom/netease/mobile/link/k0$b$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/k0$b$a;-><init>(Lcom/netease/mobile/link/k0$b;)V

    .line 1
    iput-object v1, v0, Lcom/netease/mobile/link/k0;->n:Lcom/netease/mobile/link/k0$f;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mobile/link/k0$b$b;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/k0$b$b;-><init>(Lcom/netease/mobile/link/k0$b;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
