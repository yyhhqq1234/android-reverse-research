.class public final Lcom/netease/mobile/link/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/netease/mobile/link/k0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/j0;->b:Lcom/netease/mobile/link/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/netease/mobile/link/j0;->a:I

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/netease/mobile/link/j0;->b:Lcom/netease/mobile/link/k0;

    iget-object v1, v1, Lcom/netease/mobile/link/k0;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/netease/mobile/link/j0;->a:I

    if-eq v2, v3, :cond_0

    aget v2, v0, v1

    iput v2, p0, Lcom/netease/mobile/link/j0;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DropListWindow locationYChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 2
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mobile/link/j0;->b:Lcom/netease/mobile/link/k0;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/k0;->n:Lcom/netease/mobile/link/k0$f;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Lcom/netease/mobile/link/k0$b$a;

    const-string v2, "DropListWindow onLocationYChanged()"

    .line 6
    invoke-static {v1, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lcom/netease/mobile/link/k0$b$a;->a:Lcom/netease/mobile/link/k0$b;

    iget-object v2, v1, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    iget v3, v1, Lcom/netease/mobile/link/k0$b;->a:I

    iget v4, v1, Lcom/netease/mobile/link/k0$b;->b:I

    iget-object v1, v1, Lcom/netease/mobile/link/k0$b;->c:Lcom/netease/mobile/link/k0$e;

    invoke-static {v2, v3, v4, v1}, Lcom/netease/mobile/link/k0;->a(Lcom/netease/mobile/link/k0;IILcom/netease/mobile/link/k0$e;)V

    iget-object v0, v0, Lcom/netease/mobile/link/k0$b$a;->a:Lcom/netease/mobile/link/k0$b;

    iget-object v0, v0, Lcom/netease/mobile/link/k0$b;->d:Lcom/netease/mobile/link/k0;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/netease/mobile/link/k0;->n:Lcom/netease/mobile/link/k0$f;

    :cond_0
    return-void
.end method
