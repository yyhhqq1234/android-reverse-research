.class final Lcom/tencent/a/b/e/a/c$4;
.super Lcom/tencent/a/b/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/e/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/a/b/e/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c$4;->a:Lcom/tencent/a/b/e/a/c;

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/a/b/e/a/c$4$1;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$4$1;-><init>(Lcom/tencent/a/b/e/a/c$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
