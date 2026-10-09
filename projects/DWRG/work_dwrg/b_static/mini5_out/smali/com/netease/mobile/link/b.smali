.class public final Lcom/netease/mobile/link/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/e;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/b;->a:Lcom/netease/mobile/link/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/b;->a:Lcom/netease/mobile/link/e;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/netease/mobile/link/e;->d:Landroid/app/Dialog;

    return-void
.end method
