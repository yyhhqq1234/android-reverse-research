.class public final Lcom/netease/mobile/link/c;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroid/app/Dialog;

.field public final synthetic d:Lcom/netease/mobile/link/e;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/e;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/c;->d:Lcom/netease/mobile/link/e;

    iput-object p2, p0, Lcom/netease/mobile/link/c;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/c;->d:Lcom/netease/mobile/link/e;

    .line 1
    iget-object v2, v1, Lcom/netease/mobile/link/e;->a:Landroid/app/Activity;

    .line 2
    iget-object v3, v1, Lcom/netease/mobile/link/e;->e:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Lcom/netease/mobile/link/e;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mobile/link/c;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/netease/mobile/link/c;->d:Lcom/netease/mobile/link/e;

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/e;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
