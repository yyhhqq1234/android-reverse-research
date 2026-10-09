.class public final Lcom/netease/mobile/link/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/k0;->a(Landroid/app/Activity;Lcom/netease/mobile/link/k0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/k0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/k0$a;->a:Lcom/netease/mobile/link/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mobile/link/k0$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/k0$a$a;-><init>(Lcom/netease/mobile/link/k0$a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
