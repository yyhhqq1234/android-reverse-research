.class public final Lcom/netease/mobile/link/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/netease/mobile/link/k0$c;->d:Lcom/netease/mobile/link/k0;

    iput p2, p0, Lcom/netease/mobile/link/k0$c;->a:I

    iput p3, p0, Lcom/netease/mobile/link/k0$c;->b:I

    iput-object p4, p0, Lcom/netease/mobile/link/k0$c;->c:Lcom/netease/mobile/link/k0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/k0$c;->d:Lcom/netease/mobile/link/k0;

    iget v1, p0, Lcom/netease/mobile/link/k0$c;->a:I

    iget v2, p0, Lcom/netease/mobile/link/k0$c;->b:I

    iget-object v3, p0, Lcom/netease/mobile/link/k0$c;->c:Lcom/netease/mobile/link/k0$e;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mobile/link/k0;->a(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V

    return-void
.end method
