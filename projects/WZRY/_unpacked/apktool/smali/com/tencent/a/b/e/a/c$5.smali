.class final Lcom/tencent/a/b/e/a/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/e/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/a/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c$5;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$5;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->f()Lcom/tencent/b/a/a/i$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c$5;->a:Lcom/tencent/a/b/e/a/c;

    invoke-static {v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->f()Lcom/tencent/b/a/a/i$c;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/g;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c$5;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {v1, v2}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-interface {v0, v1}, Lcom/tencent/b/a/a/i$c;->a(Lcom/tencent/a/a/a/g;)V

    :cond_0
    return-void
.end method
