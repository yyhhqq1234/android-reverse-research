.class Lcom/tencent/tp/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/tencent/tp/a/af;


# direct methods
.method constructor <init>(Lcom/tencent/tp/a/af;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/a/ag;->a:Lcom/tencent/tp/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/ag;->a:Lcom/tencent/tp/a/af;

    invoke-static {v0}, Lcom/tencent/tp/a/af;->a(Lcom/tencent/tp/a/af;)Lcom/tencent/tp/a/af$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/ag;->a:Lcom/tencent/tp/a/af;

    invoke-static {v0}, Lcom/tencent/tp/a/af;->a(Lcom/tencent/tp/a/af;)Lcom/tencent/tp/a/af$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tp/a/af$a;->a(I)V

    :cond_0
    return-void
.end method
