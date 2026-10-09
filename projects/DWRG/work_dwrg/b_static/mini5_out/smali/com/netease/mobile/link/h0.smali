.class public abstract Lcom/netease/mobile/link/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Z

.field public b:Lcom/netease/mobile/link/h0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/h0;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/netease/mobile/link/h0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mobile/link/h0;->a:Z

    new-instance v0, Lcom/netease/mobile/link/h0$a;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/h0$a;-><init>(Lcom/netease/mobile/link/h0;)V

    iput-object v0, p0, Lcom/netease/mobile/link/h0;->b:Lcom/netease/mobile/link/h0$a;

    return-object p0
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mobile/link/h0;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/h0;->b:Lcom/netease/mobile/link/h0$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/h6$b;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/p5;->a()Lcom/netease/mobile/link/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p5;->b()V

    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/h0;->a(Landroid/view/View;)V

    const-string p1, "MobileLink"

    const-string v0, "CustomClickListener innerCustomClick() is called!"

    .line 2
    invoke-static {p1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
